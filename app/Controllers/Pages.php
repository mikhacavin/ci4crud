<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Sistem Informasi',
            'test' => ['satu', 'dua', 'tiga']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Us'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'rumah',
                    'alamat' => 'jl.a bc no .123',
                    'kota' => 'medan'
                ],
                [
                    'tipe' => 'kantor',
                    'alamat' => 'jl kamboja',
                    'kota' => 'binjai'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
