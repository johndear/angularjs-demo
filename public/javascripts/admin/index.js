var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable']);

adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'Application/welcome',
            controller: 'listCtrl'
        })

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);