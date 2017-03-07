<html>
	 <head>
        <meta charset="utf-8" />

		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
        <link rel="stylesheet" href="static/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="static/css/style.css"/>
        <script src="static/js/angular.js"></script>
        <script src="static/js/angular-route.js"></script>
        
        <script src="static/js/app.js"></script>
        <script src="static/js/controller/loginCtrl.js"></script>
        <script src="static/js/controller/homeCtrl.js"></script>
        <script src="static/js/controller/blogCtrl.js"></script>
        <script src="static/js/service/loginService.js"></script>
    </head>
    <body>
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>                        
			      </button>
			      <b><a class="navbar-brand" href="#">ATOS School of Technology</a></b>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			      </ul>
			    </div>
			  </div>
			</nav>
			
			<div class="container-fluid">
		  <div class="row content">
		    <div class="col-sm-3 sidenav">
		      <h4>Team-B Stories</h4>
		      <ul class="nav nav-pills nav-stacked">
		        <li class="active"><a href="#/home">Homepage</a></li>
		        <li><a href="#/admission/inquiry">Inquiry</a></li>
		        <li><a href="#/blog/create">Blog</a></li>
		      </ul>
		

		    </div>
		
		    <div class="col-sm-9">
		    <h3>template comes here</h3>
				<ng-view></ng-view>
		    </div>
		  </div>
		</div>
		
			<!-- <div id="main" ng-app="mainApp" ng-controller="HomeController">
				<div id="left" style="padding:10px;float:left; width:20%">
					<div class="container">
					   <div>
					     <div class="sidebar" sidebar-directive="state" ng-click="$event.preventDefault()">       
					       <ul class="navigation">
					         <li class="navigation-items"> <a ng-href="#" ng-click="openPage('enquiry')">Enquiry Details</a> 
					         </li>
					         <li class="navigation-items"> <a ng-href='#' ng-click="openPage('blog')">College Blog</a> 
					         </li>
					         <li class="navigation-items"> <a ng-href="#" ng-click="openPage('notice')">College Notice</a> 
					         </li>
					         <li class="navigation-items"> <a ng-href="#">Faculty Details</a> 
					         </li>
					         <li class="navigation-items"> <a ng-href="#">Course Details</a> 
					         </li>
					       </ul>
					     </div>
					   </div>
					 </div>
				</div>
				<div id="right" style="padding:10px;float:right; width:80%">
					<div id="content">
						<div>
			                <div ng-view></div>
			            </div>
					</div>
				</div>
			</div> -->
	</body>
</html>