	<div class="container" ng-controller="BlogController">
	  <h3>College Blog</h3>

	  <form name="blogForm">

	  	<div id="createForm">
		    <div class="form-group">
		      <label for="blogTitle">Blog Title:</label>
		      <input class="form-control" placeholder="Enter Blog Title" id="blogTitle" name="blogTitle" ng-model="collegeBlog.blogTitle" required>
		    </div>
	
		    <div class="form-group">
			    <span style="color:red" ng-show="blogForm.blogTitle.$dirty && blogForm.blogTitle.$invalid">
					<span ng-show="blogForm.blogTitle.$error.required">Blog Title is required.</span>
				</span>
			</div>
			
		    <div class="form-group">
		      <label for="blogStory">Blog Story:</label>
		      <textarea ng-model="collegeBlog.blogStory" id="blogStory" name="blogStory" rows="8" cols="50" placeholder="Enter Blog Story"
		                        class="form-control input-no-width rounded shaded left clearboth" required>
			  </textarea>
		    </div>
		    <div class="form-group">
			    <span style="color:red" ng-show="blogForm.blogStory.$dirty && blogForm.blogStory.$invalid">
					<span ng-show="blogForm.blogStory.$error.required">Blog Story is required.</span>
				</span>
			</div>
			
		    <button type="button" ng-click="blogSubmit()" class="btn btn-primary" ng-disabled="blogForm.blogTitle.$invalid || blogForm.blogStory.$invalid">Submit</button>
		    <button type="button" ng-click="blogRefresh()" class="btn btn-primary" >Refresh</button>
	    </div>
	    
	    <div class="panel panel-default" style="padding:1em;">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Blogs </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Blog ID.</th>
							<th>Blog Title</th>
							<th>Blog Story</th>
							<th width="30%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="blog in blogList">
							<td><span ng-bind="blog.blogId"></span></td>
							<td><span ng-bind="blog.blogTitle"></span></td>
							<td><span ng-bind="blog.blogStory"></span></td>
							<td>
								<button type="button" ng-click="blogEdit(blog.blogId)" class="btn btn-success custom-width">Edit</button>
								<button type="button" ng-click="blogRemove(blog.blogId)" class="btn btn-danger custom-width">Remove</button>
								<button type="button" class="btn btn-danger custom-width" confirmed-click="blogRemove(blog.blogId)" ng-confirm-click="Would you like to Remove blog?">Remove1</button>
								
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	    
	  </form>
	     
	</div>
