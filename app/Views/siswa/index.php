<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <a href="/siswa/create" class="btn btn-primary">Tambah Data Siswa</a>
            <h2 class="mt-2">Daftar siswa</h2>
            <?php if (session()->getFlashdata('pesan')) : ?>
                <div class="alert alert-success" role="alert">
                    <?= session()->getFlashdata('pesan'); ?>
                </div>
            <?php endif; ?>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Gambar</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Kelas</th>
                        <th scope="col">Jurusan</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($siswa as $s) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><img src="/img/<?= $s['gambar']; ?>" alt="" class="sampul"></td>
                            <td><?= $s['nama']; ?></td>
                            <td><?= $s['kelas']; ?></td>
                            <td><?= $s['jurusan']; ?></td>
                            <td>
                                <a href="/siswa/<?= $s['slug']; ?>" class="btn btn-success">detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>

<?= $this->endSection(); ?>