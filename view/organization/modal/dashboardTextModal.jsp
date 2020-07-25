
            <div class="modal fade" id="text_setting" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        
                        <div class="modal-header">
				            <h4>Text Settings</h4>
				            <button type="button" class="close pull-right" data-dismiss="modal">
				              &times;
				            </button>
				        </div>
				        
                        <div class="modal-body">
                           <form id="dashbard_text_Form">
                           	 <div class="row">	
								<div class="form-group col-md-12">
					                <label for="">Display Name</label>
					                <input name="displayname" id="displayname" type="text" class="form-control browser-default" />
					              </div>
					              
					              <div class="form-group col-md-6">
					                <label for="">Card Type</label>
					                <select class="form-control browser-default" name="card_type_select" id="card_type_select">
					                  <option value="Text">Icon</option>
					                  <option value="Chart">Chart</option>
					                </select>
					              </div>
            					
        						<div class="form-group col-md-6">
					                <label for="">Select Icon</label>
					                <select class="form-control browser-default" name="icon_select" id="icon_select">
					                  <option value="$ Dollar">$ Dollar</option>
					                  <option value="% Percentage">% Percentage</option>
					                  <option value="# Number"># Number</option>
					                </select>
				              </div>
						              
				              <div class="form-group col-md-6">
        						<label for="">Data Field</label>
		                		<input type="text" name="datafield" class="form-control browser-default" id="text_formula" readonly data-toggle="modal" data-target="#kpi_formula_popup" onclick="handleFormulaEvent('KPI')" role="button"/>
        					  </div>
              				
              				<div class="form-group col-md-6">
				                <label for="">Period</label>
				                <input type="text" name="period" id="period" class="form-control browser-default daterangepicker-field-period"/>
				            </div>
				            
							<input type="hidden" name="action" value="" />
							<input type="hidden" name="id" value="" />
							<input type="hidden" id="kpiFieldName" value="" />
              <div class="col-12">
                <hr />
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
		$( "#dashbard_text_Form" ).validate({
		  rules: {
			displayname: {
		      required: true
		    },
		    card_type_select: {
		      required: true
		    },
		    icon_select: {
		      required: true
		    },
		    datafield: {
		      required: true
		    }
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	savedashboardText();
	        }
		});
</script>