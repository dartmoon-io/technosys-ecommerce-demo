<?php

namespace App\Http\Middleware;

use App\Enums\PaymentStatus;
use Closure;
use Illuminate\Http\Request;

class PaymentMustBePending
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if ($request->payment->status !== PaymentStatus::PENDING) {
            return redirect()->route('payment.error');
        }

        return $next($request);
    }
}
