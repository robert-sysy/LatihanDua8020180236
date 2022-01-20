<?php

use Illuminate\Support\Facades\Auth;
use App\Buku;
use App\User;

// tidak perlu ke halaman welcome, langsung login saja, g penting soalny
Route::get('/', function () {
    return redirect()->route('login');
});

// matikan fiture register karena memang tidak ada fiture register
Auth::routes(['register' => false]);

// semua halaman di dalam group ini harus diakses setelah login
Route::middleware('auth')->group(function () {
    Route::get('/home', function () {

        return redirect('buku');
    })->name('home');

    Route::post('buku/laporan/print', 'BukuController@print')->name('buku.print');
    Route::get('buku/laporan', 'BukuController@laporan')->name('buku.laporan.index');
    Route::get('buku/hapus_semua', 'BukuController@hapus_semua')->name('buku.hapus_semua');
    Route::resource('buku', 'BukuController')->parameters(['buku' => 'buku']);

    Route::put('user/{user}/profile/update', ['App\Http\Controllers\UserController', 'profileUpdate'])->name('user.profile.update');
    Route::get('user/profile', 'UserController@profile')->name('user.profile');
    Route::post('user/laporan/print', 'UserController@print')->name('user.print');
    Route::get('user/laporan', 'UserController@laporan')->name('user.laporan.index');
    Route::get('user/hapus_semua', 'UserController@hapus_semua')->name('user.hapus_semua');
    Route::resource('user', 'UserController')->parameters(['user' => 'user']);

});
