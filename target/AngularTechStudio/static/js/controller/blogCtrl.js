mainApp.controller('BlogController', ['$scope', 'BlogService', '$cookieStore', function ($scope, BlogService, $cookieStore) {
   	console.log('Blog Controller');
   	var blogAccessed = $cookieStore.get('blogAccessed');
   	console.log('blogAccessed -- >>' + blogAccessed);
   	if(blogAccessed != 'yes') {
   		var promise = BlogService.getBlogList();
   		promise.then(
   				function(data) {
   					console.log(data);
   					$scope.blogList = data;
   					$cookieStore.put('blogAccessed','yes');
   					$cookieStore.put('blogList', $scope.blogList);
   				},
   				function(errorData) {
   					$scope.error = 'Error occcured while accessing the blog screen';
   				});
   	} else {
   		var blogList = $cookieStore.get('blogList');
   		console.log('blogList -- >> ' + blogList);
   		$scope.blogList = blogList;
   	}
	
	$scope.blogRefresh = function() {
		$scope.collegeBlog = [];
		$scope.blogForm.blogTitle.$dirty = false;
		$scope.blogForm.blogStory.$dirty = false;
	}
	
	$scope.blogSubmit = function() {
		console.log($scope.collegeBlog);
		var blog = $scope.collegeBlog;
		var blogId = blog.blogId;
		console.log('blogId -- ' + blogId);
		if(typeof blogId != 'undefined' && blogId != '') {
			for(var blogIndex in $scope.blogList) {
				 var blog = $scope.blogList[blogIndex];
				 if(blog.blogId == blogId) {
					 blog.blogTitle = $scope.collegeBlog.blogTitle;
					 blog.blogStory = $scope.collegeBlog.blogStory;
				 }
			 }
		} else  {
			var blogId = getBlogId($scope.blogList);
			console.log('blogId -- >>' + blogId);
			$scope.collegeBlog.blogId = blogId;
			$scope.blogList.unshift($scope.collegeBlog);
		}
		$scope.collegeBlog = [];
		$scope.blogForm.blogTitle.$dirty = false;
		$scope.blogForm.blogStory.$dirty = false;
		$cookieStore.put('blogList', $scope.blogList);
	}
	
	function getBlogId(blogList)  {
		var count = 1;
		for(var blogIndex in blogList) {
			var blog = blogList[blogIndex];
			if(blog.blogId >= count) {
				count = blog.blogId + 1;
			}
		}
		return count;
	}
	
	 $scope.blogEdit = function (blogId) {
		 console.log('blogId edit -- ' + blogId);
		 for(var blogIndex in $scope.blogList) {
			 var blog = $scope.blogList[blogIndex];
			 if(blog.blogId == blogId) {
				 $scope.collegeBlog = angular.copy(blog);
			 }
		 }
     }
	 
	 $scope.blogRemove = function (blogId) {
		 console.log('blogId remove -- ' + blogId);
		 console.log('111 -- '+$scope.blogList);
		 for(var blogIndex in $scope.blogList) {
			 var blog = $scope.blogList[blogIndex];
			 if(blog.blogId == blogId) {
				 $scope.blogList.splice(blogIndex, 1);
			 }
		 }
		 console.log(' 222 -- ' + $scope.blogList);
		 $cookieStore.put('blogList', $scope.blogList);
     }
   	
}]);

mainApp.directive('ngConfirmClick', [
     function(){
    	 
         return {
             link: function (scope, element, attr) {
                 var msg = attr.ngConfirmClick || "Are you sure?";
                 var clickAction = attr.confirmedClick;
                 element.bind('click',function (event) {
                     if ( window.confirm(msg) ) {
                         scope.$eval(clickAction)
                     }
                 });
             }
         };
 }])

mainApp.controller('EnquiryController', ['$scope', '$location', function ($scope, $location) {
   	console.log('Enquiry Controller');
}]);
