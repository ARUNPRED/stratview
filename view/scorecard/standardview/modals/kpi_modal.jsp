
<div class="modal fade kpi_description_popup" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title" id="myLargeModalLabel">KPI Description</h6>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="kpiForm" style="display: none">
					<div class="form-row">
						<div class="form-group col-md-2" id="kpi_id_wrapper"
							style="display: none">
							<label for="kpi_id">ID</label> <input type="text"
								class="form-control browser-default" name="kpi_display_id"
								id="kpi_display_id" placeholder="">
						</div>
						<div class="form-group col-md-8">
							<label for="kpi_name">Name</label> <input type="text"
								class="form-control browser-default" name="kpi_name"
								id="kpi_name" placeholder="" autocomplete="off">
						</div>
						<div class="form-group col-md-2">
							<label for="objective_start_end_date">Polarity</label> <select
								id="kpi_type" name="" class="form-control browser-default">
								<option value="">Choose</option>
								<option value="Lead">Lead</option>
								<option value="Lag">Lag</option>
							</select>
						</div>
					</div>
					<hr />
					<div class="form-row">
						<div class="form-group mt--10">
							<label for="kpi_description">Description</label>
							<textarea class="form-control browser-default"
								name="kpi_description" id="kpi_description" placeholder=""
								cols="" rows="6" autocomplete="off"></textarea>
						</div>
					</div>
					<hr />
					<div class="form-row">
						<div class="form-group browser-default col-md-4">
							<label for="kpi_measurement">Measurement Frequency</label> <select
								id="kpi_measurement" name="kpi_measurement"
								class="form-control mt-1">
								<option value="">Choose</option>
								<option value="Monthly">Monthly</option>
								<option value="Quarterly">Quarterly</option>
								<option value="Half Yearly">Half Yearly</option>
								<option value="Annually">Annually</option>
							</select>
						</div>
						<div class="form-group browser-default col-md-4">
							<label for="kpi_owner">Owner</label> <select id="kpi_owner"
								name="kpi_owner" class="form-control mt-1"
								style="display: block !important;">
							</select>
						</div>
						<div class="form-group browser-default col-md-4">
							<label for="kpi_datasource">Data Source</label> <select
								id="kpi_datasource" name="kpi_datasource"
								class="form-control mt-1">
								<option>Choose</option>
								<option value="Manual">Manual</option>
								<option value="Source">Source</option>
							</select>
						</div>
					</div>
					<hr />
					<div class="form-row mt-4">
						<label for="kpi_fields" class="ml-2 mr-3">KPI Fields </label>
						<ul class="d-flex flex-row flex-wrap ml-2">
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label"> <input
											name="kpi_fields" class="form-check-input" type="checkbox"
											value="Actual"> Actual <span class="form-check-sign">
												<span class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label"> <input
											name="kpi_fields" class="form-check-input" type="checkbox"
											value="Target"> Target <span class="form-check-sign">
												<span class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label"> <input
											name="kpi_fields" class="form-check-input" type="checkbox"
											value="Budget"> Budget <span class="form-check-sign">
												<span class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
							<li>
								<div class="form-check">
									<div class="form-check">
										<label class="form-check-label"> <input
											name="kpi_fields" class="form-check-input" type="checkbox"
											value="Forecast"> Forecast <span
											class="form-check-sign"> <span class="check"></span>
										</span>
										</label>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<hr>

					<div class="form-row">
						<div class="form-group col-md-10">
							<label for="kpi_name">Target Amount</label> <input type="text"
								class="form-control browser-default" name="targetamount"
								id="targetamount" placeholder="" autocomplete="off">
						</div>
					</div>
					<hr />
					<div class="form-row">

						<div class="form-group col-md-4">
							<label for="kpi_threshold">Threshold</label> <select
								id="kpi_threshold" class="form-control browser-default mt-1">
								<!--<option value="">Choose</option>
								<option value="option_1">Two Status</option>
								<option value="option_3">Five Status</option>-->
								<option value="option_2">Three Status</option>
							</select>
						</div>
						<div class="form-group col-md-4 color_picks_1"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option1color1" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-4 color_picks_1"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option1color2" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>


						<div class="form-group col-md-2 color_picks_2"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option2color1" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-2 color_picks_2"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option2color2" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-2 color_picks_2"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option2color3" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>


						<div class="form-group col-md-4 color_picks_3"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option3color1" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-4 color_picks_3"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option3color2" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-4 color_picks_3"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option3color3" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-4 color_picks_3"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option3color4" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>

						<div class="form-group col-md-4 color_picks_3"
							style="display: none;">
							<div class="input-group m-t-24">
								<input id="option3color5" type="text"
									class="form-control browser-default">
								<div class="input-group-append">
									<span class="input-group-text pickr"></span>
								</div>
							</div>
						</div>
					</div>
						
					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="inputState">Actual</label> <input type="text"
								class="form-control browser-default" name="kpi_formula"
								id="kpi_formula" readonly> <a href="#" id="kpi_trigger"
								data-toggle="modal" data-target=".kpi_formula_popup"
								onclick="handleFormulaEvent()"></a>
							<!-- input type="text"
								class="form-control browser-default" name="kpi_formula"
								id="kpi_formula"-->
						</div>
						<div class="form-group col-md-3">
							<label for="kpiDataType">KPI Type</label> <select id="kpiDataType"
								class="form-control browser-default">
								<option value="">Choose</option>
								<option value="Number">Number</option>
								<option value="Percentage">Percentage</option>
								<option value="Currency">Currency</option>
							</select>
						</div>
					</div>
					
					<div class="form-row">
							<div class="form-group col-md-2">
								<label for="inputState">Custom Threshold</label>							
								<div class="form-check" style="margin-top:5% !important;">
									<label  class="form-check-label">
											<input name="check_custhreshold" class="form-check-input"
											id="chk_custom_threshold" type="checkbox" value="Enable">Enable
											<span class="form-check-sign"> <span
												class="check"></span>
										</span>
									</label>
								</div>
									
								
							</div>	
						<div class="form-group col-md-6">
							<input type="text" class="form-control position-static browser-default" style="margin-top:7% !important;"
													name="kpi_custom_threshold" id="kpi_custom_threshold"
													readonly> <a id="check"></a>					
						</div>
						<div class="form-group col-md-3">
							<label for="kpiCurrency">KPI Currency</label> 
							<input type="text" class="form-control browser-default"
													name="kpiCurrency" id="kpiCurrency">
						</div>
						<!--<div class="form-group col-md-8">
							<label for="inputState">Custom Threshold</label>

												 <label  class="form-check-label">
													<input name="check_custhreshold" class="form-check-input"
													id="chk_custom_threshold" type="checkbox" value="Enable">
													<span class="form-check-sign"> <span
														class="check"></span>
												</span>
												</label>

												<input type="text" class="form-control browser-default"
													name="kpi_custom_threshold" id="kpi_custom_threshold"
													readonly> <a id="check"></a>
				
						</div>
						<div class="form-group col-md-3">
							<label for="kpiCurrency">KPI Currency</label> 
							<input type="text" class="form-control browser-default"
													name="kpiCurrency" id="kpiCurrency">
						</div>-->
						
					</div>
					
					<div class="form-row">	
						<div class="form-group col-md-10">
							<label for="inputState">YTD Formula</label>
							
												<input type="text" class="form-control browser-default"
													name="kpiYtdFormula" id="kpiYtdFormula"
													readonly><a href="#" id="kpiYtdFormulaTrigger" data-toggle="modal" data-target=".kpiYtdFormulaPoPUp" onclick="handleYTDFormulaEvent()"></a>
											
						</div>
					</div>	
						
					<hr />
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="kpi_start_end_date">Start/End Date</label> <input
								type="text"
								class="form-control browser-default datepicker-here date_pickers"
								data-range="true" data-multiple-dates-separator=" - "
								data-language="en" id="kpi_start_end_date"
								name="kpi_start_end_date" autocomplete="off">
						</div>
						<div class="form-group col-md-3">
							<label for="kpi_weight">Weight</label> <input type="text"
								class="form-control browser-default" name="kpi_weight"
								id="kpi_weight" autocomplete="off">
						</div>
						<div class="form-group col-md-3">
							<label for="kpi_weight">Sub Weight</label> <input type="text"
								class="form-control browser-default" name="kpi_sub_weight"
								id="kpi_sub_weight" autocomplete="off">
						</div>

						<div class="form-group col-md-3">
							<label for="kpi_start_end_date">Status</label> <select
								id="inputState" class="form-control browser-default">
								<option value="">Choose</option>
								<option value="Manual">Manual</option>
								<option value="Weighted">Weighted</option>
								<option value="First">First</option>
								<option value="Second">Second</option>
								<option value="Third">Third</option>
							</select>
						</div>
					</div>
					<hr />
					<div class="form-line right">
						<button type="button" class="btn-default1 btn"
							data-dismiss="modal" aria-label="Close">Cancel</button>
						<button type="submit" class="initative_save_btn" value="Save">Save</button>
					</div>
					<input type="hidden" name="action" value="" /> <input
						type="hidden" name="objectiveId" value="" /> <input type="hidden"
						name="kpi_id" id="kpi_id" value="" /> <input type="hidden"
						name="kpiCreatedById" id="kpiCreatedById" value="" /> <input
						type="hidden" name="kpiFieldName" id="kpiFieldName" />
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
								<span>Created By : </span><span id="kpiCreatedBy"></span>
							</p>
							<p>
								<span>Created Date : </span><span id="kpiCreatedByDate"></span>
							</p>
						</div>
						<div class="d-flex flex-column pl-5">
							<p>
								<span>Modified By : </span><span id="kpiUpdatedBy"></span>
							</p>
							<p>
								<span>Modified Date : </span><span id="kpiUpdatedByDate"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>

	
	$(document).ready(function() {
						$("#chk_custom_threshold")
							.click(function() {
											if ($("#chk_custom_threshold").is(":checked")) {
												$("#kpi_custom_threshold")
														.removeAttr("disabled")
														.css("background-color","white");
											} else {
												var link = '<a href="#" id="kpi_custom_trigger"'
														+ 'data-toggle="modal"'
														+ 'data-target=".kpi_custom_threshold_popup"'
														+ 'onclick="handleCustomThresholdEvent()"></a>';
												$("#check").append(link);
												$("#kpi_custom_threshold")
														.attr("disabled","disabled")
														.css("background-color","unset");
											}
										});

						$("#kpi_custom_threshold")
								.click(function() {
											if ($("#chk_custom_threshold").is(":checked")) {
												$("#kpi_custom_threshold")
														.removeAttr("disabled")
														.css("background-color","white");
												var link = '<a href="#" id="kpi_custom_trigger"'
														+ 'data-toggle="modal"'
														+ 'data-target=".kpi_custom_threshold_popup"'
														+ 'onclick="handleCustomThresholdEvent()"></a>';
												$("#check").append(link);
											} else {
												$("#kpi_custom_threshold")
														.attr("disabled","disabled")
														.css("background-color","unset");
												var link = '<a href="#" id="kpi_custom_trigger"'
														+ 'data-toggle="modal"'
														+ 'data-target=".kpi_custom_threshold_popup"'
														+ 'onclick="handleCustomThresholdEvent()"></a>';
												$("#check").append(link);
											}
										});

					});

	jQuery.validator.setDefaults({
		debug : false,
		success : "valid"
	});
	$("#kpiForm").validate({
		rules : {
			kpi_name : {
				required : true
			},
			kpi_owner : {
				required : true
			}
		},
		messages : {
			required : "Name is required"
		},
		submitHandler : function(form) {
			handleKpiSave();
		}
	});
</script>