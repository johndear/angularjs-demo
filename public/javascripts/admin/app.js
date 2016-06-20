

var adminApp = angular.module('adminApp', ['ngRoute']);

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'views/admin/permission/welcome.html',
            controller: 'ListCtrl'
        }).when('/resource', {
            templateUrl: 'views/admin/permission/resource-list.html',
            controller: 'ListCtrl'
        }).when('/role', {
            templateUrl: 'views/admin/permission/role-list.html',
            controller: 'ListCtrl'
        })

}]);

adminApp.controller('ListCtrl', ['$scope', function($scope){
	
	alert(1);
	
}]);