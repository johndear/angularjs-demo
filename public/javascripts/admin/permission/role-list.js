var adminApp = angular.module('adminApp');

adminApp.controller('roleCtrl', ['$scope', function($scope){

	$scope.bsTableControl = {
            options: {
            	url:'public/data/data.json',
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
			        field: 'name',
			        title: '角色名称'
			    }, {
			        field: 'price',
			        title: '备注'
			    }, {
			        field: 'opt',
			        title: '操作'
			    }]
            }
	}
	
	$scope.bsTableControl2 = {
            options: {
            	url:'public/data/data.json',
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
			        field: 'name',
			        title: '资源名称'
			    }, {
			        field: 'price',
			        title: '操作'
			    }]
            }
	}
	
}]);

