
      <!--#START Comment Edit Description -->
      <div
        class="modal fade"
        id="comment_edit_popup"
        tabindex="-1"
        role="dialog"
        aria-labelledby="myLargeModalLabel_1"
        aria-hidden="true"
      >
        <div class="modal-dialog modal-dialog-centered modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4>Edit Comment</h4>
              <button
                type="button"
                class="close pull-right"
                data-dismiss="modal"
              >
                &times;
              </button>
            </div>
            <div class="modal-body">
              <form id="risksum_comments_Form">
                <div class="row">
                  <div class="form-group col-md-12">
                    <label for="meeting-name">Comment</label>
                    <textarea class="form-control" rows="6" id="comments" name="comments" autocomplete="off"></textarea>
                  </div>
                </div>
                <input type="hidden" name="risksum_comments_id" id="risksum_comments_id" />
                <input type="hidden" name="action"/>
                <div class="row m-t-10">
                  <div class="form-group col-md-12">
                    <hr />
                  </div>
                  <div class="form-group col-lg-8 col-md-6 col-sm-12"></div>
                  <div class="form-group col-lg-2 col-md-3 col-sm-6">
                    <button
                      type="button"
                      class="btn custom-form-control btn-custom-secondary"
                      data-dismiss="modal"
                    >
                      Cancel
                    </button>
                  </div>
                  <div class="form-group col-lg-2 col-md-3 col-sm-6">
                    <button
                      type="submit"
                      class="btn custom-form-control btn-custom-primary"
                    >
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
                    <p><span>Created By : </span><span id="activCreatedBy"></span></p>
                    <p><span>Created Date : </span><span id="activCreatedByDate"></span></p>
                  </div>
                  <div class="d-flex flex-column pl-5">
                    <p><span>Modified By : </span><span id="activUpdatedBy"></span></p>
                    <p>
                      <span>Modified Date : </span><span id="activUpdatedByDate"></span>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--#END Comment Description -->            
      <script>

            jQuery.validator.setDefaults({
            	  debug: false,
            	  success: "valid"
            	});
           
            	$( "#risksum_comments_Form" ).validate({
            	  rules: {
            	    comments:{
            	    	required: true
            	    }
            	  },
            	   messages: {
                      required: "Name is required"
                  },
                  submitHandler: function(form) {
                  	handleRiskSummaryCommentsSave('edit');
                  }
            	});
            </script>