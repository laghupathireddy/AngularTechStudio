'use strict';
 
mainApp.controller('HomeController', ['$scope', '$location', function ($scope, $location) {
   	console.log('Home Controller');
   	$scope.openPage = function(val) {
   		console.log('page val -- >> ' + val);
   		if(val == 'blog') {
   			console.log('inside blog');
   			$location.path('/blog');   			
   		} else if(val == 'enquiry') {
   			console.log('inside enquiry');
   			$location.path('/enquiry');
   		} else if(val == 'notice') {
   			console.log('inside notice');
   			$location.path('/notice');
   		}
   	}
}]);