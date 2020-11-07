@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <a href="{{ url('home') }}" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('home') }}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tambah Produk</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<div class="container ">
		<div class ="col col-lg-8 ">
		<h3>Silahkan Tambah Produk!</h3>
		<form role="form" method="post" action="{{ route('upload') }}" enctype="multipart/form-data">
			{{ csrf_field()}}

         <div class="form-group">
			<label for="exampleInputText">No</label>
			<input type="text"  name="id" class="form-control" placeholder="Masukkan nomor">
		  </div>

		  <div class="form-group">
			<label for="exampleInputText">Kategori Produk</label>
			<input type="text"  name="kategori_produk" class="form-control" placeholder="Masukan nama kategori produk">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Nama Produk</label>
			<input type="text"  name="nama_barang" class="form-control" placeholder="Masukkan nama produk">
		  </div>

		  <div class="file-upload-wrapper" data-text="Pilih File Kamu!">
          <label for="exampleInputText">Masukan Produk</label><br>
		    <input type="file" name="file" class="file-upload-field" value="">
		  </div><br>

          <div class="form-group">
			<label for="exampleInputText">Harga Produk</label>
			<input type="text"  name="harga" class="form-control" placeholder="Masukkan harga produk">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Stok Produk</label>
			<input type="text"  name="stok" class="form-control" placeholder="Masukkan stok produk">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Keterangan Produk</label>
			<textarea name="keterangan" class="form-control" placeholder="Masukan keterangan produk"></textarea>
		  </div>

			
		 <button type="submit" id="buttonUpload" class="btn btn-success">Tambah Produk</button>

		</form>
		</div>

	  </div>

@endsection