<?php

namespace App\Listeners;

use App\Mail\PaymentDeniedEmail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendPaymentDeniedEmail
{
    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        Mail::to($event->payment->email)->send(new PaymentDeniedEmail($event->payment));
    }
}
