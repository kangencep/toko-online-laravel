<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use Auth;

class UploadController extends Controller
{
    //
    public function create(Request $request){

        $file     = $request->file('file');
        $gambar       = "";
        if($file != null){
                $destinationPath    = 'uploads/';
                $name               = $file->getClientOriginalName();
                $move              =   $file->move($destinationPath, $name);
                $gambar                = "{$name}";

                Barang::create([
                        "user_id" => Auth::user()->id,
                        "kategori_produk" => $request->kategori_produk,
                        "nama_barang" => $request->nama_barang,
                        "gambar"      => $gambar,
                        "harga" => $request->harga,
                        "stok" => $request->stok,
                        "keterangan" => $request->keterangan,
                        'is_active'  => 1
                ]);

                return redirect()->route('list-produk');
        }
    }

    public function get_list_produk(){

        $files = Barang::where('user_id', Auth::user()->id)
                            ->where('is_active', 1)
                            ->get();

        return view('file.list-produk', ["files"=>$files]);
    }  
   
}
