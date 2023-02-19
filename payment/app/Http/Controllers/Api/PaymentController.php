<?php

namespace App\Http\Controllers\Api;

use App\Enums\PaymentStatus;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\PaymentPrepareRequest;
use App\Models\Payment;

class PaymentController extends Controller
{
    public function prepare(PaymentPrepareRequest $request)
    {
        $payment = new Payment();
        $payment->fill($request->only($payment->getFillable()));
        $payment->status = PaymentStatus::PENDING;
        $payment->save();

        return response()->json([
            'redirect_url' => route('payment.step1', ['payment' => $payment->token]),
        ]);
    }

    public function status()
    {
        dd('get payment status');
    }
}
