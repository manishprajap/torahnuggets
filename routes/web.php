<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/admin', function () {
    return view('welcome');
});

Route::get('/', [App\Http\Controllers\FrontendController::class, 'index'])->name('home');
Route::get('/about-us', [App\Http\Controllers\FrontendController::class, 'about'])->name('about-us');
Route::get('/service', [App\Http\Controllers\FrontendController::class, 'services'])->name('service');
Route::get('/contact-us', [App\Http\Controllers\FrontendController::class, 'contact'])->name('contact-us');
Route::get('/user-login', [App\Http\Controllers\FrontendController::class, 'login'])->name('user-login');
Route::get('/sign-up', [App\Http\Controllers\FrontendController::class, 'signup'])->name('sign-up');
Route::get('/subscription', [App\Http\Controllers\FrontendController::class, 'membership'])->name('subscription');
Route::get('/audio-player/{id}', [App\Http\Controllers\FrontendController::class, 'audioPlayer'])->name('audio-player');
Route::get('/add-payment/{id}', [App\Http\Controllers\FrontendController::class, 'addpayments'])->name('add-payment');
Route::get('/thank-you/{id}', [App\Http\Controllers\FrontendController::class, 'thankyou'])->name('thank-you');
Route::get('/coming-soon', [App\Http\Controllers\FrontendController::class, 'coming'])->name('coming-soon');


Route::post('/save', [App\Http\Controllers\MemberController::class, 'store'])->name('save');
Route::post('/signIn', [App\Http\Controllers\MemberController::class, 'memberlogin'])->name('signIn');
Route::post('/member-save', [App\Http\Controllers\MemberController::class, 'memberAdd'])->name('member-save');
Route::post('/member-update', [App\Http\Controllers\MemberController::class, 'memberupdate'])->name('member-update');
Route::post('/member-payment', [App\Http\Controllers\MemberController::class, 'memberpayment'])->name('member-payment');
Route::get('/member-dashboard', [App\Http\Controllers\MemberController::class, 'dashboard'])->name('member-dashboard');

						/* Subscription */

Route::post('/process-payment', [App\Http\Controllers\SubscriptionController::class, 'processPayment'])->name('process.payment');

//Route::get('/subscription/success', [App\Http\Controllers\SubscriptionController::class, 'success'])->name('subscription.success');
//Route::get('/subscription/cancel', [App\Http\Controllers\SubscriptionController::class, 'cancel'])->name('subscription.cancel');





Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
