'use strict';

var loginApp = angular.module('loginApp', []);

var mainApp = angular.module('mainApp', ['ngRoute']);

mainApp.config(['$routeProvider', function($routeProvider) {
	console.log('routing main app');

        $routeProvider
                .when('/', {
                	template : "<h1>This is the Right  panel</h1><p>Click on any link on the left panel, the related functionality will be displayed here</p>"
                })
                .when('/home', {
                	controller: 'HomeController',
                	templateUrl: 'home'
                })
                .when('/blog', {
                	controller: 'BlogController',
                	templateUrl: 'blog'
                })
                .when('/enquiry', {
                	controller: 'EnquiryController',
                	templateUrl: 'enquiry'
                })
                .when('/notice', {
                	controller: 'NoticeController',
                	templateUrl: 'notice'
                })

                .otherwise({
                	template : "<h1>This is the Right  panel</h1>"
                		});
    }]);