<?php

use App\Enums\PaymentStatus;

return [
    'client_id' => '6e2cfb41-4c06-44f5-af1d-38599cc0013d',
    'client_secret' => 'CogSldhzTMWERuAHFVMjFOfrAlvrkV',

    'cards' => [
        '4539970000000006' => PaymentStatus::AUTHORIZED,
        '4539970000000007' => PaymentStatus::DENIED,
    ],
];
