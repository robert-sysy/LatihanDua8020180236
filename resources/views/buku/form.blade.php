

<div class="form-group {{ $errors->has('judul') ? 'has-error' : ''}}">
    <label for="judul" class="control-label">{{ 'Judul' }}</label>

    <div class="col-md-12">
        <input placeholder="judul" class="form-control form-control-line @error('judul') is-invalid @enderror"
            name="judul" type="text" id="judul" value="{{ isset($buku->judul) ? $buku->judul : old('judul')}}" required>

        @error('judul')
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

</div>

<div class="form-group {{ $errors->has('pengarang') ? 'has-error' : ''}}">
    <label for="pengarang" class="control-label">{{ 'Pengarang' }}</label>

    <div class="col-md-12">
        <input placeholder="pengarang" class="form-control form-control-line @error('pengarang') is-invalid @enderror"
            name="pengarang" type="text" id="pengarang" value="{{ isset($buku->pengarang) ? $buku->pengarang : old('pengarang')}}"
            required>

        @error('pengarang')
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

</div>

<div class="form-group">
    <div class="col-sm-12">
        <button class="btn btn-success" type="submit">Simpan</button>
    </div>
</div>
