<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use Illuminate\Support\Facades\Request;

class PaymentPrepareSignature implements Rule
{
    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $data = Request::only(['client_id', 'amount', 'currency', 'description', 'notify_url', 'cancel_url']);
        $signature = hash_hmac('sha256', json_encode($data), config('gateway.client_secret'));

        return $signature === $value;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The signature is invalid.';
    }
}
