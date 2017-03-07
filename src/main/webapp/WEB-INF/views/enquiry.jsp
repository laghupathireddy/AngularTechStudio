	<div class="container" ng-controller="EnquiryListController">
	  <form name="enqListForm">
		  <div class="panel panel-default" style="padding:1em;">
		  	<div ng-show="showListdata">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<span class="lead">College Enquiry List </span>
				</div>
				<div class="tablecontainer">
					<table class="table">
				    	<thead>
				    		<tr>
					    		<td>Filter</td>
					    		<td><input ng-model="search.$" /></td>
				    		</tr>
				    	</thead>
				    </table>
					<table class="table table-hover" ng-click="$event.preventDefault()">
						<thead>
							<tr>
								<th>
									<a href="#" ng-click="orderByField='enquiryId'; reverseSort = !reverseSort">
										Enquiry ID.
										<span ng-show="orderByField == 'enquiryId'"><span ng-show="!reverseSort">^</span><span ng-show="reverseSort">v</span></span>
									</a>
								</th>
								<th>
									<a href="#" ng-click="orderByField='enquiryName'; reverseSort = !reverseSort">
										Enquirer Name
										<span ng-show="orderByField == 'enquiryName'"><span ng-show="!reverseSort">^</span><span ng-show="reverseSort">v</span></span>
									</a>
								</th>
								<th>
									<a href="#" ng-click="orderByField='enquiryEmail'; reverseSort = !reverseSort">
										Enquirer EmaiId
										<span ng-show="orderByField == 'enquiryEmail'"><span ng-show="!reverseSort">^</span><span ng-show="reverseSort">v</span></span>
									</a>
								
								</th>
								<th>
									<a href="#" ng-click="orderByField='enquiryContactNo'; reverseSort = !reverseSort">
										Enquirer ContactNo
										<span ng-show="orderByField == 'enquiryContactNo'"><span ng-show="!reverseSort">^</span><span ng-show="reverseSort">v</span></span>
									</a>
								
								</th>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate = "enq in enquiryList|orderBy:orderByField:reverseSort|filter:search:strict|itemsPerPage:5">
								<td><span ng-bind="enq.enquiryId"></span></td>
								<td><a href="" ng-click="viewEnqDetails(enq.enquiryId)"><span ng-bind="enq.enquiryName"></span></td>
								<td><span ng-bind="enq.enquiryEmail"></span></td>
								<td><span ng-bind="enq.enquiryContactNo"></span></td>
							</tr>
						</tbody>
					</table>
					<dir-pagination-controls
				        max-size="5"
				        direction-links="true"
				        boundary-links="true" >
		    		</dir-pagination-controls>
				</div>
			</div>
			<div ng-show="showDetaildata">
				<h3>Details of the Enquirer: {{enquiry.enquiryName}}</h3>
				<table class="table">
		      <tr>  
		      	  <td>Enquirer Name:</td>
			      <td>{{enquiry.enquiryName}}</td>
			  </tr>
		      <tr>
			      <td>Enquirer Email Id:</td>
			      <td>{{enquiry.enquiryEmail}}</td>
			  </tr>
			  <tr>
			      <td>Enquiry Type:</td>
			      <td>{{enquiry.enquiryType}}</td>
			  </tr>
		      <tr>
			      <td>Enquirer Contact No:</td>
			      <td>{{enquiry.enquiryContactNo}}</td>
		      </tr>
		      <tr>
			      <td>Enquiry Content:</td>
			      <td>{{enquiry.enquiryContent}}</td>
		      </tr>
		      <tr>
			      <td>Allow to Contact on Mobile:</td>
			      <td>{{enquiry.contactMobile}}</td>
		      </tr>
		      <tr>
			      <td align="center"><button class="btn btn-info" ng-click="gotoListScreen()">Back</button></td>
			      <td>&nbsp;</td>
		      </tr>
	      </table>
			</div>
		  </div>	    
	  </form>
	     
	</div>
