'use strict';
 
loginApp.controller('LoginController', ['$scope', '$window', 'LoginService', '$cookieStore', function ($scope, $window, LoginService, $cookieStore) {
 
        $scope.login = function () {
        	$cookieStore.remove('blogAccessed');
        	$cookieStore.remove('noticeAccessed');
        	console.log('login method called  -- user --- ' + $scope.username);
        	var promise = LoginService.validateUser($scope.username, $scope.password);
        	promise.then(
        		function(data) {
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
