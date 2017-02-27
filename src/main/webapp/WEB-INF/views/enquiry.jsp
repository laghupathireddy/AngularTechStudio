	<div class="container" ng-controller="EnquiryController">
	  <h2>College Enquiry Form</h2>
	  <form name="enqForm">
	  
	    <div class="form-group">
	      <label for="enqName">Enquirer Name:</label>
	      <input class="form-control" placeholder="Enter the Name of Enquirer" id="enqName" name="enqName" ng-model="enqName" required>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="enqForm.enqName.$dirty && enqForm.enqName.$invalid">
				<span ng-show="enqForm.enqName.$error.required">Enquirer Name is required.</span>
			</span>
		</div>
	    
	    <div class="form-group">
	      <label for="enqEmail">Enquirer Email Id:</label>
	      <input class="form-control" placeholder="Enter the E-mail of Enquirer" id="enqEmail" name="enqEmail" ng-model="enqEmail" required>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="enqForm.enqEmail.$dirty && enqForm.enqEmail.$invalid">
				<span ng-show="enqForm.enqEmail.$error.required">Enquirer Email is required.</span>
			</span>
		</div>
		
		<div class="form-group">
	      <label for="enqType">Enquiry Type:</label>
	      <select name="enqType" ng-model="enqType" required>
	      	  <option value="">-Select-</option>
		      <option value="Course">Course</option>
		      <option value="Facilities">Facilities</option>
		  </select>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="enqForm.enqType.$dirty && enqForm.enqType.$invalid">
				<span ng-show="enqForm.enqType.$error.required">Enquiry Type is required.</span>
			</span>
		</div>
	    
	    <div class="form-group">
	      <label for="enqContact">Enquirer Contact No:</label>
	      <input type="number" class="form-control" placeholder="Enter the Contact Number of Enquirer" id="enqContact" name="enqContact" ng-model="enqContact"
	      	ng-minlength="10" ng-maxlength="10" required>
	    </div>
	    <div class="form-group">
		    <span style="color:red" ng-show="enqForm.enqContact.$dirty && enqForm.enqContact.$invalid">
				<span ng-show="enqForm.enqContact.$error.required">Enquirer Contact Number is required.</span>
				<span ng-show="enqForm.enqContact.$invalid">Enquirer Contact Number is invalid.</span>
			</span>
		</div>

	    <div class="form-group">
	      <label for="enqContent">Enquiry Content:</label>
	      <textarea ng-model="enqContent" id="enqContent" name="enqContent" rows="8" cols="50" placeholder="Enter the Content of Enquiry"
	                        class="form-control input-no-width rounded shaded left clearboth">
		  </textarea>
	    </div>
	    
	    <div class="form-group">
	      <label for="enqContent">Allow to Contact on Mobile:</label>
	      <input type="checkbox" id="allowContactMobile" name="allowContactMobile" ng-model="allowContactMobile">
	    </div>
	    
		<button type="button" class="btn btn-primary">Reset</button>
	    <button type="submit" class="btn btn-primary" ng-disabled="enqForm.enqName.$invalid || enqForm.enqEmail.$invalid || 
	    	enqForm.enqType.$invalid || enqForm.enqContact.$invalid">Submit</button>
	    
	  </form>
	     
	</div>
