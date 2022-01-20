<?php

namespace App\Http\Controllers;

use App\Buku;

use App\Http\Requests;
use App\KodeBuku;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use App\DetailPeminjaman;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $data['buku'] = Buku::paginate(1000);

        $data['buku_count'] = count(Schema::getColumnListing('buku'));

        if(request()->q) {
            $data['buku'] = new Buku;

            foreach (Schema::getColumnListing('buku') as $key => $item) {
                $data['buku'] = $data['buku']->orwhere($item, 'like', "%$request->q%");
            }

            $data['buku'] = $data['buku']->paginate(1000);
        }

        return view('buku.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {

        return view('buku.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $this->validate($request, [
			'judul' => 'required|max:100',
			'pengarang' => 'required|max:30'
		]);
        $requestData = $request->all();

        Buku::create($requestData);

        return redirect()->route('buku.index')->with('success', 'Berhasil menambah Buku');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show(Buku $buku)
    {
        $data["item"] = $buku;
        $data["buku"] = $buku;

        return view('buku.show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit(Buku $buku)
    {
        $data["buku"] = $buku;
        $data[strtolower("Buku")] = $buku;
        return view('buku.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, Buku $buku)
    {
        $this->validate($request, [
			'judul' => 'required|max:100',
			'pengarang' => 'required|max:30'
		]);

        $requestData = $request->all();



        $buku->update($requestData);

        return redirect()->route('buku.index')->with('success', 'Berhasil mengubah Buku');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy(Buku $buku)
    {
        $buku->delete();

        return redirect()->route('buku.index')->with('success', 'Buku berhasil dihapus!');
    }

    public function hapus_semua(Request $request)
    {
        $bukus = Buku::whereIn('id', json_decode($request->ids, true))->get();

        Buku::whereIn('id', $bukus->pluck('id'))->delete();

        return back()->with('success', 'Berhasil menghapus banyak data buku');
    }

    public function laporan()
    {
        $bukus = Buku::limit(1000)->get();
        $data['bukus'] = Buku::limit(1000)->get();

        $data['kode_bukus'] = $bukus->pluck('kode_buku')->unique()->toArray();
        $data['pengarangs'] = $bukus->pluck('pengarang')->unique()->toArray();
        $data['penerbits'] = $bukus->pluck('penerbit')->unique()->toArray();
        $data['tahuns'] = $bukus->pluck('tahun')->unique()->toArray();
        $data['kotas'] = $bukus->pluck('kota')->unique()->toArray();

        return view('buku.laporan.index', $data);
    }

    public function print(Request $request)
    {
        $table = (new Buku)->getTable();
        $object = (new Buku);

        $fields = [];
        foreach(DB::select("DESC $table") as $tableField)
        {
            $fields[] = $tableField->Field;
        }

        $this->validate($request, [
            'field' => 'required|in:' . implode(',', $fields),
            'order' => 'required|in:ASC,DESC'
        ]);

        if(!request()->status) {
            $data["bukus"] = $object->orderBy($request->field, $request->order)
            ->where('kode_buku', 'like', "%$request->kode_buku%")
            ->where('pengarang', 'like', "%$request->pengarang%")
            ->where('penerbit', 'like', "%$request->penerbit%")
            ->Where('tahun', 'like', "$request->tahun%")
            ->Where('kota', 'like', "$request->kota%")
            ->get();
        } else {
            $detail_peminjaman_buku_ids = DetailPeminjaman::where('status', request()->status)->get()->pluck('buku_id')->toArray();

            $data["bukus"] = $object->orderBy($request->field, $request->order)
            ->where('kode_buku', 'like', "%$request->kode_buku%")
            ->where('pengarang', 'like', "%$request->pengarang%")
            ->where('penerbit', 'like', "%$request->penerbit%")
            ->Where('tahun', 'like', "$request->tahun%")
            ->Where('kota', 'like', "$request->kota%")
            ->WhereIn('id', $detail_peminjaman_buku_ids)
            ->get();
        }

        if(!$data["bukus"]->count()) {

            return back()->with('error', 'Data tidak ada!');
        }

        return view("buku.laporan.print", $data);
    }
}
