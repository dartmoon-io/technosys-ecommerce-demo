<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Middleware\PaymentMustBePending;
use App\Http\Requests\Web\PaymentStep1Request;
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

    public function step1Process(Payment $payment, PaymentStep1Request $request)
    {
        $payment->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
        ]);

        return redirect()->route('payment.step2', $payment);
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
