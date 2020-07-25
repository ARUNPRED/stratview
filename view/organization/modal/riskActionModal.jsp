<div class="modal fade" id="risk_action_desc_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel_1">Plan Description</h6>
				<button type="button" class="close" id="activClosePopup"
					data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			
			<div class="modal-body">
				<form id="riskActionmonitoringForm">
				<div class="row">
					<div class="form-group col-md-12" id="riskaction_id_wrapper" style="display: none">
						<label for="riskplan_id">ID</label>
						<input type="text" class="modal-custom-input" name="riskaction_id" id="riskaction_id" style="height: 38px !important; width: 98% !important;"/>
					</div>
				</div>
				
				<div class="row m-t-10">
                  <div class="form-group col-md-12">
                    <label for="meeting-name">Name</label>
                    <textarea class="modal-custom-textarea" rows="6" id="action_desc" name="action_desc" autocomplete="off"></textarea>
                  </div>
                </div>
					
				<div class="row m-t-10">
                  <div class="form-group col-md-6">
                    <label for="type">Status</label>
                    <select id="action_status" name="action_status" class="modal-custom-select" style="height: 38px !important;">
                      <option value="">Choose</option>
                      <option value="Open">Open</option>
                      <option value="Closed">Closed</option>
                    </select>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="kpi_start_end_date">Resolve By</label>
                    <i class="far fa-calendar input-calender-icon"></i>
                    <input type="text" class="modal-custom-input date_pickers_single" data-language="en" id="action_date" name="action_date" autocomplete="off" style="width: 95% !important; height: 38px !important;"/>
                  </div>
                </div>
				<input type="hidden" name="action" value="" />
				<input type="hidden" name="riskId" id="riskId" />
				<input type="hidden" name="riskMonitor_id" id="riskMonitor_id" />
				
				<div class="row">
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
                    <button class="btn custom-form-control btn-custom-primary actionsubmit">
                      Save
                    </button>
                  </div>
                </div>
                
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
								<span>Created By : </span><span id="riskActionCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="riskActionCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="riskActionUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="riskActionUpdatedByDate"></span>
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
	$("#riskActionmonitoringForm").validate({
		rules : {
			action_desc : {
				required : true
			},
			action_status : {
				required : true
			},
			action_date : {
				required : true
			}
		},
		messages : {
			required : "Name is required"
		},
		submitHandler : function(form) {
			handleRiskMonitorSave();
		}
	});
</script>