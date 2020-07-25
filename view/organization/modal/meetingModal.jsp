<div id="create_meeting" class="modal fade" role="dialog">
      <div class="modal-dialog modal-lg" style="margin-top: 8%;">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="meetingtitle"></h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
          <form id="meeting_Form">
            <div class="row">
				<div class="form-group col-md-12" id="swot_id_wrapper" style="display: none">
					<label for="meeting-name">ID</label>
					<input type="text" class="modal-custom-input" id="swot_id" style="height: 38px !important; width: 98% !important;"/>
				</div>
			</div>
			
            <div class="row">
            	<input type="hidden" name="action" value="" />
            	<input type="hidden" name="id" value="" />
              	<div class="form-group col-md-12">
                	<label for="meeting-name">Subject</label>
                	<input type="text" class="modal-custom-input" name="meetingname" id="meetingname" style="width: 98% !important;height:38px !important;" autocomplete="off"/>
              	</div>
            </div>

			<!--<div class="row m-t-20">
              <div class="form-group col-md-4">
                <label for="timepicker">Date</label>
                <i class="far fa-calendar input-calender-icon-from"></i>
                <input type="text" class="modal-custom-input date_pickers_single" data-language="en" name="meetingdate" autocomplete="off" id="meetingdate" style="height: 38px !important;width: 94% !important;"/>                
              </div>
              
              <div class="form-group col-md-4">
                <label for="timepicker">From Time</label>
                <input type="text" class="modal-custom-input" name="starttime" onkeypress="return false;" id="starttime" style="height: 38px !important; width: 94% !important;"/>
                <script>
                  $("#starttime").timepicker();
                </script>
              </div>
              
              <div class="form-group col-md-4">
                <label for="timepicker1">End Time</label>
                <input type="text" class="modal-custom-input" name="endtime" onkeypress="return false;" id="endtime" style="height: 38px !important; width: 94% !important;"/>
                <script>
                  $("#endtime").timepicker();
                </script>
              </div>
              
            </div>-->
                        
            <div class="row m-t-20">
              <div class="form-group col-md-6">
                <label for="timepicker">From Date & Time</label>
                <i class="far fa-calendar input-calender-icon-from"></i>
                <input type="text" class="modal-custom-input date_pickers_single" data-language="en" data-timepicker="true" name="starttime" autocomplete="off" id="starttime" style="height: 38px !important;width: 94% !important;"/>                
              </div>

              <div class="form-group col-md-6">
                <label for="timepicker1">To Date & Time</label>
                <i class="far fa-calendar input-calender-icon-to"></i>
                <input type="text" class="modal-custom-input date_pickers_single" name="endtime" id="endtime" data-language="en" autocomplete="off" data-timepicker="true" style="height: 38px !important;width: 94% !important;"/>
              </div>
            </div>

            <div class="row m-t-10">
              <div class="form-group col-md-6">
                <label for="location">Location</label>
                <input type="text" class="modal-custom-input" name="location" id="meetinglocation" style="height: 38px !important;" autocomplete="off"/>
              </div>

              <div class="form-group col-md-6">
                <label for="type">Status</label>
                <select id="status" name="status" class="modal-custom-select" style="height: 38px !important;">
                  <option value="">Choose</option>
                  <option value="Scheduled">Scheduled</option>
                  <option value="Rescheduled">Rescheduled</option>
                  <option value="Ongoing">Ongoing</option>
                  <option value="Completed">Completed</option>
                  <option value="Cancelled">Cancelled</option>
                </select>
              </div>

              <div class="form-group col-md-12">
                <hr />
              </div>
              <div class="form-group col-lg-8 col-md-4 col-sm-12"></div>
              <div class="form-group col-lg-2 col-md-4 col-sm-6" style="padding-right: 4px;">
                <button type="button" class="btn custom-form-control btn-custom-secondary" data-dismiss="modal">
                  Cancel
                </button>
              </div>
              <div class="form-group col-lg-2 col-md-4 col-sm-6" style="padding-left: 4px;">
                <button type="submit" class="btn custom-form-control btn-custom-primary submitevent">
                  Save
                </button>
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
		$( "#meeting_Form" ).validate({
		  rules: {
			meetingname: {
				required: true
			},
		    starttime: {
		      required: true
		    },
		    endtime: {
		      required: true
		    },
		    location: {
		      required: true
		    },
		    status: {
		      required: true
		    }
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	saveSwot('','edit');
	        }
		});
</script>