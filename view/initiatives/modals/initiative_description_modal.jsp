<!-- #Start Initatives Desc PopUp --> 
<div class="modal fade initatives_description_popup" tabindex="-1"
	role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel">Initiative
					Description</h6>
				<button type="button" class="close" data-dismiss="modal" id="iniClosePopup"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="InitiativeForm">
					<div class="form-row">
						<div class="form-group mt-n2 col-md-2" id="Initiative_id_wrapper"
							style="display: none">
							<label for="Initiative_id">ID</label> <input type="text"
								class="form-control browser-default" name="Initiative_show_id"
								id="Initiative_show_id" placeholder="">
						</div>
						<input type="hidden" id="Initiative_id" name="Initiative_id">
						<div class="form-group mt-n2 col-md-10">
							<label for="Initiative_name">Name</label> <input type="text"
								class="form-control browser-default" name="Initiative_name"
								id="Initiative_name" placeholder="" autocomplete="off">
						</div>
					</div><hr />
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="Initiative_description">Description</label>
							<textarea class="form-control browser-default"
								name="Initiative_description" id="Initiative_description"
								placeholder="" cols="" rows="6" autocomplete="off"></textarea>
						</div>
					</div><hr />
					<div class="form-row">
						<div class="form-group browser-default col-md-6">
							<label for="Initiative_owner">Owner</label> 
							<select id="Initiative_owner" name="Initiative_owner" class="form-control">
								
							</select>
						</div>
						
						<div class="form-group browser-default col-md-6">
							<span id="impact_hidden" data-impact_hidden=""></span>
							<label for="impact">Impact</label> 
							<select id="impact" name="impact" class="form-control">
								
							</select>
						</div>
						</div><hr />
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="Initiative_start_end_date">Planned Start Date/End Date</label> 
								<input type="text" class="form-control browser-default datepicker-here"
									name="Initiative_start_end_date" data-range="true" data-multiple-dates-separator=" - " data-language="en" 
                                 id="Initiative_start_end_date" autocomplete="off">
							</div>
							<div class="form-group col-md-6">
                    			<label for="actual_start_end_date">Actual Start Date/End Date</label>
                    			<input type="text" class="form-control browser-default datepicker-here"
                      				data-range="true" name="Actual_start_end_date" id="Actual_start_end_date" data-multiple-dates-separator=" - " data-language="en" id="air-date-sub-init" autocomplete="off"/>
                  			</div>						
						</div><hr />
						<div class="form-row">
                  			<div class="form-group col-md-12">
                    			<label for="">Manual Status</label>
                  			</div>
                  			<div class="form-group col-md-4">
	                  			<div class="radio icheck-success">
	                      			<input type="radio" id="primary1" value="success" name="primary"/>
	                      			<label for="primary1"></label>
	                    		</div>
                  			</div>
                  			<div class="form-group col-md-4">
                    			<div class="radio icheck-warning">
                      				<input type="radio" id="primary2" value="warning" name="primary" />
                      				<label for="primary2"></label>
                    			</div>
                  			</div>
		                  	<div class="form-group col-md-4">
		                    	<div class="radio icheck-danger">
		                      		<input type="radio" id="primary3" value="danger" name="primary" />
		                      		<label for="primary3"></label>
		                    	</div>
		                  	</div>
		                </div>
		                <hr />
		                <div class="form-row">
							<div class="form-group col-md-6">
								<label for="Initiative_start_end_date">Status</label> <select
									id="statusType" name="statusType" class="form-control browser-default mt-1">
									<option value="">Choose</option>
									<option value="manual">Manual</option>
									<option value="weighted">Weighted</option>
									<option value="first">First</option>
									<option value="second">Second</option>
									<option value="third">Third</option>
									<option value="fourth">Fourth</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label for="Initiative_progress">Progress (%)</label> <input
									type="number" min="0" max="100" class="form-control browser-default"
									name="Initiative_progress" id="Initiative_progress"
									placeholder="" value="0">
							</div>	
		                </div>
		                <hr />
						<div class="form-row mt-2">
							<label for="kpi_fields" class="ml-2 mr-3">Data Fields</label>
							<ul class="d-flex flex-row flex-wrap ml-2">
								<li>
									<div class="form-check">
										<div class="form-check">
											<label class="form-check-label" id="actuallabel"> 
											<input id="actualId" class="form-check-input" type="checkbox" value="">
												Actual <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check">
											<label class="form-check-label" id="targetlabel"> <input id="targetId"
												class="form-check-input" type="checkbox" value="">
												Target <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check">
											<label class="form-check-label" id="budgetlabel"> <input id="budgetID"
												class="form-check-input" type="checkbox" value="">
												Budget <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check">
											<label class="form-check-label" id="forecastlabel"> <input id="forcastId"
												class="form-check-input" type="checkbox" value="">
												Forecast <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
							</ul>
						</div>
					<div class="form-row mt-2">
						<label for="kpi_fields" class="ml-2 mr-3">Amount</label>
						<ul class="d-flex flex-row flex-wrap ml-2">
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label" id="totallabel"> 
										<input id="Totalid" class="form-check-input" type="checkbox" value="">Total 
										<span class="form-check-sign"><span class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label" id="utilizedlabel"> <input id="Utilizedid"
											class="form-check-input" type="checkbox" value="">
											Utillized <span class="form-check-sign"> <span
												class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label" id="balancelabel"> <input id="Balanceid"
											class="form-check-input" type="checkbox" value="">
											Balance <span class="form-check-sign"> <span
												class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="form-line right">
						<button type="button" class="btn-default1 btn"
							data-dismiss="modal" aria-label="Close">Cancel</button>
						<button type="submit" class="initative_save_btn" value="Save">Save</button>
					</div>
					<input type="hidden" name="action" value="" />
					<input type="hidden" name="createdById" id="createdById" value="" />
				</form>
			</div>
			<hr>
			<div class="modal-footer">
				<div
					class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
					<div class="d-flex flex-row">
						<p class="kpi_audit">Audit</p>
					</div>
					<div class="d-flex flex-row">
						<div class="d-flex flex-column">
							<p>
								<span >Created By : </span><span id="createdBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="createdByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="updatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="updatedByDate"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- #END# Initatives Desc PopUp -->


<script>
	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
	
		$( "#InitiativeForm" ).validate({
		  rules: {
			  Initiative_name: {
		      required: true
		    },
		    Initiative_owner: {
		    	required: true
		    },
		    Initiative_id:{
		    	required: true
		    },
		    statusType :{
		    	required : true
		    },
		    Initiative_start_end_date:{
		    	required: true
		    },
		    Initiative_progress: {
			      required: true,
			      digits: true,
			      min: 0,
			      max: 100
			}
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	handleInitiativeSave();
	        }
		});
		
</script>