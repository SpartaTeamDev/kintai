<?php

use Illuminate\Database\Seeder;

/**
 * Class LanguageTableSeeder
 * @author ntd1712
 */
class LanguageTableSeeder extends Seeder
{
    public function data(Faker\Generator $faker)
    {
        return [
            [
                'name' => 'Chinese (PRC)',
                'iso6391_code' => 'zh',
                'country_code' => 'CN'
            ],[
                'name' => 'Spanish (Spain)',
                'iso6391_code' => 'es',
                'country_code' => 'ES'
            ],[
                'name' => 'English',
                'iso6391_code' => 'en',
                'country_code' => 'GB'
            ],[
                'name' => 'Hindi',
                'iso6391_code' => 'hi',
                'country_code' => 'IN'
            ],[
                'name' => 'Arabic (Saudi Arabia)',
                'iso6391_code' => 'ar',
                'country_code' => 'SA'
            ],[
                'name' => 'Portuguese (Portugal)',
                'iso6391_code' => 'pt',
                'country_code' => 'PT'
            ],[
                'name' => 'Russian',
                'iso6391_code' => 'ru',
                'country_code' => 'RU'
            ],[
                'name' => 'Japanese',
                'iso6391_code' => 'ja',
                'country_code' => 'JP'
            ],[
                'name' => 'Vietnamese',
                'iso6391_code' => 'vi',
                'country_code' => 'VN'
            ]
        ];
    }
}