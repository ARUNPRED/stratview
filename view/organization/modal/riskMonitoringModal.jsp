<div class="modal fade risk_monitoring_popup" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel_1">Monitoring
					Description</h6>
				<button type="button" class="close" data-dismiss="modal" id="riskMonitorClosePopup"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="riskMonitorForm">
					<div class="form-row" id="riskMonitor_id_wrapper" style="display: none">
						<div class="form-group col-md-12">
							<label for="riskMonitor_id">ID</label> 
							<input type="text" class="form-control browser-default" name="riskMonitor_id" id="riskMonitor_id" placeholder="">
						</div>
					</div>
					
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="sub_initative_desc">Description</label>
							<textarea class="modal-custom-textarea" name="riskMonitor_desc" id="riskMonitor_desc" placeholder="" cols="" rows="6" autocomplete="off"></textarea>
						</div>
					</div><hr>
					
					<div class="form-row">	
						<div class="form-group col-md-4">
							<label for="sub_initative_progress">Progress</label> <input
								type="number" min="0" max="100" class="form-control browser-default"
								name="riskMonitor_progress" id="riskMonitor_progress"
								placeholder="" autocomplete="off">
						</div>
						<div class="form-group col-md-4">
							<label for="riskMonitor_status">Status</label> 
							<select id="riskMonitor_status" class="form-control browser-default mt-1">
								<option value="">Choose</option>
								<option value="Pending">Pending</option>
								<option value="Completed">Completed</option>
								<option value="InProgress">InProgress</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="sub_initative_start_end">Start / End Date</label> 
							<input type="text" class="form-control browser-default" name="riskMonitor_dateRange" id="riskMonitor_dateRange" placeholder="" data-multiple-dates-separator=" - " data-language="en" data-range="true" autocomplete="off">
						</div>
					</div><hr>
					
					<div class="form-line right">
						<button type="button" class="btn-default1 btn"
							data-dismiss="modal" aria-label="Close">Cancel</button>
						<button class="initative_save_btn" value="Save">Save</button>
					</div>
						 <input type="hidden" name="action" value="" />
						 <input type="hidden" name="riskMonitorCreatedById" id="riskMonitorCreatedById" value="" />
						 <input type="hidden" name="riskId" id="riskId" />
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
								<span>Created By : </span><span id="riskMonitorCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="riskMonitorCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="riskMonitorUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="riskMonitorUpdatedByDate"></span>
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
	$("#riskMonitorForm").validate({
		rules : {
			riskMonitor_desc : {
				required : true
			},
			riskMonitor_progress : {
				required : true,
				digits: true,
				min:0,
				max:100
			},
			riskMonitor_dateRange : {
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