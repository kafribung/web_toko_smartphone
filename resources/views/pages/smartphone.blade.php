@extends('layouts.master')

@section('title', 'Kiki Smartphone')
@section('content')

<main class="site-main">

    <!-- ================ trending product section start ================= -->
    <section class="section-margin calc-60px">
        <div class="container">
            
            @if (session('msg'))
                <p class="alert alert-info">{{session('msg')}}</p>
            @endif

            <div class="section-intro pb-60px">
                <p>Segala jenis hp</p>
                <h2>Silahkan <span class="section-intro__style">Dibeli</span></h2>
            </div>
            <div class="row">
                @foreach ($smartphones as $smartphone)
                    
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="{{ url($smartphone->img) }}" width="400" height="300" alt="Smartphone {{$smartphone->title}}">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Kondisi Baru</p>
                            <h4 class="card-product__title"><a href="/smartphone/{{$smartphone->slug}}">{{$smartphone->title}}</a></h4>
                            <p class="card-product__price">Rp.{{number_format($smartphone->price, 2) }}</p>
                        </div>
                        <div class="card-footer">
                            <h4 class="card-product__title">Penjual : {{$smartphone->user->name}}</a></h4>
                            <p class="card-product__price">Hp: 082199820992</p>
                            
                            {{-- Validasi Admin --}}
                            @if ($smartphone->isLogin())
                                <a href="/smartphone/{{$smartphone->slug}}/edit" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                
                                <form action="/smartphone/{{$smartphone->id}}" method="POST" class="d-inline-flex">
                                    @csrf
                                    @method('DELETE')
                                    <button  type="submit" onclick="return confirm('Hapus {{$smartphone->title}}')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                </form>
                            @endif

                        </div>
                    </div>
                </div>

                @endforeach

            </div>

            {{$smartphones->links()}}
        </div>
    </section>
    <!-- ================ trending product section end ================= -->

    <!-- ================ Best Selling item  carousel ================= -->
    <section class="section-margin calc-60px">
        <div class="container">
            <div class="section-intro pb-60px">
                <p>Pengen Hp Mahal ?</p>
                <h2>HP <span class="section-intro__style">Termahal</span></h2>
            </div>
            <div class="owl-carousel owl-theme" id="bestSellerCarousel">
                @foreach ($expensives as $expensive)
                    
                <div class="card text-center card-product">
                    <div class="card-product__img">
                        <img class="img-fluid" src="{{ url($expensive->img) }}" width="400" height="300">
                        <ul class="card-product__imgOverlay">
                            <li><button><i class="ti-search"></i></button></li>
                            <li><button><i class="ti-shopping-cart"></i></button></li>
                            <li><button><i class="ti-heart"></i></button></li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <p>Mahal Gan</p>
                        <h4 class="card-product__title"><a href="/smartphone/{{$expensive->slug}}">{{ $expensive->title }}</a></h4>
                        <p class="card-product__price">Rp.{{number_format($expensive->price), 2 }}</p>
                    </div>
                </div>

                @endforeach

            </div>
        </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= -->

</main>
    
@endsection