    <header id="page-topbar" x-data="{ open: false }">
        <div class="navbar-header">
            <div class="d-flex">
                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="{{route('dashboard')}}" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="{{ asset('assets/images/logo-sm.svg') }}" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="{{ asset('assets/images/logo-sm.svg') }}" alt="" height="26"> <span class="logo-txt">Live WallPaper</span>
                        </span>
                    </a>

                    <a href="{{route('dashboard')}}" class="logo logo-light">
                        <span class="logo-sm">
                            <img src="{{ asset('assets/images/logo-sm.svg') }}" alt="" height="26">
                        </span>
                        <span class="logo-lg">
                            <img src="{{ asset('assets/images/logo-sm.svg') }}" alt="" height="26"> <span class="logo-txt">Live WallPaper</span>
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 font-size-16 d-lg-none header-item" data-bs-toggle="collapse" id="horimenu-btn" data-bs-target="#topnav-menu-content">
                    <i class="fa fa-fw fa-bars"></i>
                </button>

                <div class="topnav">
                    <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

                        <div class="collapse navbar-collapse" id="topnav-menu-content">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{route('dashboard')}}" id="topnav-dashboard" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="bx bx-home-circle icon"></i>
                                        <span data-key="t-dashboard">Dashboard</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{ route('wallpapers.index') }}" id="topnav-dashboard" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="bx bx-home-circle icon"></i>
                                        <span data-key="t-dashboard">Static WallPaper</span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{ route('live_wallpapers.index') }}" id="topnav-pages" role="button">
                                        <i class="bx bx-customize icon"></i>
                                        <span data-key="t-apps">Live WallPaper</span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{ route('3d_wallpapers.index') }}" id="topnav-pages" role="button">
                                        <i class="bx bx-customize icon"></i>
                                        <span data-key="t-apps">3D WallPaper</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{ route('4d_wallpapers.index') }}" id="topnav-pages" role="button">
                                        <i class="bx bx-customize icon"></i>
                                        <span data-key="t-apps">4D WallPaper</span>
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="{{ route('categories.index') }}" id="topnav-dashboard" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="bx bx-home-circle icon"></i>
                                        <span data-key="t-dashboard">Categories</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle arrow-none" href="index.html" id="topnav-dashboard" role="button"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="bx bx-home-circle icon"></i>
                                        <span data-key="t-dashboard">Events</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>

            </div>

            <div class="dropdown d-inline-block">
                <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="rounded-circle header-profile-user" src="{{ asset('assets/images/users/avatar-3.jpg') }}"
                        alt="Header Avatar">
                    <span class="ms-2 d-none d-xl-inline-block user-item-desc">
                        <span class="user-name">{{ Auth::user()->name }} <i class="mdi mdi-chevron-down"></i></span>
                    </span>
                </button>
                <div class="dropdown-menu dropdown-menu-end pt-0">
                    <h6 class="dropdown-header">Welcome {{ Auth::user()->name }}!</h6>
                    <a class="dropdown-item" href="{{route('profile.edit')}}"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                    <div class="dropdown-divider"></div>
                    <!-- Authentication -->
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf

                        <a class="dropdown-item" href="#" onclick="event.preventDefault(); this.closest('form').submit();">
                            <i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i>
                            <span class="align-middle">Logout</span>
                        </a>
                    </form>

                </div>
            </div>
        </div>
        </div>

        <div class="collapse show dash-content" id="dashtoggle">
            <div class="container-fluid">
                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box d-flex align-items-center justify-content-between">
                            <h4 class="mb-0 sub-title">{{ $main_page ?? 'Dashboard' }}</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item page-head"><a href="javascript: void(0);">Dashboard</a></li>
                                    <li class="breadcrumb-item page-head active">Welcome !</li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end page title -->
            </div>
        </div>
    </header>
