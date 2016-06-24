

var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable']);

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'Application/welcome',
            controller: 'listCtrl'
        }).when('/resource', {
            templateUrl: 'ResourceController/index',
            controller: 'resourceCtrl'
        }).when('/role', {
            templateUrl: 'RoleController/index',
            controller: 'roleCtrl'
        }).when('/group', {
            templateUrl: 'GroupController/index',
            controller: 'groupCtrl'
        })

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);