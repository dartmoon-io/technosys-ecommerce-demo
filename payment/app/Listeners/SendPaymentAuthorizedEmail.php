<?php

namespace App\Listeners;

use App\Mail\PaymentAuthorizedEmail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendPaymentAuthorizedEmail
{
    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        Mail::to($event->payment->email)->send(new PaymentAuthorizedEmail($event->payment));
    }
}
