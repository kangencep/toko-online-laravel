<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{

    protected $table = 'barangs';

    protected $fillable = [
        'user_id', 'kategori_produk', 'nama_barang', 'gambar', 'harga', 'stok', 'keterangan', 'is_active',
   ];


    public function pesanan_detail() {
	     return $this->hasMany('App\PesananDetail','barang_id', 'id');
	}

}


