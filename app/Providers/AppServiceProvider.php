<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use DB;
use Log;
use Validator;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        DB::listen(function ($query) {
            Log::info('DB::listen', ['sql_content' => json_encode($query), 'status' => 2]);
        });

        Validator::extend('identitycards', function($attribute, $value, $parameters, $validator) {
            return preg_match('/^\d{6}((1[89])|(2\d))\d{2}((0\d)|(1[0-2]))((3[01])|([0-2]\d))\d{3}(\d|X)$/i', $value);
        });

        Validator::extend('identitycell', function($attribute, $value, $parameters, $validator) {
            return preg_match('/^1([0-9]){10}$/', $value);
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
