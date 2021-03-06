<div class="modal fade sub_cause_conq_popup" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel_1">Consequence Description</h6>
				<button type="button" class="close" data-dismiss="modal" id="riskConqClosePopup"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="riskConqForm">
					<div class="row">
						<div class="form-group col-md-2" id="riskConqId_wrapper" style="display: none">
							<label for="riskConqId">ID</label> 
							<input type="text" class="modal-custom-input" name="riskConqId" id="riskConqId" placeholder="" style="height: 38px !important;">
						</div>
						
						<div class="form-group col-md-5">
							<label for="riskConqName">Name</label> 
							<input type="text" class="modal-custom-input" name="riskConqName" id="riskConqName" placeholder="" style="height: 38px !important;" autocomplete="off">
						</div>
						
						<div class="form-group col-md-5">
							<label for="risk_conq_rating">Rating</label> 
							<select id="risk_conq_rating" name="risk_conq_rating" class="modal-custom-select" style="height: 38px !important;">
								<option value="">Choose</option>
								<option value="Very Low">Very Low</option>
								<option value="Low">Low</option>
								<option value="Tolerable">Tolerable</option>
								<option value="High">High</option>
								<option value="Very High">Very High</option>
							</select>
						</div>
					</div>
					
					<div class="form-group mt--10">
						<label for="Initiative_description">Description</label>
						<textarea class="modal-custom-textarea" name="riskConqDesc" id="riskConqDesc" placeholder="" cols="" rows="6" autocomplete="off"></textarea>
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
                    <button class="btn custom-form-control btn-custom-primary">
                      Save
                    </button>
                  </div>
                  </div>	
						<input type="hidden" name="action" value="" />
						 <input type="hidden" name="conqCreatedById" id="conqCreatedById" value="" />
						 <input type="hidden" name="causeId" id="causeId" />
				</form>
			</div>
			<div class="modal-footer">
				<div
					class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
					<div class="d-flex flex-row">
						<p class="kpi_audit">Audit</p>
					</div>
					<div class="d-flex flex-row">
						<div class="d-flex flex-column">
							<p>
								<span>Created By : </span><span id="riskConqCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="riskConqCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="riskConqUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="riskConqUpdatedByDate"></span>
							</p>
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
	$("#riskConqForm").validate({
		rules : {
			riskConqName : {
				required : true
			},
			risk_conq_rating : {
				required : true
			}
		},
		messages : {
			required : "Name is required"
		},
		submitHandler : function(form) {
			handleRiskConqSave();
		}
	});
</script>