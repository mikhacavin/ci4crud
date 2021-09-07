<?php

namespace App\Models;

use CodeIgniter\Model;

class SiswaModel extends Model
{
    protected $table = 'siswa';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama', 'slug', 'kelas', 'jurusan', 'gambar'];

    public function getSiswa($slug = false)
    {
        if ($slug == false) {
            return $this->findAll();
        }
        return $this->where(['slug' => $slug])->first();
    }
}
