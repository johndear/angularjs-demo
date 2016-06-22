

var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable']);

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'views/admin/permission/welcome.html',
            controller: 'listCtrl'
        }).when('/resource', {
            templateUrl: 'views/admin/permission/resource-list.html',
            controller: 'roleCtrl'
        }).when('/role', {
            templateUrl: 'views/admin/permission/role-list.html',
            controller: 'roleCtrl'
        }).when('/role2', {
            templateUrl: 'TestController/test',
            controller: 'roleCtrl'
        })

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);