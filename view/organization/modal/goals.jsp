<!--#START View -->
      <div
        class="modal fade add_goals_popup"
        tabindex="-1"
        role="dialog"
        aria-labelledby="myLargeModalLabel_1"
        aria-hidden="true"
      >
        <div class="modal-dialog modal-dialog-centered modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4>Goal Description</h4>
              <button type="button" class="close pull-right" data-dismiss="modal">
                &times;
              </button>
            </div>
            <div class="modal-body">
              <form id="goal_Form">
              <div class="row">
					<div class="form-group col-md-12" id="goal_id_wrapper" style="display: none">
						<label for="meeting-name">ID</label>
						<input type="text" class="modal-custom-input" id="goal_id" style="height: 38px !important; width: 98% !important;"/>
					</div>
				</div>
            					
                <div class="row">
                  <div class="form-group col-md-12">
                    <label for="sub_initative_desc">Name</label>
                    <textarea class="modal-custom-textarea" placeholder="" name="goalname" id="goalname" rows="6" autocomplete="off"></textarea>
                  </div>
                </div>
                <div class="row m-t-10">
                  <div class="form-group col-md-4">
                    <i class="far fa-calendar input-calender-icon goal-input-calender-icon"></i>
                    <label for="sub_initative_start_end">Due On</label>
                    <input type="text" class="modal-custom-input date_pickers_single" name="goaldueon" id="goaldueon" style="height:38px !important;width: 94% !important;" autocomplete="off"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="sub_initative_progress">Progress (%)</label>
                    <input type="number" class="modal-custom-input" id="goalprogress" min="0" max="100" name="goalprogress" style="height:38px !important;width: 94% !important;" autocomplete="off"/>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="sub_initative_progress">Status</label>
                    <select class="modal-custom-input" style="height:38px !important;" name="goalstatus" id="goalstatus">
                      <option value="">Choose</option>
                      <option value="Pending">Pending</option>
                      <option value="Completed">Completed</option>
                    </select>
                  </div>
                </div>
                <input type="hidden" name="action" value="" />
				<input type="hidden" name="goalId" id="goalId" />
                <div class="row m-t-10">
                  <div class="col-md-12">
                    <hr />
                  </div>
                  <div class="form-group col-lg-8 col-md-4 col-sm-12"></div>
                  <div class="form-group col-lg-2 col-md-4 col-sm-6" style="padding-right: 4px;">
                    <button type="button" class="btn custom-form-control btn-custom-secondary" data-dismiss="modal">
                      Close
                    </button>
                  </div>
                  <div class="form-group col-lg-2 col-md-4 col-sm-6" style="padding-left: 4px;">
                    <button type="submit" class="btn custom-form-control btn-custom-primary goalsubmit">
                      Save
                    </button>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <div
                class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11"
              >
                <div class="d-flex flex-row">
                  <p class="kpi_audit">Audit</p>
                </div>
                <div class="d-flex flex-row">
                  <div class="d-flex flex-column">
                    <p><span>Created By : </span><span id="goalCreatedBy"></span></p>
                    <p><span>Created Date : </span><span id="goalCreatedByDate"></span></p>
                  </div>
                  <div class="d-flex flex-column pl-5">
                    <p><span>Modified By : </span><span id="goalUpdatedBy"></span></p>
                    <p>
                      <span>Modified Date : </span><span id="goalUpdatedByDate"></span>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--#END View -->
<script>
	jQuery.validator.setDefaults({
		debug : false,
		success : "valid"
	});
	$("#goal_Form").validate({
		rules : {
			goalname : {
				required : true
			},
			goaldueon : {
				required : true
			},
			goalprogress : {
				required : true,
				digits: true,
				min:0,
				max:100
			},
			goalstatus : {
				required : true
			}
		},
		messages : {
			required : "Name is required"
		},
		submitHandler : function(form) {
			handleEmployeeGoalSave();
		}
	});
</script>