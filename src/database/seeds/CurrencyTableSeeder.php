<?php

use Illuminate\Database\Seeder;

/**
 * Class CurrencyTableSeeder
 * @author ntd1712
 */
class CurrencyTableSeeder extends Seeder
{
    public function data(Faker\Generator $faker)
    {
        return [
            [
                'name' => 'Japan, Yen',
                'iso4217_code' => 'JPY',
                'symbol' => '¥',
                'rate' => 102.610,
                'country_code' => 'JP'
            ],[
                'name' => 'United States Of America, Dollars',
                'iso4217_code' => 'USD',
                'symbol' => '$',
                'rate' => 1,
                'country_code' => 'US'
            ],[
                'name' => 'Viet Nam, Dong',
                'iso4217_code' => 'VND',
                'symbol' => '₫',
                'rate' => 22291.60,
                'country_code' => 'VN'
            ]
        ];
    }
}