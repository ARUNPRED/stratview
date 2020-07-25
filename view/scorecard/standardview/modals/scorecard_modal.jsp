<div class="modal fade scorecard_description_popup" tabindex="-1"
	role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title" id="myLargeModalLabel">ScoreCard
					Description</h6>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="scorecardForm">
					<div class="form-row">
						<div class="form-group col-md-3" id="scorecard_id_wrapper">
							<label for="scorecard_id">ID</label> <input type="text"
								class="form-control browser-default" name="scorecard_id"
								id="scorecard_id" placeholder="" autocomplete="off">
						</div>
						<div class="form-group col-md-9">
							<label for="scorecard_name">Name</label> <input type="text"
								class="form-control browser-default" name="scorecard_name"
								id="scorecard_name" placeholder="" autocomplete="off">
						</div>
					</div><hr/>
					<div class="form-group mt--10">
						<label for="scorecard_description">Description</label>
						<textarea class="form-control browser-default"
							name="scorecard_description" id="scorecard_description"
							placeholder="" cols="" rows="6" autocomplete="off"></textarea>
					</div><hr/>
					<div class="form-row">
						<div class="form-group browser-default col-md-6">
							<label for="scorecard_owner">Owner</label> 
							<select id="scorecard_owner" name="perspective_owner" class="form-control mt-1"  style="display: block !important;">
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="kpi_start_end_date">Start/End Date</label>
						<input type="text" id="date_range" name="date_range" class="form-control browser-default date_pickers datepicker-here" data-range="true" data-multiple-dates-separator=" - " data-language="en" autocomplete="off"/>		
						</div>
					</div>
					<div class="form-row mt-2" id="scorecard_fields">
                        <label for="kpi_fields" class="ml-2 mr-3">Scorecard Fields </label>
                        <ul class="d-flex flex-row flex-wrap ml-2">
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Actual">
                                            Actual
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Target">
                                            Target
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                             <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Trend">
                                            Trend
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Risk">
                                            Risk
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Budget">
                                            Budget
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Forecast">
                                            Forecast
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-check">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" name="scorecard_fields" type="checkbox" value="Status">
                                            Status
                                            <span class="form-check-sign">
                                                <span class="check"></span>
                                            </span>
                                        </label>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="scorecard_weight">Weight</label> <input type="text"
								class="form-control browser-default" name="scorecard_weight"
								id="scorecard_weight" autocomplete="off">
						</div>
						<div class="form-group col-md-4">
                             <label for="objective_weight">Sub Weight</label>
                             <input type="text" class="form-control browser-default" name="scorecard_sub_weight" id="scorecard_sub_weight" autocomplete="off">
                         </div>
						<div class="form-group col-md-4">
							<label for="scorecard_status">Status</label> <select
								id="scorecard_status" name="scorecard_status" class="form-control browser-default">
								<option value="">Choose</option>
								<option value="manual">Manual</option>
								<option value="weighted">Weighted</option>
								<option value="first">First</option>
								<option value="second">Second</option>
								<option value="third">Third</option>
								<option value="fourth">Fourth</option>
							</select>
						</div>
						<!-- <div class="col-md-4">
							<label for="scorecard_attachment">Attachment</label> <input
								type="file" class="" id="perspective_attachment">
						</div>-->
					</div>
					<hr>
					<div class="form-line right">
						<button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
						<button type="submit" class="btn-default btn-black" value="Save">Save</button>
					</div>
					<input type="hidden" name="createdById" id="createdById" value="" />
					<input type="hidden" name="action" value="" />
					<input type="hidden" name="defaultscr" value="" />
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
<script>
	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
		$( "#scorecardForm" ).validate({
		  rules: {
			perspective_description: {
		      required: true
		    },
			perspective_owner: {
		      required: true
		    }
		  },
		   messages: {
	            required: "Please fill all required fields"
	        },
	        submitHandler: function(form) {
	            handleScorecardSave();
	        }
		});
</script>