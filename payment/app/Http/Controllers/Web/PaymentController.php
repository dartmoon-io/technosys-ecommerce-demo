<?php

namespace App\Http\Controllers\Web;

use App\Enums\PaymentStatus;
use App\Http\Controllers\Controller;
use App\Http\Middleware\PaymentMustBeInNeedConfirmationStatus;
use App\Http\Middleware\PaymentMustBeInPendingStatus;
use App\Http\Requests\Web\PaymentStep1Request;
use App\Models\Payment;

class PaymentController extends Controller
{
    public function __construct()
    {
        $this->middleware(PaymentMustBeInPendingStatus::class)->only(['step1', 'step1Process']);
        $this->middleware(PaymentMustBeInNeedConfirmationStatus::class)->only(['step2', 'step2Process']);
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
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'email' => $request->input('email'),
            'card_number' => $request->input('card_number'),
            'card_expiration' => $request->input('card_expiration'),
            'card_cvv' => $request->input('card_cvv'),
        ]);

        $payment->status = PaymentStatus::NEED_CONFIRMATION;
        $payment->save();

        return redirect()->route('payment.step2', $payment);
    }

    public function step2(Payment $payment)
    {
        return view('step2', [
            'payment' => $payment,
        ]);
    }

    public function step2Process(Payment $payment)
    {
        return view('step2', [
            'payment' => $payment,
        ]);
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
