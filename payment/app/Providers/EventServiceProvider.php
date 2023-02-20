<?php

namespace App\Providers;

use App\Events\PaymentAuthorized;
use App\Events\PaymentDenied;
use App\Listeners\SendPaymentAuthorizedEmail;
use App\Listeners\SendPaymentDeniedEmail;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event to listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        PaymentAuthorized::class => [
            SendPaymentAuthorizedEmail::class,
        ],
        PaymentDenied::class => [
            SendPaymentDeniedEmail::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Determine if events and listeners should be automatically discovered.
     *
     * @return bool
     */
    public function shouldDiscoverEvents()
    {
        return false;
    }
}
