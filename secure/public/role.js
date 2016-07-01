var adminApp = angular.module('adminApp');

adminApp.controller('roleCtrl', function($scope,$http, $uibModal, $log, allResources){
	allResources = allResources.splice(0, allResources.length);

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
			        title: '操作',
			        formatter:function(value, row, index) {
			        	return '<a onclick="javascript:void(0);">分配资源</a>'
			        }
			    }],
			    onClickCell: function(field, value, row, $element){
			    	if(field=='opt'){
			    		$scope.open();
			    	}
			    },
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
//				    detailView: true,
//				    detailFormatter:function(index, row, element) {
//				    	return '';
//				    },
				    columns: [{
				        field: 'name',
				        title: '资源名称'
				    },{
				        field: 'actions',
				        title: '操作名称',
				        formatter:function(value, row, index) {
				        	if(value!=undefined){
				        		if(value.endWith(',')){
				        			value = value.substring(0, value.length-1);
				        		}
				        		var checkBoxList = '';
				        		// 资源所有操作
				        		var actions = value.split(',');
				        		// 资源已授权操作
				        		if(row.authActions!=undefined){
				        			var authActions = row.authActions.split(',');
				        		}
				        		for(var i in actions){
				        			var _value = actions[i].split(':')[0];
				        			var _text = actions[i].split(':')[1];
				        			// 默认选中已授权操作
				        			var authed = false;
				        			for(var j in authActions){
				        				if(_value == authActions[j]){
				        					authed = true;
				        				}
				        			}
				        			checkBoxList +=' <input type="checkbox" value="'+ _value +'" '+ (authed? 'checked':'') +'>' + _text;
				        		}
				        		return checkBoxList;
				        	}
				        	return value;
					    } 
				    },{
				        field: 'authActions',
				        title: '已授权操作'
				    }]
	            }
		}
		$scope.$apply($scope.bsTableControl2);
	}
	
  // 弹出框事件
  $scope.open = function (size) {
	  var modalInstance = $uibModal.open({
	      templateUrl: 'myModalContent.html',
	      controller: 'ModalInstanceCtrl',
	      animation: true,
	      size: size,
	      resolve: {
	    	resourceList: function () {
	    		return allResources;
	        }
	      }
	  });

	    modalInstance.result.then(function (selectedItem) {
	       $scope.selected = selectedItem;
	    }, function () {
	       $log.info('Modal dismissed at: ' + new Date());
	    });
  };

  $scope.toggleAnimation = function () {
    $scope.animationsEnabled = !$scope.animationsEnabled;
  };
  
});

// 弹出框页面controller
adminApp.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, resourceList) {
	
	  $scope.resources = resourceList;
	  $scope.selected = {
	    item: $scope.resources[0]
	  };
	
	  $scope.ok = function () {
		  console.log('ok...');
		  console.log($scope.selectNode);
		  $uibModalInstance.close($scope.selected.item);
	  };
	
	  $scope.cancel = function () {
		  console.log('cancel...');
		  $uibModalInstance.dismiss('cancel');
	  };
});

String.prototype.endWith=function(str){     
  var reg=new RegExp(str+"$");     
  return reg.test(this);        
}



