<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class checkSuperAdminMiddleware
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
        if(session()->get('quyen') !== 3) {
            return redirect()->back()->with('error', 'Dừng lại đi, bạn đừng làm vậy :( !');
        }
        return $next($request);
    }
}
