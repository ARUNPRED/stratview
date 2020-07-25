<div class="modal fade riskDetail_description_popup" tabindex="-1"
	role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel">Risk Description</h6>
				<button type="button" class="close" data-dismiss="modal" id="riskDetailClosePopup"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="riskDetailForm">
					<div class="row">
						<div class="form-group mt-n2 col-md-2" id="riskDetail_id_wrapper" style="display: none">
							<label for="Initiative_id">ID</label> 
							<input type="text" class="modal-custom-input" name="riskDetail_id" id="riskDetail_id" placeholder="" style="width: 97% !important;">
						</div>
						<div class="form-group mt-n2 col-md-10">
							<label for="Initiative_name">Name</label> 
							<input type="text" class="modal-custom-input" name="riskDetail_name" id="riskDetail_name" placeholder="" autocomplete="off" style="width: 97% !important;">
						</div>
					</div>
					
					<div class="form-group mt--10">
						<label for="Initiative_description">Description</label>
						<textarea class="modal-custom-textarea"
							name="riskDetail_description" id="riskDetail_description"
							placeholder="" cols="" rows="6" autocomplete="off"></textarea>
					</div>
					<div class="row">
						<div class="form-group mt-n2s col-md-4">
							<label for="Initiative_name">Likelihood</label> 
							<select id="Likelihood" name="Likelihood" class="modal-custom-select">
								<option value="">Choose</option>
								<option data-score="1" data-status="Insignificant" value="Rare">Rare</option>
								<option data-score="2" data-status="Minor" value="Unlikely">Unlikely</option>
								<option data-score="3" data-status="Moderate" value="Possible">Possible</option>
								<option data-score="4" data-status="Major" value="Likely">Likely</option>
								<option data-score="5" data-status="Catastrophic" value="Almost Certain">Almost Certain</option>
								<!--<option data-score="1" data-status="Insignificant" value="Very Low">Very Low</option>
								<option data-score="2" data-status="Minor" value="Low">Low</option>
								<option data-score="3" data-status="Moderate" value="Tolerable">Tolerable</option>
								<option data-score="4" data-status="Major" value="High">High</option>
								<option data-score="5" data-status="Catastrophic" value="Very High">Very High</option>-->
							</select>	
						</div>
						<div class="form-group mt-n2s col-md-4">
							<label for="Initiative_name">Impact</label> 
							<select id="impact" name="impact" class="modal-custom-select" data-impactvalueset="">
								<option value="">Choose</option>
								<option value="Insignificant">Insignificant</option>
								<option value="Minor">Minor</option>
								<option value="Moderate">Moderate</option>
								<option value="Major">Major</option>
								<option value="Catastrophic">Catastrophic</option>
							</select>	
						</div>
						<div class="form-group mt-n2s col-md-4">
							<label for="Initiative_name">Risk Category</label> 
							<select id="riskcategory" name="riskcategory" class="modal-custom-select">
								<option value="">Choose</option>
								<option value="Business">Business</option>
								<option value="Business Continuity">Business Continuity</option>
								<option value="Financial">Financial</option>
								<option value="Governance">Governance</option>
								<option value="Human Resource">Human Resource</option>
								<option value="Technology">Technology</option>
								<option value="Stakeholder">Stakeholder</option>
							</select>	
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
                            <label for="raise_date">Risk Score</label>
                            <input type="text" name="calculate_score" class="modal-custom-input" id="calculate_score" style="width:95% !important" disabled>
                        </div>
						<div class="form-group col-md-6">
                            <label for="raise_date">Status</label>
                            <input type="text" name="calculate_status" class="modal-custom-input" id="calculate_status" style="width:95% !important" disabled>
                        </div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
                            <label for="raise_date">Business Impact</label>
                            <select name="businessimpact" class="modal-custom-select chosen-select" id="businessimpact" style="width:100% !important;display:none !important;">
                            </select>
                        </div>
						<div class="form-group col-md-6">
                            <label for="raise_date">Financial Impact</label>
                            <input type="numbers"  name="financialimpact" class="modal-custom-input" id="financialimpact" style="width:95% !important" autocomplete="off">
                        </div>
					</div>
					<div class="row">
						
                        <div class="form-group col-md-4">
                            <label for="raise_date">Date Raised</label>
                            <i class="far fa-calendar input-calender-icon"></i>
                            <input type="text" class="modal-custom-input" data-language="en" name="raise_date" id="raise_date" style="width:93% !important" autocomplete="off">
                        </div>
                        <div class="form-group col-md-4">
							<label for="Initiative_start_end_date">Date Completed</label>
							<i class="far fa-calendar input-calender-icon"></i> 
							<input type="text" name="riskDetail_complete_date" id="riskDetail_complete_date" data-language="en" class="modal-custom-input date_pickers_single" autocomplete="off" style="width:93% !important">
						</div>
						
						<div class="form-group col-md-4">
							<label for="Initiative_start_end_date">Next Assessment</label>
							<i class="far fa-calendar input-calender-icon"></i> 
							<input type="text" name="riskDetail_next_date" id="riskDetail_next_date" data-language="en" class="modal-custom-input date_pickers_single" autocomplete="off" style="width:92% !important">
						</div>
                    </div>                   
					<!--<div class="form-row"> 
						<div class="form-group mt-n2s col-md-6">
							<label for="risk_owner">Owner</label> 
							<select id="risk_owner" name="risk_owner"
								class="select_all" style="display: none !important;">
								
							</select>	
						</div>
						<div class="form-group mt-n2s col-md-6">
							<label for="Initiative_name">Financial Impact</label> <input type="text"
								class="form-control browser-default" name="riskDetail_financialImpact"
								id="riskDetail_financialImpact" placeholder="">
						</div>
					</div><hr>-->
					
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
                <button "submit" class="btn custom-form-control btn-custom-primary submitevent">
                  Save
                </button>
              </div>
            </div>
            
			
					<input type="hidden" name="action" value="" />
					<input type="hidden" name="riskDetailCreatedById" id="riskDetailCreatedById" value="" />
					<input type="hidden" name="impact" id="impact" value="${kpiId}" />					
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
								<span >Created By : </span><span id="riskDetailCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="riskDetailCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="riskDetailUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="riskDetailUpdatedByDate"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
jQuery.validator.addMethod("greaterThan", 
function(value, element, params) {

    if (!/Invalid|NaN/.test(new Date(value))) {
        return new Date(value) > new Date($(params).val());
    }

    return isNaN(value) && isNaN($(params).val()) 
        || (Number(value) > Number($(params).val())); 
},'Must be greater than {0}.');

	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
		$( "#riskDetailForm" ).validate({
		  rules: {
			  riskDetail_name: {
		      required: true
		    },
		    riskcategory: {
		      required: true
		    },
		    Likelihood: {
		      required: true
		    },
		    calculate_score: {
		      required: true
		    },
		    calculate_status: {
		      required: true
		    },
		    raise_date: {
		      required: true
		    },
		    riskDetail_complete_date: {
		      required: true,
		      greaterThan: "#raise_date"
		    },
		    riskDetail_next_date: {
		      required: true,
		      greaterThan: "#riskDetail_complete_date"
		    },
		    financialimpact: {
			      required: true,
			      digits: true
			    }
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	handleRiskDetailSave();
	        }
		});
</script>