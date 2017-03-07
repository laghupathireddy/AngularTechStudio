'use strict';

mainApp.service('BlogService', function ($http, $q) {
	 var REST_SERVICE_URI = 'blogList/';
		 
		 this.getBlogList = function () {
			 console.log('blog list method in service ');
			 var promise = $http.get(REST_SERVICE_URI)
			 .then(function(response) {
					 console.log('in blog list service -- ' + response.data);
					 return response.data;
				 });
			 return promise;
		 }
    });