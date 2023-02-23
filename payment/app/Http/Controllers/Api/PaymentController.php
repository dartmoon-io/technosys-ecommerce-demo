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

        $data = [
            'payment' => $payment->token,
            'redirect_url' => route('payment.step1', ['payment' => $payment->token]),
        ];
        $data['signature'] = hash_hmac('sha256', json_encode($data), config('gateway.client_secret'));

        return response()->json($data);
    }

    public function status(Payment $payment)
    {
        $data = [
            'status' => $payment->status,
        ];
        $data['signature'] = hash_hmac('sha256', json_encode($data), config('gateway.client_secret'));

        return response()->json($data);
    }
}
