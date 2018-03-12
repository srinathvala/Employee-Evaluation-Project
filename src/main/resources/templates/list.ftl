<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Add Employee</span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="firstname">First Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.firstName" name="firstName" class="username form-control input-sm" placeholder="Enter First Name" required/>
                                <span style="color:red" ng-show="myForm.firstName.$dirty && myForm.firstName.$invalid">
  									<span ng-show="myForm.firstName.$error.required">First Name is required.</span>
  								</span>               
                            </div>
                        </div>
                    </div>
 					
 					 <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="lastname">Last Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.lastName" name="lastName" class="username form-control input-sm" placeholder="Enter Last Name" required/>
                                <span style="color:red" ng-show="myForm.lastName.$dirty && myForm.lastName.$invalid">
  									<span ng-show="myForm.lastName.$error.required">Last Name is required.</span>
  								</span>  
                            </div>
                        </div>
                    </div>
 					
 					<div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="middleinitial">Middle Initial </label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.middleName" name="middleInitial" class="username form-control input-sm" placeholder="Enter Middle Initial  name"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="email">Email Address </label>
                            <div class="col-md-7">
                                <input type="email" ng-model="ctrl.user.emailAddress" name="emailAddress" class="username form-control input-sm" placeholder="Enter Email Address " required />
                                <span style="color:red" ng-show="myForm.emailAddress.$dirty && myForm.emailAddress.$invalid">
  									<span ng-show="myForm.emailAddress.$error.required">Email Address is required.</span>
  									<span ng-show="myForm.emailAddress.$error.email">Invalid email address.</span>
  								</span>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="phonenumber">Phone Number</label>
                            <div class="col-md-7">
                                <input type="text" pattern="[0-9]*$" ng-model="ctrl.user.phoneNumber" name="phoneNumber" class="username form-control input-sm" placeholder="Enter Phone Number" onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>
                            </div>
                        </div>
                    </div>
                    
                     <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="Position Category">Position Category</label>
                             <!--<div ng-if='ctrl.user.positionCategory !== undefined' class="col-md-7">
                                <select  id="positionCategory" data-ng-model="ctrl.user.positionCategory">
								<option value="">-- Select Position Category --</option>
								 <option data-ng-repeat="positionCategory in ctrl.user.positionCategories" value="{{positionCategory.id}}">{{positionCategory.value}}</option>
								</select> 
								
                            </div> --->
                            
                            <div class="col-md-7">
                                <select  id="positionCategory" data-ng-model="ctrl.user.positionCategory">
								<option value="">-- Select Position Category --</option>
								 <option value="ind">Indirect</option>
    							<option value="dir">Direct</option>
    							<option value="pm">Program Manager</option>
    							<option value="dd">Director</option>
    							<option value="exe">Executive</option>
								</select>
								
                            </div>
                            
                        </div>
                    </div>
                 
                 <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="date hired">Date Hired </label>
                            <div class="col-md-7">
                                <input type="date" ng-model="ctrl.user.hiredDate" name="hiredDate" placeholder="yyyy-MM-dd"  required/>
                                <span style="color:red" ng-show="myForm.hiredDate.$dirty && myForm.hiredDate.$invalid">
  									<span ng-show="myForm.hiredDate.$error.required">Date Hired  is required.</span>
  								</span>  
                            </div>
                        </div>
                    </div>
                 
                 
                  <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="addressone">Address 1</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.address1" name="address1" class="username form-control input-sm" placeholder="Enter Address Line 1"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="addresstwo">Address 2</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.address2" name="address1" class="username form-control input-sm" placeholder="Enter Address Line 2"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="city">City</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.city" name="city" class="username form-control input-sm" placeholder="Enter City"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="State">State</label>
                            
                            <div class="col-md-7">
                                <select  id="state" data-ng-model="ctrl.user.state">
								<option value="">-- Select State --</option>
														<option value="AL">Alabama</option>
														<option value="AK">Alaska</option>
														<option value="AZ">Arizona</option>
														<option value="AR">Arkansas</option>
														<option value="CA">California</option>
														<option value="CO">Colorado</option>
														<option value="CT">Connecticut</option>
														<option value="DE">Delaware</option>
														<option value="DC">District Of Columbia</option>
														<option value="FL">Florida</option>
														<option value="GA">Georgia</option>
														<option value="HI">Hawaii</option>
														<option value="ID">Idaho</option>
														<option value="IL">Illinois</option>
														<option value="IN">Indiana</option>
														<option value="IA">Iowa</option>
														<option value="KS">Kansas</option>
														<option value="KY">Kentucky</option>
														<option value="LA">Louisiana</option>
														<option value="ME">Maine</option>
														<option value="MD">Maryland</option>
														<option value="MA">Massachusetts</option>
														<option value="MI">Michigan</option>
														<option value="MN">Minnesota</option>
														<option value="MS">Mississippi</option>
														<option value="MO">Missouri</option>
														<option value="MT">Montana</option>
														<option value="NE">Nebraska</option>
														<option value="NV">Nevada</option>
														<option value="NH">New Hampshire</option>
														<option value="NJ">New Jersey</option>
														<option value="NM">New Mexico</option>
														<option value="NY">New York</option>
														<option value="NC">North Carolina</option>
														<option value="ND">North Dakota</option>
														<option value="OH">Ohio</option>
														<option value="OK">Oklahoma</option>
														<option value="OR">Oregon</option>
														<option value="PA">Pennsylvania</option>
														<option value="RI">Rhode Island</option>
														<option value="SC">South Carolina</option>
														<option value="SD">South Dakota</option>
														<option value="TN">Tennessee</option>
														<option value="TX">Texas</option>
														<option value="UT">Utah</option>
														<option value="VT">Vermont</option>
														<option value="VA">Virginia</option>
														<option value="WA">Washington</option>
														<option value="WV">West Virginia</option>
														<option value="WI">Wisconsin</option>
														<option value="WY">Wyoming</option>
														
								</select>
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="zip">Zip Code</label>
                            <div class="col-md-7">
                                <input type="text" ng-pattern='/^\d{5}$/' ng-model="ctrl.user.zip" name="zip" class="username form-control input-sm" placeholder="Enter Zip"/>
                                <span style="color:red" ng-show="myForm.zip.$dirty && myForm.zip.$invalid">
  									<span ng-show="myForm.zip.$error">Invalid zip code</span>
  								</span>
                            </div>
                        </div>
                    </div>
                    
                     <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="activeflag">Active Flag</label>
                            <div class="col-md-7">
                                <input type="checkbox" ng-model="ctrl.user.active" name="activeFlag" class="username form-control input-sm"  required/>
                                <span style="color:red" ng-show="myForm.activeFlag.$dirty && myForm.activeFlag.$invalid">
  									<span ng-show="myForm.activeFlag.$error.required">Active Flag is required.</span>
  								</span>               
                            </div>
                        </div>
                    </div>
 
 
                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.user.$invalid || myForm.$pristine">
                            <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>    
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Employees </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Middle Initial</th>
                        <th>Email Address</th>
                        <th>Phone Number</th>
                        <th>Position Category</th>
                        <th>Date Hired </th>
                        <th>Address 1 </th>
                        <th>Address 2</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Zip Code</th>
                        <th>Active Flag</th> 
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="u in ctrl.getAllUsers()">
                        <td>{{u.id}}</td>
                        <td>{{u.firstName}}</td>
                        <td>{{u.lastName}}</td>
                        <td>{{u.middleName}}</td>
                        <td>{{u.emailAddress}}</td>
                        <td>{{u.phoneNumber}}</td>
                        <td>{{u.positionCategoryAsString}}</td>
                        <td>{{ u.hiredDate.replace('/Date(','').replace(')/','') | date:"MM/dd/yyyy" }}</td>
                        <td>{{u.address1}}</td>
                        <td>{{u.address2}}</td>
                        <td>{{u.city}}</td>
                        <td>{{u.state}}</td>
                        <td>{{u.zip}}</td>
                        <td>{{u.active}}</td>
                        <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
                        <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
                    </tr>
                    </tbody>
                </table>      
            </div>
        </div>
    </div>
</div>
