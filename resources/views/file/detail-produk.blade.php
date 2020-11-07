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
                    <li class="breadcrumb-item active" aria-current="page">Daftar Produk</li>
                    <li class="breadcrumb-item active" aria-current="page">Detail Produk</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<body>
	  
      <div class="container ">
		<div class ="col col-lg-8 ">
		<h3>Silahkan Update Produk</h3>
			
		<form id="form-add-course" role="form" method="post" action="" enctype="multipart/form-data">
			<input type="hidden" name="id" value="">
			{{ csrf_field()}}

          <div class="form-group">
			    <label for="exampleInputText">Kategori Produk</label>
			    <input type="text" class="form-control" placeholder="Masukkan nama kategori produk" name="kategori_produk" value = "">
		  </div>

		  <div class="form-group">
			   <label for="exampleInputText">Nama Produk</label>
			   <input type="text" class="form-control" placeholder="Masukkan nama produk" name="nama_barang" value = "">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Harga Produk</label>
			<input type="text"  name="harga" class="form-control" placeholder="Masukkan harga produk" value = "">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Stok Produk</label>
			<input type="text"  name="stok" class="form-control" placeholder="Masukkan stok produk" value = "">
		  </div>

          <div class="form-group">
			<label for="exampleInputText">Keterangan Produk</label>
			<textarea name="keterangan" class="form-control" placeholder="Masukan keterangan produk" value = ""></textarea>
		  </div>
		  
          
		  <p>Masukan Produk :
          
          <section class="jumbotron text-center">
			<div class="container">
				<div class="file-upload-wrapper" data-text="Pilih File Kamu!">
				  <input name="file" type="file" class="file-upload-field" value="">
				</div>
			</div>
		 </section>
		 <br>
		 <button type="submit" id="buttonUpload" name="submit" value="update" class="btn btn-warning">Update</button>
		 <button type="submit" id="buttonUpload" name="submit" value="delete" class="btn btn-danger">Delete</button>

		</form>
		</div>

	  </div>

	  <br>
	  <br>
	  <br>
	  <br>
	</body>
@endsection