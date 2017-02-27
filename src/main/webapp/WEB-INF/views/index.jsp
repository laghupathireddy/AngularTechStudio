<h1>This is index html file</h1>

<html ng-app="loginApp">
    <head>
        <meta charset="utf-8" />

        <link rel="stylesheet" href="static/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="static/css/style.css"/>
    </head>
    <body>

        <div>
            <div>
                <div ng-include="'login'"></div>
            </div>
        </div>

        <script src="static/js/angular.js"></script>
        <script src="static/js/angular-route.js"></script>
        
        <script src="static/js/app.js"></script>
        <script src="static/js/controller/loginCtrl.js"></script>
        <script src="static/js/controller/homeCtrl.js"></script>
        <script src="static/js/service/loginService.js"></script>
       
    </body>

</html>