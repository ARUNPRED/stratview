
            <!-- #Start Kpi Desc PopUp -->

            <div class="modal fade kpi_description_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel">KPI Description</h6>
                            <button type="button" class="close" id="kpiPopClose" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">
                            <form id="kpiForm">
                                <div class="form-row">
                                    <div class="form-group mt-n2 col-md-2" id="kpi_id_wrapper" style="display: none">
										<label for="Kpi_show_id">ID</label> <input type="text"
											class="form-control browser-default" name="Kpi_show_id"
											id="Kpi_show_id" placeholder="">
									</div>
                                    <div class="form-group mt-n2 col-md-10">
                                        <label for="kpi_name">Name</label>
                                        <input type="text" class="form-control browser-default" name="kpi_name" id="kpi_name" placeholder="" autocomplete="off">
                                    </div>
                                    <input type="hidden" id="kpi_id" name="kpi_id">
                                    <input type="hidden" name="action" value="" />
                                </div><hr />
                                <div class="form-row">
	                                <div class="form-group col-md-12">
	                                    <label for="kpi_description">Description</label>
	                                    <textarea class="form-control browser-default" name="kpi_description" id="kpi_description" placeholder="" cols="" rows="6" autocomplete="off"></textarea>
	                                </div>
                                </div><hr />
                                <div class="form-row">
                                    <div class="form-group browser-default col-md-6">
                                        <label for="kpi_owner">Owner</label>
                                        <select id="kpi_owner" name="kpi_owner" class="form-control">
                                            <option value="">Choose</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="kpi_start_end_date">Status</label>
                                        <select id="kpi_status" name="kpi_status" class="form-control browser-default mt-1">
                                            <option value="">Choose</option>
                                            <option value="manual">Manual</option>
                                            <option value="weighted">Weighted</option>
                                            <option value="first">First</option>
                                            <option value="second">Second</option>
                                            <option value="third">Third</option>
                                            <option value="fourth">Fourth</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <!-- <div class="form-row mt-2">
                                    <label for="kpi_fields" class="ml-2 mr-3">Data Fields </label>
                                    <ul class="d-flex flex-row flex-wrap ml-2">
                                        <li>
                                            <div class="form-check">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                    <input class="form-check-input" id="actualId" type="checkbox" value="">
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
                                                    <input class="form-check-input" id="targetId" type="checkbox" value="">
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
                                                    <input class="form-check-input" id="budgetID" type="checkbox" value="">
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
                                                    <input class="form-check-input" id="forcastId" type="checkbox" value="">
                                                    forcastId
                                                    <span class="form-check-sign">
                                                        <span class="check"></span>
                                                    </span>
                                                </label>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>-->
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                        <hr>
                        <div class="modal-footer">
                            <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                                <div class="d-flex flex-row">
                                    <p class="kpi_audit">Audit</p>
                                </div>
                                <div class="d-flex flex-row">
                                    <div class="d-flex flex-column">
                                        <p><span>Created By : </span><span id="createdBy"></span></p>
                                        <p><span>Created Date : </span><span id="createdByDate"></span></p>
                                    </div>
                                    <div class="d-flex flex-column pl-5">
                                        <p><span>Modified By : </span><span id="updatedBy"></span></p>
                                        <p><span>Modified Date : </span><span id="updatedByDate"></span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- #END# kpi Desc PopUp -->
            <script>
	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
		$( "#kpiForm" ).validate({
		  rules: {
			  kpi_name: {
		      required: true
		    },
		    kpi_description: {
		      required: true
		    },
		    kpi_owner: {
		      required: true
		    },
		    kpi_status:{
		    	required: true
		    },
		    kpi_id: {
			      required: true
			}
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	handleKpiDescriptionSave();
	        }
		});
</script>