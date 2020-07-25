
            <!-- #Start Swot Desc PopUp -->

            <div class="modal fade" id="strength_desc_add_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        
                        <div class="modal-header">
				            <h4 id="swotheader_title"></h4>
				            <button type="button" class="close pull-right" data-dismiss="modal">
				              &times;
				            </button>
				        </div>
				        
                        <div class="modal-body">
                            <form id="swot_strength_Form">
                                
								<div class="row">
              						<div class="form-group col-md-12" id="swot_id_wrapper" style="display: none">
                						<label for="meeting-name">ID</label>
                						<input type="text" class="modal-custom-input" id="swot_id" style="height: 38px !important; width: 98% !important;"/>
              						</div>
            					</div>
            					
                                <div class="row">
					              <div class="form-group col-md-12">
					                <label for="meeting-name" id="swotlabeltitle"></label>
					                <textarea class="modal-custom-textarea" id="strength" name="swot_strength" rows="4" autocomplete="off"> </textarea>
					              </div>
						        </div>
                                    <input type="hidden" name="action" value="" />
            						<input type="hidden" name="id" value="" />
            						<input type="hidden" name="flagtype" value="" />
                                
                             <div class="row m-t-10">
				              <div class="form-group col-md-6">
				                <label for="type">Type</label>
				                <select name="strength_type" id="strength_type" class="modal-custom-select" style="height: 38px !important;">
				                  <option value="">Choose Type</option>
				                  <option value="Internal">Internal</option>
				                  <option value="External">External</option>
				                </select>
				              </div>
				
				              <div class="form-group col-md-6">
				                <label for="datepicker">Next Due</label>
				                <i class="far fa-calendar input-calender-icon"></i>
				                <input type="text" name="strength_next_due_date" id="strength_next_due_date" class="modal-custom-input date_pickers_single" autocomplete="off" style="height: 38px !important;width: 94% !important;" data-language="en"/>
				              </div>
				            </div>
                                
                            <div class="row m-t-10">
				              <div class="form-group col-md-12">
				                <label for="meeting-name">Business Impact</label>
				                <select id="strength_impact" class="modal-custom-select chosen-select" name="strength_impact" style="display:none !important;height: 38px !important;font-family: 'Poppins', sans-serif !important">
				                </select>
				              </div>
				            </div>
                          
                          <div class="row m-t-10">
              <div class="form-group col-12">
                <label for="meeting-name">Status</label>
              </div>
            </div>

            <div class="row">
              <div class="form-group col-4 custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="defaultChecked1" value="success" name="strengthstatus" checked/>
                <label class="custom-control-label" for="defaultChecked1">
                  <i class="fas fa-flag status-flag" style="color: #20eaab;"></i>
                </label>
              </div>

              <div class="form-group col-4 custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="defaultChecked2" value="warning" name="strengthstatus"/>
                <label class="custom-control-label" for="defaultChecked2">
                  <i class="fas fa-flag status-flag" style="color: #fffb10;"></i>
                </label>
              </div>

              <div class="form-group col-4 custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="defaultChecked3" value="danger" name="strengthstatus"/>
                <label class="custom-control-label" for="defaultChecked3">
                  <i class="fas fa-flag status-flag" style="color: #ea2020;"></i>
                </label>
              </div>
              
            </div>
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
		$( "#swot_strength_Form" ).validate({
		  rules: {
			swot_strength: {
		      required: true
		    },
		    strength_type: {
		      required: true
		    },
		    strength_next_due_date:{
		    	required: true
		    },
		    strength_impact: {
			      required: true
			}
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	saveSwot();
	        }
		});
</script>