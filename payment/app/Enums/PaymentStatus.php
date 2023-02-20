<?php declare(strict_types=1);

namespace App\Enums;

use BenSampo\Enum\Enum;

final class PaymentStatus extends Enum
{
    const PENDING = 'pending';
    const NEED_CONFIRMATION = 'need_confirmation';
    const DENIED = 'denied';
    const AUTHORIZED = 'authorized';
}
