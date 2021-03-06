<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Kakakembar - Semua Tentang Trick Slot</title>
        <link rel="icon" type="image/x-icon" href="{{ asset('assets/binance.png') }}" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{ asset('css/styles.css') }}" rel="stylesheet" />
    </head>
    <body>
        <!-- Navbar -->
        @include('layouts.navbar')

        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Semua Tentang Slot</h1>
                            <span class="subheading">Artikel, Rekomendasi, Tips & Trik, Dan lain-lain</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    @foreach ($posts as $post)
                        <!-- Post preview-->
                        <div class="post-preview">
                            <a href="/view_post/{{ $post->id }}">
                                <h2 class="post-title">{{ $post->judul }}</h2>
                                <h3 class="post-subtitle">{{ $post->excerpt }}</h3>
                            </a>
                            <p class="post-meta">
                                Posted by
                                <a href="https://www.instagram.com/riidwanef/">riidwanef</a>, {{ $post->created_at->diffForHumans() }}
                            </p>
                        </div>
                        <!-- Divider-->
                        <hr class="my-4" />
                    @endforeach
                    <!-- Pagination -->
                    <div class="d-flex justify-content-end mb-4">
                        {{ $posts->links() }}
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Footer -->
        @include('layouts.footer')
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="{{ asset('js/scripts.js') }}"></script>
    </body>
</html>
