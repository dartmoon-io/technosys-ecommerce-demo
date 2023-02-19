<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Middleware\PaymentMustBePending;
use App\Models\Payment;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function __construct()
    {
        $this->middleware(PaymentMustBePending::class);
    }

    public function step1(Payment $payment)
    {
        return view('step1', [
            'payment' => $payment,
        ]);
    }

    public function step2(Payment $payment)
    {
        return view('step2');
    }

    public function processing(Payment $payment)
    {
        return view('processing');
    }

    public function error()
    {
        return view('error');
    }
}
