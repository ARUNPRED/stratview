
            <div class="modal fade" id="chart_setting" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        
                        <div class="modal-header">
				            <h4>Chart Settings</h4>
				            <button type="button" class="close pull-right" data-dismiss="modal">
				              &times;
				            </button>
				        </div>
				        
             <div class="modal-body">
              <form id="dashbard_chart_Form"> 
             <table id="chart_table" class="table table-bordered">
              <thead class="bg-light">
                <tr>
                  <th style="font-size: 14px !important;">
                    Data Fields
                    <div class="focused pull-right">
                      <div class="form-control rounded-circle pointer" id="chart-setting">
                        <i class="fa fa-plus"></i>
                      </div>
                    </div>
                  </th>
                </tr>
              </thead>
            
              <tbody style="display: -webkit-inline-box;height: 410px;overflow-x: hidden;">
                <tr>
                  <td style="text-align: left;">
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label for="">Display Name</label>
                        <input type="text" id="displaynamechart" name="displaynamechart" class="form-control browser-default" value=""/>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="">Axis</label>
                        <select class="form-control browser-default" name="displayaxischart" id="displayaxischart" disabled>
                          <option value="x">X-axis</option>
                          <option value="y">Y-axis</option>
                          <option value="z">Z-axis</option>
                        </select>
                      </div>
						<div class="form-group col-md-12">
		                <label for="">Measurement Frequency</label>
		                <select class="form-control browser-default" name="chartfrequency" id="chartfrequency">
							<option value="Monthly">Monthly</option>
							<option value="Quarterly">Quarterly</option>
							<option value="Half Yearly">Half Yearly</option>
							<option value="Annually">Annually</option>
						</select>
		              </div>
                      <div class="col-12">
                        <hr style="border: 1px solid #505050;" />
                      </div>
                    </div>
                    <div class="row" id="chart-setting-div">
                    
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>            
				<input type="hidden" name="action" value="" />
				<input type="hidden" name="id" value="" />
				<input type="hidden" id="charttypeField" value="" />
				
              <div class="row" style="padding-bottom: 6px;">
              <div class="col-12">
                <div class="form-line right">
                  <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">
                    Cancel
                  </button>
                  <button class="initative_save_btn" value="Save">
                    Save
                  </button>
                </div>
              </div>
            </div>
            </form>
		</div>		
		</div>
	</div>
</div>

<script>
	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
		$( "#dashbard_chart_Form" ).validate({
		  rules: {
			displaynamechart: {
		      required: true
		    },
		    displayaxischart: {
		      required: true
		    },
		    chartfrequency: {
		      required: true
		    },
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	savedashboardChart();
	        }
		});
</script>