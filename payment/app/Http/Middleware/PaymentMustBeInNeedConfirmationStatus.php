<?php

namespace App\Http\Middleware;

use App\Enums\PaymentStatus;
use Closure;
use Illuminate\Http\Request;

class PaymentMustBeInNeedConfirmationStatus
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
        if ($request->payment->status !== PaymentStatus::NEED_CONFIRMATION) {
            return abort(404);
        }

        return $next($request);
    }
}
