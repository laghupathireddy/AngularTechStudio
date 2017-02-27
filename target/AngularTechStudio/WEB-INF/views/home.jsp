<html>
	 <head>
        <meta charset="utf-8" />

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
	    <div>
			<div>
			  	<div class = "page-header">
			  		<div class="container">   
					   <h2>
					      Angular JS Sample Application 
					      <small>This application is implemented as part of TechStudio Training</small>
					   </h2>
					</div>
				</div>
			</div>
		
			<div id="main" ng-app="mainApp" ng-controller="HomeController">
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
			</div>
		</div>
	</body>
</html>