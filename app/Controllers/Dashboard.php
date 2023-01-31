<?php

namespace App\Controllers;

use App\Models\Grafik_model;
use Config\Services;

class Dashboard extends BaseController
{
    public function index()
    {
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_kelurahan_json();
        $data = [
            'location'     => 'dashboard',
            'rs'     => $rs
        ];

        return view('dashboard', $data);
    }
}
