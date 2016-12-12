(function() { "use strict";
/**
 * @author ntd1712
 */
chaos.config(configBlocks);

function configBlocks($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        modules: [{
        // packages
            name: "icheck",
            files: [
                "../node_modules/icheck/icheck.min.js"
            ]
        },{
            name: "masonry",
            files: [
                "../node_modules/masonry-layout/dist/masonry.pkgd.min.js"
            ]
        },{
            name: "ui-select",
            files: [
                "../node_modules/ui-select/dist/select.min.css",
                "../node_modules/ui-select/dist/select.min.js"
            ]
        },{
            name: "checklist-model",
            files: [
                "../node_modules/checklist-model/checklist-model.js"
            ]
        },{
            name: "ng-file-upload",
            files: [
                "../node_modules/ng-file-upload/dist/ng-file-upload.min.js"
            ]
        },{
        // account
            name: "permission",
            files: [
                "scripts/account/permission/permission.model.js",
                "scripts/account/permission/permission.repository.js",
                "scripts/account/permission/permission.controller.js"
            ]
        },{
            name: "role",
            files: [
                "scripts/account/role/role.model.js",
                "scripts/account/role/role.repository.js",
                "scripts/account/role/role.controller.js"
            ]
        },{
            name: "user",
            files: [
                "scripts/account/user/user.model.js",
                "scripts/account/user/user.repository.js",
                "scripts/account/user/user.controller.js"
            ]
        },{
        // system
            name: "register",
            files: [
                "scripts/system/auth/register.model.js",
                "scripts/system/auth/register.repository.js",
                "scripts/system/auth/register.controller.js"
            ]
        },{
            name: "audit",
            files: [
                "scripts/system/audit/audit.model.js",
                "scripts/system/audit/audit.repository.js",
                "scripts/system/audit/audit.controller.js"
            ]
        },{
            name: "lookup",
            files: [
                "scripts/system/lookup/lookup.model.js",
                "scripts/system/lookup/lookup.repository.js",
                "scripts/system/lookup/lookup.controller.js"
            ]
        },{
            name: "setting",
            files: [
                "scripts/system/setting/setting.model.js",
                "scripts/system/setting/setting.repository.js",
                "scripts/system/setting/setting.controller.js"
            ]
        },{
        // store
            name: "booking",
            files: [
                "scripts/store/booking/booking.jmodel.js",
                "scripts/store/booking/booking.jpageviewmodel.js",
                "scripts/store/booking/booking.jviewmodel.js",
                "scripts/store/booking/booking.jsviewmodel.js",
                "scripts/store/booking/booking.admin.js",
                "scripts/store/booking/booking.management.js",
                "scripts/store/booking/booking.register.js"
            ]
        },{
            name: "calendar",
            files: [
                "scripts/store/calendar/calendar.model.js",
                "scripts/store/calendar/calendar.repository.js",
                "scripts/store/calendar/calendar.controller.js"
            ]
        },{
            name: "category",
            files: [
                "scripts/store/category/category.jmodel.js",
                "scripts/store/category/category.jpageviewmodel.js",
                "scripts/store/category/category.jviewmodel.js",
                "scripts/store/category/category.jsviewmodel.js",
                "scripts/store/category/category.admin.js",
                "scripts/store/category/category.management.js"
            ]
        },{
            name: "customer",
            files: [
                "scripts/store/customer/customer.jmodel.js",
                "scripts/store/customer/customer.jpageviewmodel.js",
                "scripts/store/customer/customer.jviewmodel.js",
                "scripts/store/customer/customer.jsviewmodel.js",
                "scripts/store/customer/customer.admin.js",
                "scripts/store/customer/customer.management.js",
                "scripts/store/customer/customer.detail.js"
            ]
        },{
            name: "expense",
            files: [
                "scripts/store/expense/expense.jmodel.js",
                "scripts/store/expense/expense.jpageviewmodel.js",
                "scripts/store/expense/expense.jviewmodel.js",
                "scripts/store/expense/expense.jsviewmodel.js",
                "scripts/store/expense/expense.admin.js",
                "scripts/store/expense/expense.management.js",
                "scripts/store/expense/expense.detail.js",
                "scripts/store/expense/expense.report.js"
            ]
        },{
            name: "expensedetail",
            files: [
                "scripts/store/expensedetail/expensedetail.jmodel.js",
                "scripts/store/expensedetail/expensedetail.jpageviewmodel.js",
                "scripts/store/expensedetail/expensedetail.jviewmodel.js",
                "scripts/store/expensedetail/expensedetail.jsviewmodel.js",
                "scripts/store/expensedetail/expensedetail.admin.js"
            ]
        },{
            name: "income",
            files: [
                "scripts/store/income/income.jmodel.js",
                "scripts/store/income/income.jpageviewmodel.js",
                "scripts/store/income/income.jviewmodel.js",
                "scripts/store/income/income.jsviewmodel.js",
                "scripts/store/income/income.admin.js",
                "scripts/store/income/income.management.js",
                "scripts/store/income/income.detail.js",
                "scripts/store/income/income.report.js"
            ]
        },{
            name: "incomedetail",
            files: [
                "scripts/store/incomedetail/incomedetail.jmodel.js",
                "scripts/store/incomedetail/incomedetail.jpageviewmodel.js",
                "scripts/store/incomedetail/incomedetail.jviewmodel.js",
                "scripts/store/incomedetail/incomedetail.jsviewmodel.js",
                "scripts/store/incomedetail/incomedetail.admin.js"
            ]
        },{
            name: "incomepromotion",
            files: [
                "scripts/store/incomepromotion/incomepromotion.jmodel.js",
                "scripts/store/incomepromotion/incomepromotion.jpageviewmodel.js",
                "scripts/store/incomepromotion/incomepromotion.jviewmodel.js",
                "scripts/store/incomepromotion/incomepromotion.jsviewmodel.js",
                "scripts/store/incomepromotion/incomepromotion.admin.js"
            ]
        },{
            name: "media",
            files: [
                "scripts/store/media/media.jmodel.js",
                "scripts/store/media/media.jpageviewmodel.js",
                "scripts/store/media/media.jviewmodel.js",
                "scripts/store/media/media.jsviewmodel.js",
                "scripts/store/media/media.admin.js"
            ]
        },{
            name: "product",
            files: [
                "scripts/store/product/product.jmodel.js",
                "scripts/store/product/product.jpageviewmodel.js",
                "scripts/store/product/product.jviewmodel.js",
                "scripts/store/product/product.jsviewmodel.js",
                "scripts/store/product/product.admin.js",
                "scripts/store/product/product.management.js"
            ]
        },{
            name: "promotion",
            files: [
                "scripts/store/promotion/promotion.jmodel.js",
                "scripts/store/promotion/promotion.jpageviewmodel.js",
                "scripts/store/promotion/promotion.jviewmodel.js",
                "scripts/store/promotion/promotion.jsviewmodel.js",
                "scripts/store/promotion/promotion.admin.js",
                "scripts/store/promotion/promotion.management.js"
            ]
        }]
    });
}

})();