	<div class="container" ng-controller="NoticeController">
	  <h3>College Notice</h3>
	  <form name="noticeForm">
	  
	    <div class="form-group">
	      <label for="noticeTitle">Notice Title:</label>
	      <input class="form-control" placeholder="Enter Notice Title" id="noticeTitle" name="noticeTitle" ng-model="noticeTitle" required>
	    </div>

	    <div class="form-group">
		    <span style="color:red" ng-show="noticeForm.noticeTitle.$dirty && noticeForm.noticeTitle.$invalid">
				<span ng-show="noticeForm.noticeTitle.$error.required">Notice Title is required.</span>
			</span>
		</div>
		
	    <div class="form-group">
	      <label for="noticeContent">Notice Content:</label>
	      <textarea ng-model="noticeContent" id="noticeContent" name="noticeContent" rows="8" cols="50" placeholder="Enter Notice Content"
	                        class="form-control input-no-width rounded shaded left clearboth" required>
		  </textarea>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="noticeForm.noticeContent.$dirty && noticeForm.noticeContent.$invalid">
				<span ng-show="noticeForm.noticeContent.$error.required">Notice Content is required.</span>
			</span>
		</div>
		
		<div class="form-group">
	      	<label for="noticeDate">Notice Date:</label>
			<input type="date" id="noticeDate" name="noticeDate" ng-model="noticeDate" placeholder="yyyy-MM-dd" min="2010-01-01" max="2099-12-31" required />
		</div>
		<div class="form-group">
		    <span style="color:red" ng-show="noticeForm.noticeDate.$dirty && noticeForm.noticeDate.$invalid">
				<span>Notice Date is Invalid.</span>
			</span>
		</div>
		
	    <button type="submit" class="btn btn-primary" ng-disabled="noticeForm.noticeTitle.$invalid || noticeForm.noticeContent.$invalid ||
	    	noticeForm.noticeDate.$invalid">Submit</button>
	  </form>
	     
	</div>
