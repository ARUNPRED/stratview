
            <div class="modal fade" id="drilldown_setting" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        
                        <div class="modal-header">
				            <h4 id="datatableheader">Drill Down Table Settings</h4>
				            <button type="button" class="close pull-right" data-dismiss="modal">
				              &times;
				            </button>
				        </div>
				        
                        <div class="modal-body">
                           <form id="dashbard_table_Form">
                           	 <div class="row">	
								<div class="form-group col-md-12">
					                <label for="">KPI Name</label>
					                <input type="text" class="form-control browser-default" name="drilltable_kpi_formula" id="drilltable_kpi_formula" onclick="handleFormulaEvent('DRILLTABLE')" readonly data-toggle="modal" data-target="#kpi_formula_popup" role="button"/>
					              </div>
					              <div class="form-group col-md-12">
					                <label for="">Measurement Frequency</label>
					                <select class="form-control browser-default" name="drillfrequency" id="drillfrequency">
										<option value="Monthly">Monthly</option>
										<option value="Quarterly">Quarterly</option>
										<option value="Half Yearly">Half Yearly</option>
										<option value="Annually">Annually</option>
									</select>
					              </div>
					              
					            <div class="form-group col-md-12 mt-2">
                <label for="kpi_fields">Data Fields</label>
                <ul class="d-flex flex-row flex-wrap ml-2">
                  <li>
                    <div class="form-check">
                      <div class="form-check">
                        <label class="form-check-label">
                          <input class="form-check-input" type="checkbox" id="drillactual" value="actual"/>
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
                          <input class="form-check-input" type="checkbox" id="drilltarget" value="target"/>
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
                          <input class="form-check-input" type="checkbox" id="drillgap" value="gap"/>
                          Gap
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
                          <input class="form-check-input" type="checkbox" id="drillytd" value="ytd"/>
                          YTD
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
				            
				<input type="hidden" name="action" value="" />
				<input type="hidden" name="id" value="" />
				<input type="hidden" id="tableFieldName" value="" />
				<input type="hidden" id="tabletypeField" value="" />
				
              <div class="col-12">
                <hr style="border: 1px solid #505050;" />
              </div>
              
              <div class="col-12">
                <div class="form-line right">
                  <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">
                    Cancel
                  </button>
                  <button class="initative_save_btn submitevent" value="Save">Save</button>
                </div>
              </div>                              
            </div>
            </form>
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
		$( "#dashbard_table_Form" ).validate({
		  rules: {
			drilltable_kpi_formula: {
		      required: true
		    },
		    drillfrequency: {
		      required: true
		    }
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	savedashboardTable();
	        }
		});
</script>