<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Data Siswa</h2>
            <form action="/siswa/save" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="mb-3">
                    <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                    <input type="text" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>" id="nama" name="nama" autofocus value="<?= old('nama'); ?>">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama'); ?>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="kelas" class="form-label">Kelas</label>
                    <input type="text" class="form-control" id="kelas" name="kelas" value="<?= old('kelas'); ?>">
                </div>
                <div class="mb-3">
                    <label for="jurusan" class="form-label">Jurusan</label>
                    <input type="text" class="form-control" id="jurusan" name="jurusan" value="<?= old('jurusan'); ?>">
                </div>

                <div class="mb-3">
                    <label for="gambar" class="form-label">Preview Gambar</label>

                    <div class="col sm-2 mb-2">
                        <img src="/img/default.png" class="img-thumbnail img-preview" width="200">
                    </div>

                    <label for="gambar" class="form-label custom-file-label">Nama File</label>

                    <input class="form-control <?= ($validation->hasError('gambar')) ? 'is-invalid' : ''; ?>" type="file" id="gambar" name="gambar" onchange="previewImg()">

                    <div class="invalid-feedback">
                        <?= $validation->getError('gambar'); ?>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Tambah Data</button>
            </form>
        </div>
    </div>
</div>





<?= $this->endSection(); ?>