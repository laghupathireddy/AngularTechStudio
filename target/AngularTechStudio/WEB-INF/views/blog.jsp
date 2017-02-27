	<div class="container" ng-controller="BlogController">
	  <h2>College Blog</h2>
	  <form name="blogForm">
	  
	    <div class="form-group">
	      <label for="blogTitle">Blog Title:</label>
	      <input class="form-control" placeholder="Enter Blog Title" id="blogTitle" name="blogTitle" ng-model="blogTitle" required>
	    </div>

	    <div class="form-group">
		    <span style="color:red" ng-show="blogForm.blogTitle.$dirty && blogForm.blogTitle.$invalid">
				<span ng-show="blogForm.blogTitle.$error.required">Blog Title is required.</span>
			</span>
		</div>
		
	    <div class="form-group">
	      <label for="blogStory">Blog Story:</label>
	      <textarea ng-model="blogStory" id="blogStory" name="blogStory" rows="8" cols="50" placeholder="Enter Blog Story"
	                        class="form-control input-no-width rounded shaded left clearboth" required>
		  </textarea>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="blogForm.blogStory.$dirty && blogForm.blogStory.$invalid">
				<span ng-show="blogForm.blogStory.$error.required">Blog Story is required.</span>
			</span>
		</div>
		
	    <button type="submit" class="btn btn-primary" ng-disabled="blogForm.blogTitle.$invalid || blogForm.blogStory.$invalid">Submit</button>
	  </form>
	     
	</div>
