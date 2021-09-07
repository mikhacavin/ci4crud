<?php

namespace App\Controllers;

use App\Models\SiswaModel;
use CodeIgniter\Session\Session;

class Siswa extends BaseController
{
    protected $siswaModel;

    public function __construct()
    {
        $this->siswaModel = new SiswaModel();
    }

    public function index()
    {
        // $siswa = $this->siswaModel->findAll();

        $data = [
            'title' => 'Data Siswa',
            'siswa' => $this->siswaModel->getSiswa()
        ];

        // cara konek db tanpa model
        // $db = \Config\Database::connect();
        // $siswa = $db->query("SELECT * FROM siswa");
        // foreach ($siswa->getResultArray() as $row) {
        //     d($row);
        // }

        // $siswaModel = new \App\Models\SiswaModel();

        return view('siswa/index', $data);
    }


    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Siswa',
            'siswa' => $this->siswaModel->getSiswa($slug)
        ];


        // jika kommik tidak ada ditabel
        if (empty($data['siswa'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('nama siswa' . $slug . 'Tidak ditemukan.');
        }

        return view('siswa/detail', $data);
    }


    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah data Siswa',
            'validation' => \Config\Services::validation()

        ];

        return view('siswa/create', $data);
    }


    public function save()
    {

        // validasi input
        if (!$this->validate([
            'nama' => [
                'rules' => 'required|is_unique[siswa.nama]',
                'errors' => [
                    'required' => '{field} siswa harus diisi.',
                    'is_unique' => '{field} siswa sudah terdaftar'
                ]
            ],
            'gambar' => [
                'rules' => 'max_size[gambar,1024]|is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'ukuran gambar terlalu besar',
                    'is_image' => 'yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/siswa/create')->withInput()->with('validation', $validation);
            return redirect()->to('/siswa/create')->withInput();
        }

        // ambil gambar
        $fileGambar = $this->request->getFile('gambar');
        // apakah tidak ada gambar yang di upload
        if ($fileGambar->getError() == 4) {
            $namaGambar = 'default.png';
        } else {
            // generate nama gambar random
            $namaGambar = $fileGambar->getRandomName();

            // findahka file ke folder img
            $fileGambar->move('img', $namaGambar);
        }



        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->siswaModel->save([
            'nama' => $this->request->getVar('nama'),
            'slug' => $slug,
            'kelas' => $this->request->getVar('kelas'),
            'jurusan' => $this->request->getVar('jurusan'),
            'gambar' => $namaGambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil di tambahkan.');

        return redirect()->to('/siswa');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan Id
        $siswa = $this->siswaModel->find($id);

        // cek jika file gambarnya default.png
        if ($siswa['gambar'] != 'default.png') {
            // hapus gambar dari database
            unlink('img/' . $siswa['gambar']);
        }

        $this->siswaModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil di hapus.');
        return redirect()->to('/siswa');
    }

    // method edit buat edit data
    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah data Siswa',
            'validation' => \Config\Services::validation(),
            // data siswa di ambil 
            'siswa' => $this->siswaModel->getSiswa($slug)

        ];

        return view('siswa/edit', $data);
    }


    // method update buat proses nya ( proses data yang di edit)
    public function update($id)
    {
        // cek judul apakah di ubah dengan nama yang sudah ada di database
        $siswaLama = $this->siswaModel->getSiswa($this->request->getVar('slug'));
        if ($siswaLama['nama'] == $this->request->getVar('nama')) {
            $rule_nama = 'required';
        } else {
            $rule_nama = 'required|is_unique[siswa.nama]';
        }

        // validasi nama dan gambar
        if (!$this->validate([
            'nama' => [
                'rules' => $rule_nama,
                'errors' => [
                    'required' => '{field} siswa harus diisi.',
                    'is_unique' => '{field} siswa sudah terdaftar'
                ]
            ],
            'gambar' => [
                'rules' => 'max_size[gambar,1024]|is_image[gambar]|mime_in[gambar,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'ukuran gambar terlalu besar',
                    'is_image' => 'yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to('/siswa/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileGambar = $this->request->getFile('gambar');

        // cek gambar, apakah tetap gambar lama
        if ($fileGambar->getError() == 4) {
            $namaGambar = $this->request->getVar('gambarLama');
        } else {
            // generate nama file random
            $namaGambar = $fileGambar->getRandomName();
            // pindahkan gambar
            $fileGambar->move('img', $namaGambar);
        }

        if ($this->request->getVar('gambarLama') != 'default.png') {
            unlink('img/' . $this->request->getVar('gambarLama'));
        }


        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->siswaModel->save([
            'id' => $id,
            'nama' => $this->request->getVar('nama'),
            'slug' => $slug,
            'kelas' => $this->request->getVar('kelas'),
            'jurusan' => $this->request->getVar('jurusan'),
            'gambar' => $namaGambar
        ]);

        session()->setFlashdata('pesan', 'Data berhasil di Ubah.');

        return redirect()->to('/siswa');
    }
}
