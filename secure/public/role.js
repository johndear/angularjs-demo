var adminApp = angular.module('adminApp');

adminApp.controller('roleCtrl', function($scope,$http, $uibModal, $log){

	$scope.abc1 = [ {
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
	
	$scope.test = function(){
		console.log($scope.selectNode);
	}
	
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
			        	return '<a onclick="showResource('+ $scope.selectNode +')">分配资源</a>'
			        }
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
  $scope.items = ['item1', 'item2', 'item3'];
  $scope.animationsEnabled = true;
  $scope.open = function (size) {
	  var modalInstance = $uibModal.open({
	      animation: $scope.animationsEnabled,
	      templateUrl: 'myModalContent.html',
	      controller: 'ModalInstanceCtrl',
	      size: size,
	      resolve: {
	        items: function () {
	          return $scope.items;
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
adminApp.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, items) {

	  $scope.items = items;
	  $scope.selected = {
	    item: $scope.items[0]
	  };
	
	  $scope.ok = function () {
		  console.log('ok...');
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



