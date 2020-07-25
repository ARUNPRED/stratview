<div class="modal fade" id="plan_desc_add_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel_1">Plan Description</h6>
				<button type="button" class="close" data-dismiss="modal" id="riskPlanClosePopup"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			
			<div class="modal-body">
				<form id="riskPlanForm">
					<div class="row">
  						<div class="form-group col-md-12" id="riskplan_id_wrapper" style="display: none">
    						<label for="riskplan_id">ID</label>
    						<input type="text" class="modal-custom-input" name="riskplan_id" id="riskplan_id" style="height: 38px !important; width: 98% !important;"/>
  						</div>
					</div>
            					
					<div class="row">
                  <div class="form-group col-md-12">
                    <label for="type">Action</label>
                    <select id="planaction" name="planaction" class="modal-custom-select" style="height: 40px !important;">
                      <option value="">Choose</option>
                      <option value="Avoid">Avoid</option>
                      <option value="Reduce">Reduce</option>
                      <option value="Share">Share</option>
                      <option value="Transfer">Transfer</option>
                      <option value="Accept">Accept</option>
                    </select>
                  </div>
                </div>
                <div class="row m-t-10">
                  <div class="form-group col-md-12">
                    <label for="meeting-name">Name</label>
                    <textarea class="modal-custom-textarea" name="riskplan_name" id="riskplan_name" rows="6" autocomplete="off"></textarea>
                  </div>
                </div>
                
				<div class="row m-t-10">
                  <div class="form-group col-md-6">
                    <label for="kpi_start_end_date">Resolve By</label>
                    <i class="far fa-calendar input-calender-icon" style="bottom: 8%;"></i>
                    <input type="text" class="modal-custom-input date_pickers_single" data-language="en" name="resolve_date" id="resolve_date" style="width: 96% !important; height: 38px !important;" autocomplete="off"/>
                  </div>
                  
                  <div class="form-group col-md-6">
                    <label for="meeting-name">Progress(%)</label>
                    <input type="number" min="0" max="100" name="riskplan_progress" class="modal-custom-input" id="riskplan_progress" style="height: 38px !important; width: 96% !important;" autocomplete="off"/>
                  </div>
                </div>
                <div class="row m-t-10">
                  <div class="form-group col-md-12">
                    <label for="type">Cause</label>
                    <select id="riskcause" name="riskcause" class="modal-custom-select" style="height: 40px !important;">
                      
                    </select>
                  </div>
                </div>
                
                <div class="row m-t-10">
                  <div class="form-group col-md-12">
                    <hr />
                  </div>
                  <div class="form-group col-lg-8 col-md-6 col-sm-12"></div>
                  <div class="form-group col-lg-2 col-md-3 col-sm-6" style="padding-right: 4px;">
                    <button type="button" class="btn custom-form-control btn-custom-secondary" data-dismiss="modal">
                      Cancel
                    </button>
                  </div>
                  <div class="form-group col-lg-2 col-md-3 col-sm-6" style="padding-left: 4px;">
                    <button class="btn custom-form-control btn-custom-primary" id="submitplanevent">
                      Save
                    </button>
                  </div>
                </div>
      			 <input type="hidden" name="action" value="" />
				 <input type="hidden" name="riskPlanCreatedById" id="activCreatedById" value="" />
				 <input type="hidden" name="riskId" id="riskId" />  
				</form>
			</div>
			
			<div class="modal-footer">
              <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                <div class="d-flex flex-row">
                  <p class="kpi_audit">Audit</p>
                </div>
                <div class="d-flex flex-row">
                  <div class="d-flex flex-column">
							<p>
								<span>Created By : </span><span id="riskPlanCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="riskPlanCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="riskPlanUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="riskPlanUpdatedByDate"></span>
							</p>
						</div>
                </div>
              </div>
            </div>
         
         </div>   
		</div>
	</div>
</div>

<script>
	jQuery.validator.setDefaults({
		debug : false,
		success : "valid"
	});
	$("#riskPlanForm").validate({
		rules : {
			planaction : {
				required : true
			},
			riskplan_name : {
				required : true
			},
			riskplan_progress : {
				required : true,
				digits: true,
				min:0,
				max:100
			},
			resolve_date : {
				required : true
			},
			riskcause : {
				required : true
			}
		},
		messages : {
			required : "Name is required"
		},
		submitHandler : function(form) {
			handleRiskPlanSave();
		}
	});
</script>