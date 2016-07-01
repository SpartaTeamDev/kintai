<?php namespace System;

use Chaos\Common\AbstractLeagueServiceProvider;

/**
 * Class Module
 * @author ntd1712
 */
class Module extends AbstractLeagueServiceProvider
{
    /** @var array */
    protected $provides = [
        // entities
        'System\Entities\Audit',
        'System\Entities\Country',
        'System\Entities\Currency',
        'System\Entities\District',
        'System\Entities\Language',
        'System\Entities\Lookup',
        'System\Entities\Media',
        'System\Entities\Province',
        'System\Entities\Setting',
        // events
        'System\Events\AuditListener',
        'System\Events\CountryListener',
        'System\Events\CurrencyListener',
        'System\Events\DistrictListener',
        'System\Events\LanguageListener',
        'System\Events\LookupListener',
        'System\Events\MediaListener',
        'System\Events\ProvinceListener',
        'System\Events\SettingListener',
        // services
        'System\Services\AuditService',
        'System\Services\CountryService',
        'System\Services\CurrencyService',
        'System\Services\DistrictService',
        'System\Services\LanguageService',
        'System\Services\LookupService',
        'System\Services\MediaService',
        'System\Services\ProvinceService',
        'System\Services\SettingService',
        // aliases
        'AuditService',
        'CountryService',
        'CurrencyService',
        'DistrictService',
        'LanguageService',
        'LookupService',
        'MediaService',
        'ProvinceService',
        'SettingService'
    ];
}