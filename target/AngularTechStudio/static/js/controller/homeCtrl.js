'use strict';
 
mainApp.controller('HomeController', ['$scope', '$window', '$location', '$cookieStore', function ($scope, $window, $location, $cookieStore) {
   	console.log('Home Controller');
   	$scope.openPage = function(val) {
   		console.log('page val -- >> ' + val);
   		if(val == 'blog') {
   			console.log('inside blog');
   			$location.path('/blog');   			
   		} else if(val == 'enquiryList') {
   			console.log('inside enquiry list');
   			$location.path('/enquiry');
   		} else if(val == 'enquiryForm') {
   			console.log('inside enquiry form');
   			$location.path('/enquiryForm');
   		} else if(val == 'enquiryList') {
   			console.log('inside enquiry form');
   			$location.path('/enquirylist');
   		} else if(val == 'notice') {
   			console.log('inside notice');
   			$location.path('/notice');
   		} else {
   			$location.path('/');
   		}
   	}
   	
   	$scope.logOut = function() {
   		console.log('logout');
   		var app = 'AngularTechStudio';
   		var url = $location.protocol() + '://' + $location.host() + ':' + $location.port() + '/' + app;
   		console.log('url -- >> ' + url);
   		$cookieStore.remove('blogAccessed');
   		$cookieStore.remove('noticeAccessed');
   		$window.location.href = url;
   	}
}]);