@extends('layouts.main')
@section('content')
<div class="row justify-content-center">
    <div class="col-lg-5">
        <main class="form-registration">
            <h1 class="h3 mb-3 fw-normal text-center"> Registration Form </h1>
            <form action="/register" method="POST">
                @csrf
                <div class="form-floating">
                    <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="name" required value="{{ old('name') }}">
                    <label for="name"> Name </label>
                    @error('name')
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                       {{$message   }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="text" name="username" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                    <label for="username"> Username </label>
                    @error('username')
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                       {{$message   }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="email" required value="{{ old('email') }}">
                    <label for="email"> Email Address </label>
                    @error('email')
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                       {{$message   }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="password" placeholder="password" name="password" required>
                    <label for="password"> Password </label>
                    @error('password')
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                       {{ $message  }}
                    </div>
                    @enderror
                </div>

                <button class="w-100 btn btn-lg btn-primary mt-3" type="submit"> Register </button>
                <small class="d-block text-center mt-3"> Already Registered ? <a href="/login"> Login Now </a></small>
            </form>
        </main>
    </div>
</div>

@endsection
