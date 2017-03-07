
<html ng-app="loginApp">
    <head>
        <meta charset="utf-8" />

        <link rel="stylesheet" href="static/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="static/css/style.css"/>
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
		      <b><a class="navbar-brand" href="#">ATOS College of Technology</a></b>
		    </div>
		  </div>
		</nav>
		
        <div style="padding:1em;">
            <div>
                <div ng-include="'login'"></div>
            </div>
        </div>

        <script src="static/js/angular.js"></script>
        <script src="static/js/angular-route.js"></script>
        <script src="static/js/angular-cookies.js"></script>
        
        <script src="static/js/app.js"></script>
        <script src="static/js/controller/loginCtrl.js"></script>
        <script src="static/js/controller/homeCtrl.js"></script>
        <script src="static/js/service/loginService.js"></script>
       
    </body>

</html>