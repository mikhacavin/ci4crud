<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Ubah Data Siswa</h2>
            <form action="/siswa/update/<?= $siswa['id']; ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <!--  slug tidak perlu di isi ,slug otomatis di ambil dari nama siswa -->
                <input type="hidden" name="slug" value="<?= $siswa['slug']; ?>">

                <input type="hidden" name="gambarLama" value="<?= $siswa['gambar']; ?>">

                <div class="mb-3">
                    <label for="nama" class="form-label">Nama</label>
                    <!-- validasi input, jika semua form data sudah di isi, namun tervalidasi bahwa nama siswa sudah terdaftar/kosong, maka value tetap terisi dengan data yang sudah di isi sebelumnya didalam session dan form tidak terisi kembali dengan data sebelumnya (teknik ternary)  -->
                    <input type="text" class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : ''; ?>" id="nama" name="nama" autofocus value="<?= (old('nama')) ? old('nama') : $siswa['nama'] ?>">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama'); ?>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="kelas" class="form-label">Kelas</label>
                    <input type="text" class="form-control" id="kelas" name="kelas" value="<?= (old('kelas')) ? old('kelas') : $siswa['kelas'] ?>">
                </div>
                <div class="mb-3">
                    <label for="jurusan" class="form-label">Jurusan</label>
                    <input type="text" class="form-control" id="jurusan" name="jurusan" value="<?= (old('jurusan')) ? old('jurusan') : $siswa['jurusan'] ?>">
                </div>

                <div class="mb-3">
                    <label for="gambar" class="form-label">Preview Gambar</label>

                    <div class="col sm-2 mb-2">
                        <img src="/img/<?= $siswa['gambar']; ?>" class="img-thumbnail img-preview" width="200">
                    </div>

                    <label for="gambar" class="form-label custom-file-label"><?= $siswa['gambar']; ?></label>

                    <input class="form-control <?= ($validation->hasError('gambar')) ? 'is-invalid' : ''; ?>" type="file" id="gambar" name="gambar" onchange="previewImg()">

                    <div class="invalid-feedback">
                        <?= $validation->getError('gambar'); ?>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Ubah Data</button>
            </form>
        </div>
    </div>
</div>





<?= $this->endSection(); ?>