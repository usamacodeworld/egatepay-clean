<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class CurrencyFacade extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'currency.service'; // Key that matches the service binding
    }
}
