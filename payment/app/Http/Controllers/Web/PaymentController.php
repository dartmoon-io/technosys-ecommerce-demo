<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function step1(Payment $payment)
    {
        return view('step1');
    }

    public function step2()
    {
        return view('step2');
    }

    public function processing()
    {
        return view('processing');
    }

    public function error()
    {
        return view('error');
    }
}
