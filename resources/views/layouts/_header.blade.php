<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="/">
                    <h3>Kiki Ponsel</h3>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                            @guest
                            <li class="nav-item {{Request()->is('smartphone') ? 'active' : ''}}"><a class="nav-link" href="/">Home</a></li>
                            <li class="nav-item {{Request::segment(1) == 'login' ? 'active' : ''}}"><a class="nav-link" href="/login">Login</a></li>
                            <li class="nav-item {{Request::segment(1) == 'register' ? 'active' : ''}}"><a class="nav-link" href="/register">Register</a></li>
                            @else
                            <li class="nav-item {{Request()->is('smartphone') ? 'active' : ''}}"><a class="nav-link" href="/">Home</a></li>
                                <li class="nav-item {{Request()->is('smartphone/create') ? 'active' : ''}}"><a class="nav-link" href="/smartphone/create">Add Data</a></li>
                                <li class="nav-item {{Request::segment(1) == 'logout' ? 'active' : ''}}"><a class="nav-link" href="" onclick="event.preventDefault(); document.getElementById('logout').submit();">Logout</a></li>
                                <form id="logout" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            @endguest
                            
                        
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->