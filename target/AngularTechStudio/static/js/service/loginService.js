'use strict';

loginApp.service('LoginService', function ($http, $q) {
	 var REST_SERVICE_URI = 'loginValidate/';
		 
		 this.validateUser = function (username,password) {
			 console.log('login method in service 22-- ' + username);
			 var user = {};
			 user.username = username;
			 user.password = password;
			 var promise = $http.post(REST_SERVICE_URI, user)
			 .then(function(response) {
					 console.log('in service -- ' + response.data);
					 return response.data;
				 });
			 return promise;
		 }
    });