<?php

namespace App\Http\Requests\Web;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PaymentStep1Request extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'card_number' => ['required', Rule::in(['4539970000000006', '4539970000000007'])],
            'card_cvv' => 'required|digits:3',
            'card_expiration' => 'required|date_format:m/y|after_or_equal:today',
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|email',
        ];
    }
}
