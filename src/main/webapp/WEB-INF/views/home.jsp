<!doctype html>
<html>
	<head>
		<title>TechStudio Application</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- JS -->
        <script src="static/js/angular.js"></script>
        <script src="static/js/angular-route.js"></script>
        <script src="static/js/angular-cookies.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<script src="static/js/dirPagination.js"></script>
		<script src="static/js/app.js"></script>
        <script src="static/js/controller/loginCtrl.js"></script>
        <script src="static/js/controller/homeCtrl.js"></script>
        <script src="static/js/controller/blogCtrl.js"></script>
        <script src="static/js/controller/noticeCtrl.js"></script>
        <script src="static/js/controller/enquiryCtrl.js"></script>
        <script src="static/js/service/loginService.js"></script>
        <script src="static/js/service/blogService.js"></script>
        <script src="static/js/service/noticeService.js"></script>
        <script src="static/js/service/enquiryService.js"></script>
        
        
		<!-- CSS -->
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
		<link rel="stylesheet" href="static/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="static/css/style.css"/>
		<link rel="stylesheet" href="static/css/editor.css"/>

	</head>
	<body ng-app="mainApp" ng-controller="HomeController">

		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>                        
		      </button>
		      <b><a class="navbar-brand" href="#">ATOS College of Technology</a></b>
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar" ng-click="$event.preventDefault()">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="#" ng-click="logOut()"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		  
		
		<div class="container-fluid">
		  <div class="row content">
		    <div class="col-sm-3 sidenav" ng-click="$event.preventDefault()">
		      <ul class="nav nav-pills nav-stacked">
		      	<li class="active"><a href="#">College Special</a></li>
		        <li><a ng-href="#" ng-click="openPage('')">Homepage</a></li>
		        <li><a ng-href='#' ng-click="openPage('blog')">College Blog</a></li>
		        <li><a ng-href="#" ng-click="openPage('notice')">College Notice</a> </li>
		        <li><a ng-href="#" ng-click="openPage('enquiryForm')">Enquiry Form</a></li>
		        <li><a ng-href="#" ng-click="openPage('enquiryList')">Enquiry List</a></li>
		      </ul>
		    </div>
		
		    <div class="col-sm-9">
				<ng-view></ng-view>		    
		    </div>
		  </div>
		</div>
		
		<footer class="container-fluid">
		  <p>Footer Text</p>
		</footer>
		
	</body>
</html>