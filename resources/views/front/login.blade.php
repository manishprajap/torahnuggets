@extends('layouts.frontend')

@section('content')

<!-- Contact Start -->
<div class="container-fluid pt-5 bg-primary hero-header mb-5">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-lg-5 wow fadeIn" data-wow-delay="0.1s">
                <h1 class="mb-4">Our Excellent AI Solutions for Your Business</h1>
                <p class="mb-4">
                    Tempor erat elitr rebum at clita. Diam dolor diam ipsum et tempor sit. Aliqu diam
                    amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit.
                    Sanctus clita duo justo et tempor eirmod magna dolore erat amet.
                </p>
            </div>
            <div class="col-lg-7">
                <div class="col-md-6" style="width: 70% !important;">
                    <form action="<?php echo url('signIn')?>" method="post">
                        @csrf
                        <div class="row justify-content-center">
                            <div class="card" style="width: 25rem;">
                                <div class="card-body">
                                    <h5 class="card-title">Start using Torah.Nuggets for yourself or your team</h5>
                                    <div class="row g-3">
                                        
                                        <!-- Email Field -->
                                        <div class="col-md-12">
                                            <label for="email">Email</label>
                                            <input type="email" id="email" class="form-control" name="email" placeholder="name@yourcompany.com" required>
                                            @error('email')
                                                <div class="error" style="color: red;">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        
                                        <!-- Password Field -->
                                        <div class="col-md-12">
                                            <label for="password">Password</label>
                                            <input type="password" id="password" class="form-control" name="password" placeholder="********" required>
                                            @error('password')
                                                <div class="error" style="color: red;">{{ $message }}</div>
                                            @enderror
                                        </div>
                                        
                                        <!-- Sign In Button -->
                                        <div class="col-12">
                                            <button class="btn btn-success w-100 py-3" type="submit">Sign In</button>
                                        </div>

                                        <!-- Register Link -->
                                        <p>Don't have an account? 
                                            <a href="<?php echo url('sign-up')?>" >Create a new account</a>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div> 
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->

@endsection
