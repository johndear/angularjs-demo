var adminApp = angular.module('adminApp');

adminApp.controller('roleCtrl', ['$scope', '$http', function($scope,$http){

	$scope.bsTableControl = {
            options: {
            	url:'RoleController/query',
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
			        field: 'roleName',
			        title: '角色名称'
			    }, {
			        field: 'price',
			        title: '备注'
			    }, {
			        field: 'opt',
			        title: '操作'
			    }],
			    onClickRow: function(row, $element){
//			    	console.log('row', row);
			    	getResourceAction(row.id);
			    }
            }
	}
	
	$scope.bsTableControl2 = {
            options: {
            	data: [],
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
			    },{
			        field: 'actions',
			        title: '资源名称'
			    }]
            }
	}
	
	function getResourceAction(roleId){
		$scope.bsTableControl2 = {
	            options: {
	            	url:'ResourceController/query?roleId='+roleId,
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
				    },{
				        field: 'actions',
				        title: '资源名称'
				    }]
	            }
		}
		$scope.$apply($scope.bsTableControl2);
	}
	
}]);

