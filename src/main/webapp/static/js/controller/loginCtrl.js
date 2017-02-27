'use strict';
 
loginApp.controller('LoginController', ['$scope', '$window', 'LoginService', function ($scope, $window, LoginService) {
 
        $scope.login1 = function () {
        	console.log('login method called  -- user 11--- ' + $scope.username);
        	var data = LoginService.validateUser($scope.username, $scope.password);
        	console.log('data in controller --- ' + data);
        	if(data) {
        		$location.path('/home');        		
        	}
        	$scope.error = 'Invalid Username or Password';
        }
        
        $scope.login = function () {
        	console.log('login method called  -- user 22 --- ' + $scope.username);
        	var promise = LoginService.validateUser($scope.username, $scope.password);
        	promise.then(
        		function(data) {
        			console.log('data -- 22 --' + data);
        			if(data) {
        				//$location.path('/home');
        				//$location.url('/home');
        				$window.location.href = "home";
        				
        			} else {
        				$scope.error = 'Invalid Username or Password';
        			}
	        	},
			  	function(errorData) {
			  		console.log('errData -- ' + errorData);
			  		$scope.error = 'Invalid Username or Password';
			  	});
        }
    }]);
