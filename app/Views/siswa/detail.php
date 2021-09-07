<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Detail Siswa</h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/img/<?= $siswa['gambar']; ?>" alt="..." class="card-img">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $siswa['nama']; ?></h5>
                            <p class="card-text"><b>Kelas : </b> <?= $siswa['kelas']; ?> </p>
                            <p class="card-text"><small class="text-muted"><?= $siswa['jurusan']; ?></small></p>
                            <a href="/siswa/edit/<?= $siswa['slug']; ?>" class="btn btn-warning">Edit</a>

                            <!-- delete data dengan teknik spoofing agar aman, lalu di arahkan dengan route -->
                            <form action="/siswa/<?= $siswa['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Yakin Hapus data Siswa?');">Delete</button>
                            </form>

                            <br>
                            <a href="/siswa">Kembali ke daftar Siswa</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>