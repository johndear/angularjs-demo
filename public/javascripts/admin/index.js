

var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable']);

// 对ajax http进行监控。添加拦截器，对request和response做前置和后置处理
adminApp.factory('errorInterceptor',function($q,$location,$rootScope){
	return {
		'responseError': function(rejection) {
			// 如果返回403，就跳转到没有权限访问的页面 
			// 现在已经改为后台跳转，这样做url不会改变，只需要设置权限后刷新当前页面就可以访问了
			if(rejection.status>=400 && rejection.status<500){
//				alert('access dead!');
//				$location.path('/accessDenied');
			}
		    return $q.reject(rejection);
		}
	};
});
adminApp.config(function($httpProvider){
	$httpProvider.interceptors.push('errorInterceptor');
});

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'Application/welcome',
            controller: 'listCtrl'
        }).when('/accessDenied', {
            templateUrl: 'LocalSecure/accessDenied'
        }).when('/resource', {
            templateUrl: 'ResourceController/index',
            controller: 'resourceCtrl'
        }).when('/role', {
            templateUrl: 'RoleController/index',
            controller: 'roleCtrl'
        }).when('/group', {
            templateUrl: 'GroupController/index',
            controller: 'groupCtrl'
        }).when('/user', {
            templateUrl: 'UserController/index',
            controller: 'userCtrl'
        })

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);