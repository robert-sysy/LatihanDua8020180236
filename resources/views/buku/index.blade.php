@extends('layouts.app2')

@section('content')
    <div class="content-header sty-one">
        <h1>Buku</h1>
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><i class="fa fa-angle-right"></i> Buku</li>
        </ol>
    </div>

    <div class="content">
        <div class="row">

            <div class="col-xl-12">
                <div class="info-box">
                    <div class="table-responsive">
                        <table class="table" id='dataTable'>
                            <thead>
                            <tr>
                                <th width=2>#</th>
                                <th>Judul</th>
                                <th>Pengarang</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                @if(!in_array(auth()->user()->level, ['Siswa', 'Guru']))
                                    <th class="text-center">Aksi</th>
                                @endif
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($buku as $item)
                                <tr data-id='{{ $item->id }}'>
                                    <td>
                                        {{ $loop->iteration }}
                                    </td>

                                    <td>{{ $item->judul }}</td>
                                    <td>{{ $item->pengarang }}</td>
                                    <td>{{ $item->created_at }}</td>
                                    <td>{{ $item->updated_at }}</td>

                                    @if(!in_array(auth()->user()->level, ['Siswa', 'Guru']))
                                        <td class="text-center">
                                            <a class="badge badge-primary"
                                               href="{{ url('/buku/' . $item->id . '/edit') }}">Edit</a>
                                            <form action="{{ url('/buku' . '/' . $item->id) }}" method='post'
                                                  style='display: inline;'
                                                  onsubmit="return confirm('Yakin akan menghapus data ini?')">
                                                @method('DELETE')
                                                @csrf
                                                <label class="badge badge-danger" href=""
                                                       for='btnSubmit-{{ $item->id }}'
                                                       style='cursor: pointer;'>Hapus</label>
                                                <button type="submit" id='btnSubmit-{{ $item->id }}'
                                                        style="display: none;"></button>
                                            </form>
                                        </td>
                                    @endif
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const locationHrefHapusSemua = "{{ url('buku/hapus_semua') }}";
        const locationHrefAktifkanSemua = "{{ url('buku/aktifkan_semua') }}";
        const locationHrefCreate = "{{ url('buku/create') }}";
        var columnOrders = [{{ $buku_count }}];
        var urlSearch = "{{ url('buku') }}";
        var q = "{{ $_GET['q'] ?? '' }}";
        var placeholder = "Filter...";
        var tampilkan_buttons = true;
        var button_manual = true;

        @if(in_array(auth()->user()->level, ['Siswa', 'Guru']))
        var tampilkan_buttons = false;
        var button_manual = false;
        @endif
    </script>
@endsection

