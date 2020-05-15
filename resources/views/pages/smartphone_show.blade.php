@extends('layouts.master')

@section('title', 'Kiki Smartphone')
@section('content')

<main class="site-main">

<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="owl-carousel owl-theme s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="{{url($smartphone->img)}}" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3>{{$smartphone->title}}</h3>
                    <h2>Rp.{{number_format($smartphone->price, 2)}} </h2>
                    <ul class="list">
                        <li><a class="active" href="#"><span>Penjual</span> : Kiki Ponsel</a></li>
                        <li><a href="#"><span>Motto</span> : Murah Meriah Hanya di Kiki Ponsel, Bisa nego loh !! </a></li>
                    </ul>
                    <div>
                        {!!$smartphone->description!!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Single Product Area =================-->
</main>

@endsection
