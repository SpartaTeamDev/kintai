{{--*/ $isProduction = 'production' === $config['app.env']; /*--}}
<!doctype html>
<html lang="{{ $config['app.locale'] }}" ng-app="homer">
<head>
    <base href="{{ url('/themes/' . $config['app.theme']) . ($isProduction ? '/dist' : '/app') }}/"/>
    <meta charset="{{ $config['app.charset'] }}"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1"/>
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title page-title="{{ strip_tags($config['app.title']) }}"></title>
    <link rel="shortcut icon" type="image/ico" href="{{ url('/favicon.ico') }}"/>
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700|Dosis:400,500,600,700|Open+Sans:400,600|EB+Garamond"/>
@if ($isProduction)
    <link rel="stylesheet" href="styles/vendor.d78eb1c6.css"/>
    <link rel="stylesheet" href="styles/style.96716834.css"/>
@else
    <link rel="stylesheet" href="../node_modules/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" href="../node_modules/pixeden-stroke-7-icon/pe-icon-7-stroke/dist/pe-icon-7-stroke.css"/>
    <link rel="stylesheet" href="../node_modules/animate.css/animate.css"/>
    <link rel="stylesheet" href="../node_modules/Snarl/dist/snarl.css"/>
    <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="../node_modules/bootstrap-sweetalert/dist/sweetalert.css"/>
    <link rel="stylesheet" href="../node_modules/datatables.net-bs/css/dataTables.bootstrap.css"/>
    <link rel="stylesheet" href="../node_modules/ui-select/dist/select.css"/>
    <link rel="stylesheet" href="styles/pe-icon-7-stroke-helper.css"/>
    <link rel="stylesheet" href="styles/style.css"/>
    <link rel="stylesheet" href="styles/custom.css"/>
@endif
</head>
<body class="@{{ $state.current.data.specialClass }}" backdrop="true" ng-strict-di>
    <!--[if lt IE 7]>
    <p class="alert alert-danger">You are using an <strong>outdated</strong> browser.
        Please <a href="http://browsehappy.com">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <div ui-view autoscroll="true"></div>
@if ($isProduction)
    <script src="scripts/vendor.ba03903f.js"></script>
@else
    <script src="../node_modules/lockr/lockr.js"></script>
    <script src="../node_modules/lodash/lodash.js"></script>
    <script src="../node_modules/moment/moment.js"></script>
    <script src="../node_modules/Snarl/dist/snarl.js"></script>
    <script src="../node_modules/jquery/dist/jquery.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <script src="../node_modules/bootstrap-sweetalert/dist/sweetalert.js"></script>
    <script src="../node_modules/datatables.net/js/jquery.dataTables.js"></script>
    <script src="../node_modules/drmonty-datatables-plugins/api/fnSetFilteringDelay.js"></script>
    <script src="../node_modules/datatables.net-bs/js/dataTables.bootstrap.js"></script>
    <script src="../node_modules/icheck/icheck.js"></script>
    <script src="../node_modules/masonry-layout/dist/masonry.pkgd.js"></script>
    <script src="../node_modules/metismenu/dist/metisMenu.js"></script>
    <script src="../node_modules/angular/angular.js"></script>
    <script src="../node_modules/angular-sanitize/angular-sanitize.js"></script>
    <script src="../node_modules/angular-ui-router/release/angular-ui-router.js"></script>
    <script src="../node_modules/ui-select/dist/select.js"></script>
    <script src="../node_modules/angular-datatables/dist/angular-datatables.js"></script>
    <script src="../node_modules/angular-jwt/dist/angular-jwt.js"></script>
    <script src="../node_modules/angular-translate/dist/angular-translate.js"></script>
    <script src="../node_modules/angular-translate-loader-partial/angular-translate-loader-partial.js"></script>
    <script src="../node_modules/checklist-model/checklist-model.js"></script>
    <script src="../node_modules/ng-file-upload/dist/ng-file-upload.js"></script>
@endif
    <script>/*<![CDATA[*/
window.CFG = {!! json_encode(['app' => $config['app'], 'session' => $config['session'], 'urls' => $config['urls']]) !!};
    /*]]>*/</script>
@if ($isProduction)
    <script src="scripts/scripts.51fdec14.js"></script>
@else
    <script src="scripts/theme.js"></script>
    <script src="scripts/app.js"></script>
    <script src="scripts/config.js"></script>
    <script src="scripts/common/directives/directives.js"></script>
    <script src="scripts/common/directives/touchSpin.js"></script>
    <script src="scripts/common/filters/props.js"></script>
    <script src="scripts/common/factories/abstract.model.js"></script>
    <script src="scripts/common/factories/abstract.repository.js"></script>
    <script src="scripts/common/factories/abstract.controller.js"></script>
    <script src="scripts/common/providers/request.provider.js"></script>
    <script src="scripts/system/auth/login.model.js"></script>
    <script src="scripts/system/auth/login.repository.js"></script>
    <script src="scripts/system/auth/login.controller.js"></script>
    <script src="scripts/system/auth/login.route.js"></script>
    <script src="scripts/system/audit/audit.model.js"></script>
    <script src="scripts/system/audit/audit.repository.js"></script>
    <script src="scripts/system/audit/audit.controller.js"></script>
    <script src="scripts/system/audit/audit.route.js"></script>
    <script src="scripts/system/lookup/lookup.model.js"></script>
    <script src="scripts/system/lookup/lookup.repository.js"></script>
    <script src="scripts/system/lookup/lookup.controller.js"></script>
    <script src="scripts/system/lookup/lookup.route.js"></script>
    <script src="scripts/system/setting/setting.model.js"></script>
    <script src="scripts/system/setting/setting.repository.js"></script>
    <script src="scripts/system/setting/setting.controller.js"></script>
    <script src="scripts/system/setting/setting.route.js"></script>
    <script src="scripts/account/permission/permission.model.js"></script>
    <script src="scripts/account/permission/permission.repository.js"></script>
    <script src="scripts/account/permission/permission.controller.js"></script>
    <script src="scripts/account/permission/permission.route.js"></script>
    <script src="scripts/account/role/role.model.js"></script>
    <script src="scripts/account/role/role.repository.js"></script>
    <script src="scripts/account/role/role.controller.js"></script>
    <script src="scripts/account/role/role.route.js"></script>
    <script src="scripts/account/user/user.model.js"></script>
    <script src="scripts/account/user/user.repository.js"></script>
    <script src="scripts/account/user/user.controller.js"></script>
    <script src="scripts/account/user/user.route.js"></script>
    <script src="scripts/kintai/staff/staff.model.js"></script>
    <script src="scripts/kintai/staff/staff.repository.js"></script>
    <script src="scripts/kintai/staff/staff.controller.js"></script>
    <script src="scripts/kintai/staff/staff.route.js"></script>
@endif
</body>
</html><!-- ntd1712 -->