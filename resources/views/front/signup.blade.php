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
            <div class="col-lg-7 d-flex justify-content-center">
                <div class="card shadow-lg p-4" style="width: 30rem;">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-4">Start using Torah.Nuggets for yourself or your team</h5>
                        <form action="<?php echo url('save')?>" method="post">
                            @csrf
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label for="name" class="form-label">Name</label>
                                    <input type="text" id="name" class="form-control" name="name" placeholder="Your Name" required>
                                    @error('name')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" id="email" class="form-control" name="email" placeholder="name@yourcompany.com" required>
                                    @error('email')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label for="mobile" class="form-label">Mobile</label>
                                    <input type="tel" id="mobile" class="form-control" name="mobile" placeholder="Your Mobile Number" required>
                                    @error('mobile')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label for="gender" class="form-label">Gender</label>
                                    <select id="gender" class="form-control" name="gender" required>
                                        <option value="">Select Gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                    </select>
                                    @error('gender')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label for="dob" class="form-label">Date of Birth</label>
                                    <input type="date" id="dob" class="form-control" name="dob" required>
                                    @error('dob')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-md-6">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" id="password" class="form-control" name="password" placeholder="********" required>
                                    @error('password')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-success w-100 py-3" type="submit">Sign Up</button>
                                </div>
                                <div class="col-12 text-center">
                                    <p class="mt-3">Already have an account? <a href="{{ url('user-login ') }}">Sign In</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->

@endsection
