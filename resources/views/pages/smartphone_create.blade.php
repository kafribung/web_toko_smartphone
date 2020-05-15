@extends('layouts.master')

@section('title', 'Create | Kiki Smartphone')
@section('content')

<main class="site-main">

      <!--================Tracking Box Area =================-->
  <section class="tracking_box_area section-margin--small">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                    <p>Silahkan diisi {{$user->name}}</p>
                    <form class="row tracking_form" novalidate="novalidate" action="/smartphone" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control  @error('title') is-invalid @enderror" id="title" name="title" value="{{old('title')}}" placeholder="Title" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Title'"  autofocus>

                            @error('title')
                                <p class="alert-danger">{{$message}}</p>
                            @enderror
                        </div>

                        <div class="col-md-12 form-group">
                            <input type="file" class="form-control @error('img') is-invalid @enderror"  accept="image/*"  id="img" name="img">
                            @error('img')
                                <p class="alert-danger">{{$message}}</p>
                            @enderror
                        </div>

                        <div class="col-md-12 form-group">
                            <input type="number" class="form-control @error('price') is-invalid @enderror" id="price" name="price" value="{{old('price')}}" placeholder="price" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Price'" >
                            @error('price')
                                <p class="alert-danger">{{$message}}</p>
                            @enderror
                        </div>

                        <div class="col-md-12 form-group">
                            <textarea class="form-control ckeditor @error('description') is-invalid @enderror" id="description" name="description" placeholder="description" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Description'">{{old('description')}}</textarea>
                            @error('description')
                                <p class="alert-danger">{{$message}}</p>
                            @enderror
                        </div>

                        <div class="col-md-12 form-group">
                            <button type="submit" value="submit" class="button button-tracking btn-block">Tambah Data</button>
                        </div>
                    </form>
            </div>
        </div>
        
    </div>
</section>
<!--================End Tracking Box Area =================-->

</main>

@push('after-script')
<script src="https://cdn.ckeditor.com/ckeditor5/19.0.0/classic/ckeditor.js"></script>
<script>
     ClassicEditor
        .create( document.querySelector( '.ckeditor' ) )
        .then( editor => {
                console.log( editor );
        } )
        .catch( error => {
                console.error( error );
        } );
</script>
@endpush
@endsection