

var adminApp = angular.module('adminApp', ['ngRoute', 'bsTable', 'ui.bootstrap']);

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

// TODO 怎么把跟secure有关的js，抽成独立的js。并且把main.html中依赖的js
adminApp.config(['$routeProvider', function($routeProvider) {
	
        $routeProvider.when('/', {
            templateUrl: 'SecureApplication/welcome',
            controller: 'listCtrl'
        }).when('/resource', {
            templateUrl: 'ResourceController/index',
            controller: 'resourceCtrl'
        }).when('/role', {
            templateUrl: 'RoleController/index',
            controller: 'roleCtrl',
            resolve:{
            	allResources: function(){
            		return [ {
            			id : 1,
            			pId : 0,
            			name : "普通的父节点",
            			t : "我很普通，随便点我吧",
            			open : true
            		}, {
            			id : 11,
            			pId : 1,
            			name : "叶子节点 - 1",
            			t : "我很普通，随便点我吧"
            		}, {
            			id : 12,
            			pId : 1,
            			name : "叶子节点 - 2",
            			t : "我很普通，随便点我吧"
            		}, {
            			id : 13,
            			pId : 1,
            			name : "叶子节点 - 3",
            			t : "我很普通，随便点我吧"
            		}, {
            			id : 2,
            			pId : 0,
            			name : "NB的父节点",
            			t : "点我可以，但是不能点我的子节点，有本事点一个你试试看？",
            			open : true
            		}, {
            			id : 21,
            			pId : 2,
            			name : "叶子节点2 - 1",
            			t : "你哪个单位的？敢随便点我？小心点儿..",
            			click : false
            		}, {
            			id : 22,
            			pId : 2,
            			name : "叶子节点2 - 2",
            			t : "我有老爸罩着呢，点击我的小心点儿..",
            			click : false
            		}, {
            			id : 23,
            			pId : 2,
            			name : "叶子节点2 - 3",
            			t : "好歹我也是个领导，别普通群众就来点击我..",
            			click : false
            		}, {
            			id : 3,
            			pId : 0,
            			name : "郁闷的父节点",
            			t : "别点我，我好害怕...我的子节点随便点吧...",
            			open : true,
            			click : false
            		}, {
            			id : 31,
            			pId : 3,
            			name : "叶子节点3 - 1",
            			t : "唉，随便点我吧"
            		}, {
            			id : 32,
            			pId : 3,
            			name : "叶子节点3 - 2",
            			t : "唉，随便点我吧"
            		}, {
            			id : 33,
            			pId : 3,
            			name : "叶子节点3 - 3",
            			t : "唉，随便点我吧"
            		} ];
            	}
            }
        }).when('/group', {
            templateUrl: 'GroupController/index',
            controller: 'groupCtrl'
        }).when('/user', {
            templateUrl: 'UserController/index',
            controller: 'userCtrl'
        });

}]);

adminApp.controller('listCtrl', ['$scope', function($scope){
	
	console.log('welcom...');
	
}]);