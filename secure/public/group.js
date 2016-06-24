var adminApp = angular.module('adminApp');

adminApp.controller('groupCtrl', ['$scope', '$http', function($scope,$http){

	$scope.bsTableControl = {
            options: {
            	url:'GroupController/queryAll',
				rowStyle: function (row, index) {
			        return { classes: 'none' };
			    },
			    // toolbar: '#toolbar'
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
			        field: 'groupName',
			        title: '组名称'
			    }, {
			        field: 'price',
			        title: '备注'
			    }, {
			        field: 'actions',
			        title: '操作'
			    }],
			    onClickRow: function(row, $element){
			    	console.log('row', row);
			    }
            }
	}
	
}]);

