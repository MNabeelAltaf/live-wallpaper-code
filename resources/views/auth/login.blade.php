<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <div class="auth-bg bg-light py-md-5 p-4 d-flex">
        <div class="bg-overlay-gradient"></div>
        <!-- end bubble effect -->
        <div class="row justify-content-center g-0 align-items-center w-100">
            <div class="col-xl-4 col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="px-3 py-3">
                            <div class="text-center">
                                <h5 class="mb-0">Welcome Back !</h5>
                                <p class="text-muted mt-2">Sign in to continue to LWP.</p>
                            </div>
                            <form class="mt-4 pt-2" method="POST" action="{{ route('login') }}">
                                @csrf
                                <div class="form-floating form-floating-custom mb-3">
                                    <input type="email" name="email" :value="old('email')" required autofocus autocomplete="username" class="form-control" id="input-username">
                                    <label for="input-username">Username</label>
                                    <div class="form-floating-icon">
                                        <i class="uil uil-users-alt"></i>
                                    </div>
                                    <x-input-error :messages="$errors->get('email')" class="mt-2" />
                                </div>
                                <div class="form-floating form-floating-custom mb-3 auth-pass-inputgroup">
                                    <input type="password"
                                        name="password"
                                        required autocomplete="current-password" class="form-control" id="password-input">
                                    <button type="button" class="btn btn-link position-absolute h-100 end-0 top-0" id="password-addon">
                                        <i class="mdi mdi-eye-outline font-size-18 text-muted"></i>
                                    </button>
                                    <label for="password-input">Password</label>
                                    <div class="form-floating-icon">
                                        <i class="uil uil-padlock"></i>
                                    </div>
                                    <x-input-error :messages="$errors->get('password')" class="mt-2" />
                                </div>
                                <div class="form-check form-check-primary font-size-16 py-1">
                                    <input class="form-check-input" type="checkbox" id="remember-check" name="remember">
                                    @if (Route::has('password.request'))
                                    <div class="float-end">
                                        <a href="{{ route('password.request') }}" class="text-muted text-decoration-underline font-size-14">Forgot your password?</a>
                                    </div>
                                    @endif
                                    <label class="form-check-label font-size-14" for="remember-check">
                                        Remember me
                                    </label>
                                </div>
                                <div class="mt-3">
                                    <button class="btn btn-primary w-100" type="submit">Log In</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-guest-layout>