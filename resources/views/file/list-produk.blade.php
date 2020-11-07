@extends('layouts.app')

@section('content')

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>

	<script>
		$(document).ready( function () {
			$('#list-produk').DataTable();
		} );
	</script>
<body>
<br>
<br>

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
                </ol>
            </nav>
        </div>
    </div>
</div>

<div class="container ">
		<div class ="col col-lg-8 ">
		<h3>Produk yang kamu telah upload</h3><br>
		 <table id="list-produk" class="display">
			<thead>
			  <tr>
			      <th>No</th>
                  <th>Kategori Produk</th>
				  <th> Nama Produk</th>
                  <th> Gambar Produk</th>
                  <th> Harga Produk</th>
                  <th> Stok Produk</th>
				  <th> Keterangan</th>
			
				  <th> Aksi</th>
				  <th> Aksi</th>
			  </tr>
			</thead>
			<tbody>
			@foreach($files as $barangs)
				<tr>
			    	<td>{{$barangs->id}}</td>
                   <td>{{$barangs->kategori_produk}}</td>
				   <td>{{$barangs->nama_barang}}</td>
                   <td>{{$barangs->gambar}}</td>
                   <td>{{$barangs->harga}}</td>
                   <td>{{$barangs->stok}}</td>
				   <td>{{$barangs->keterangan}}</td>
				   
				   <td> <a href="{{ url('detail-produk') }}"><button type="submit">Edit</button></a></td>
				   <td> <a href=""><button type="submit">Delete</button></a></td>
			  </tr>
			@endforeach
			</tbody>
		  </table>

		</div>

	  </div>

<br>
<br>
</body>
@endsection