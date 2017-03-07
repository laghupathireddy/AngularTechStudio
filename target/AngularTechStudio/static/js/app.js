'use strict';

var loginApp = angular.module('loginApp', ['ngCookies']);

var mainApp = angular.module('mainApp', ['ngRoute', 'ngCookies', 'angularUtils.directives.dirPagination']);

mainApp.config(['$routeProvider', function($routeProvider) {
	console.log('routing main app');

        $routeProvider
                .when('/', {
                	//template : "<h1>This is the Right  panel</h1><p>Click on any link on the left panel, the related functionality will be displayed here</p>"
                	templateUrl: 'info'
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
                	controller: 'EnquiryListController',
                	templateUrl: 'enquiry'
                })
                .when('/notice', {
                	controller: 'NoticeController',
                	templateUrl: 'notice'
                })
                .when('/enquiryForm', {
                	controller: 'EnquiryController',
                	templateUrl: 'enquiryForm'
                })
                
                .otherwise({
                	template : "<h1>This is the Right  panel</h1>"
                		});
    }]);