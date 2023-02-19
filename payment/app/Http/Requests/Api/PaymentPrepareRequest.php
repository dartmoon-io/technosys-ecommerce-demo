<?php

namespace App\Http\Requests\Api;

use App\Rules\PaymentPrepareSignature;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PaymentPrepareRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'client_id' => ['required', Rule::in([config('gateway.client_id')])],
            'amount' => 'required|numeric',
            'currency' => 'required|string',
            'description' => 'required|string',
            'notify_url' => 'required|url',
            'cancel_url' => 'required|url',
            'signature' => new PaymentPrepareSignature(),
        ];
    }
}
