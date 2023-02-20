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
Route::post('/step1/{payment:token}/process', [PaymentController::class, 'step1Process'])->name('payment.step1.process');

Route::get('/step2/{payment:token}', [PaymentController::class, 'step2'])->name('payment.step2');
Route::post('/step2/{payment:token}/process', [PaymentController::class, 'step2Process'])->name('payment.step2.process');
Route::post('/step2/{payment:token}/back', [PaymentController::class, 'step2Back'])->name('payment.step2.back');

Route::post('/cancel/{payment:token}', [PaymentController::class, 'cancelPayment'])->name('payment.cancel');

Route::get('/processing/{payment:token}', [PaymentController::class, 'processingPayment'])->name('payment.processing');
Route::post('/complete/{payment:token}', [PaymentController::class, 'completePayment'])->name('payment.complete');
