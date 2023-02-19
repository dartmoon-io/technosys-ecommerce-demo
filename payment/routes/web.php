<?php

use App\Http\Controllers\Web\PaymentController;
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

Route::get('/step1/{payment:token}', [PaymentController::class, 'step1'])->name('payment.step1');
Route::get('/step2/{payment:token}', [PaymentController::class, 'step2'])->name('payment.step2');
Route::get('/processing/{payment:token}', [PaymentController::class, 'processing'])->name('payment.processing');
Route::get('/error', [PaymentController::class, 'error'])->name('payment.error');
