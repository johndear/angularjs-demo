var adminApp = angular.module('adminApp');

adminApp.controller('userCtrl', ['$scope', '$http', function($scope,$http){

	$scope.bsTableControl = {
            options: {
            	url:'UserController/queryAll',
				rowStyle: function (row, index) {
			        return { classes: 'none' };
			    },
			    cache: false,
			    height: 400,
			    striped: true,
			    pagination: false,
			    pageSize: 5,
			    pageList: [5, 10, 25, 50, 100, 200],
			    search: true,
			    showColumns: true,
			    showRefresh: false,
			    minimumCountColumns: 2,
			    clickToSelect: false,
			    showToggle: true,
			    maintainSelected: true,
			    columns: [{
			        field: 'id',
			        title: 'ID'
			    }, {
			        field: 'userName',
			        title: '用户名'
			    },{
			        field: 'loginName',
			        title: '登录名'
			    }],
			    onClickRow: function(row, $element){
			    	console.log('row', row);
			    }
            }
	}
	
	
}]);

