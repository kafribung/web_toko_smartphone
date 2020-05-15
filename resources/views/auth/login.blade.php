@extends('layouts.master')

@section('title', 'Login | Kiki Smartphone')
@section('content')

<main class="site-main">

  <!--================Login Box Area =================-->
  <section class="login_box_area section-margin">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login_box_img">
                    <div class="hover">
                        <h4>Ingin menjadi member di Kiki Ponsel?</h4>
                        <p>Silahkan hubungi nomor dibawah ini</p>
                        <a class="button button-account" href="tel:082199820992">082199820992</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login_form_inner register_form_inner">
                    <h3>Login</h3>

                    @if ($errors->any())
                        @foreach ($errors->all() as $error)
                            <p class="alert alert-danger">{{$error}}</p>
                        @endforeach
                    @endif

                    <form class="row login_form"  id="register_form" method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{old('email')}}" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
                        </div>

                        <div class="col-md-12 form-group">
                            <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
                        </div>
                       
                        <div class="col-md-12 form-group">
                            <div class="creat_account">
                                <input type="checkbox" id="f-option2" name="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label for="f-option2">Keep me logged in</label>
                            </div>
                        </div>

                        <div class="col-md-12 form-group">
                            <button type="submit" value="submit" class="button button-login w-100">Log In</button>

                            @if (Route::has('password.request'))
                                <a href="{{ route('password.request') }}">Forgot Password?</a>
                            @endif
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Login Box Area =================-->


</main>
    
@endsection