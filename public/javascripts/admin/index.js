

var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable']);

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'Application/welcome',
            controller: 'listCtrl'
        }).when('/resource', {
            templateUrl: 'views/admin/permission/resource-list.html',
            controller: 'roleCtrl'
        }).when('/role', {
            templateUrl: 'RoleController/index',
            controller: 'roleCtrl'
        }).when('/group', {
            templateUrl: 'views/admin/permission/role-list.html',
            controller: 'roleCtrl'
        })

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);