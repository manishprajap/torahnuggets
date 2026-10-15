@extends('layouts.frontend')

@section('content')

<div class="container-fluid pt-5 bg-primary hero-header">
        <div class="container pt-5">
            <div class="row g-5 pt-5">
                <div class="col-lg-6 align-self-center text-center text-lg-start mb-lg-5">
                    <h1 class="display-4 text-white mb-4 animated slideInRight">Shiurim</h1>
                   
                </div>
                
            </div>
        </div>
    </div>
<div class="container " style="text-align: center;margin-top: 50px;margin-bottom: 50px;">
        <img src="https://cdn-icons-png.flaticon.com/512/189/189665.png" alt="Coming Soon" width="150">
        <h1>Coming Soon</h1>
        <p>We're working on something exciting!</p>
        <a href="{{ url('/') }}" class="btn btn-primary">Back to Home</a>
</div>
@endsection
