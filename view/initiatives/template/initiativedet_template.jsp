  <script id="initiativedetail-template" type="text/x-handlebars-template">
                            <div class="collapse_arrow_right" style="display: none;">
                                <i class="arrow_collapse_size fas fa-caret-right"></i>
                            </div>
                            <div class="collapse_arrow_left">
                                <i class="arrow_collapse_size fas fa-caret-left"></i>
                            </div>
                            <div class="employee_details">
                            <div class="img_details">
                                <img alt="User" id="initiatieProfile" {{{Owner}}} width="90">
                            </div>
							<div class="employee_top_info">
							<div class="employe_head_info">
                            <div class="initiative_title">
                                <h6 class="formattextreader">{{title}}</h6>
                            </div>
							<div class="employe_head_info_icon">
							<i class="fas fa-pencil-alt title_edit_icon" data-toggle="modal" data-target=".initatives_description_popup" onClick="handleinitiativeevent('{{id}}', 'edit')"></i>
                            <i class="fas fa-paperclip title_edit_icon" data-toggle="modal" data-target=".file_upload_popup"></i>
                            <ul class="header-dropdown">
	                            <li class="dropdown title_edit_icon">
	                            <i class="far fa-eye dropdown-toggle" style="padding: 6px;" data-toggle="dropdown"></i>
	                            <ul class="dropdown-menu initiativedropdown-hide multi-column pull-right" x-placement="bottom-start" style="position: absolute;will-change: transform;top: 0px;left: 0px;transform: translate3d(0px, 24px, 0px);">
	                                <div class="row">
	                                  <div class="col-sm-12">
	                                    <ul class="multi-column-dropdown initiative_multi-column-dropdown">
	                                    	{{{kpidesignlabel}}}
	                                    </ul>
	                                  </div>
	                                </div>
	                              </ul>
	                            </li>
	                       	</ul>

			              <ul class="header-dropdown">
                                                <li class="dropdown title_edit_icon">
                                                    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                                                        <i class="material-icons">more_horiz</i>
                                                    </a>
                                                    <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                                                       
                                                        <li>
                                                            <a href="#" onclick="handleinitiativeevent('{{id}}', 'delete')" class="delete-row">Delete</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>                 		
	</div>
						</div>
                        <div class="initiative_profile_details" style="text-align: center;">
                            <div class="employee_details_content_info">
                                            <div class="employee_info" style="font-weight: 700;">Department</div>
                               <p class="formattextreader">{{userDept}}</p>

                            </div>
                            <div class="employee_details_content_info init_portion_width">
                                            <div class="employee_info" style="font-weight: 700;">Progress</div>
                                <div class="d-flex_name flex-row_name ini_progress_bar">
                                    <div class="progress-s progress">
                                        <div id="progressbar" class="{{statusLight}}" role="progressbar" aria-valuenow="{{progressval}}" aria-valuemin="0" aria-valuemax="100" style="width:{{progressval}}%">
                                        </div>

                                    </div>

                                    <div class="progress_value font-weight-bold">{{progressvalpercent}}</div>
                                </div>
								</div>
                                        <div class="employee_details_content_info init_portion_width">
                                            <div class="employee_info" style="font-weight: 700;">Impact</div>
                                            <p class="formattextreader">{{impactDesc}}</p>
                                        </div>
                                        <div class="employee_details_content_info init_portion_width">
                                            <div class="employee_info" style="font-weight: 700;">Start / End</div>
                                            <p>{{intiativedaterange}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info" style="font-weight: 700;">Remaining</div>
                                            <p>{{diffdays}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info" style="font-weight: 700;">Initiative ID</div>
                                            <p>{{initiativeId}}</p> 
											<input type="hidden" name="parentinitiativeId" value="{{id}}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="initiative_rating_details">
                                <div class="d-flex flex-row">
                                    <div class="ini_thrid_row_reaction colfp">
                                        <div class="">
                                            <p class="employee_infocolfp">Status</p>
                                            <div class="good font-weight-bold">{{initiativeStatus}}</div>
                                        </div>
                                        <div class="">
                                            <p class="employee_infocolfp">Reaction</p>
                                            <div class="d-flex reaction">
                                                {{{initiativeReaction}}}
                                            </div>
                                        </div>
                                    </div>
                            <div class="{{displayStatusField}}">   
                                {{{totalfieldstauts}}}
                                {{{utiliziedfieldstauts}}}
                                {{{balancefieldstauts}}}
                                </div>
                            <div class="{{displayDataField}}">   
                                <div class="">
                                    <div class="amount" id="actual_wrapper">
                                        <div class="number_font" id="actualValue">{{actualValue}}</div>
                                         <div class="editableTxt" data-oldactualHeader="{{actualHeader}}" id="actualHeader" onkeypress="return (this.innerText.length <= 15)" editable="true">{{actualHeader}}</div>

                            </div>
							</div>
                               <div class="">
                                    <div class="amount" id="target_wrapper">
                                        <div class="editableTxt number_font" data-oldtargetValue="{{targetValue}}" id="targetValue" onkeypress="return (this.innerText.length <= 10)" editable="true" id="targetValue">{{targetValue}}</div>
                                        <div class="editableTxt" data-oldtargetHeader="{{targetHeader}}" id="targetHeader" onkeypress="return (this.innerText.length <= 15)" editable="true">{{targetHeader}}</div>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="amount" id="budget_wrapper">
                                        <div class="number_font" id="budgetValue">{{budgetValue}}</div>
                                        <div class="editableTxt" id="budgetHeader" data-oldbudgetHeader="{{budgetHeader}}" onkeypress="return (this.innerText.length <= 15)" editable="true">{{budgetHeader}}</div>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="amount" id="forcast_wrapper">
                                        <div class="number_font" id="forecastValue">{{forecastValue}}</div>
                                        <div class="editableTxt" id="forecastHeader" data-oldforecastHeader="{{forecastHeader}}" onkeypress="return (this.innerText.length <= 15)" editable="true">{{forecastHeader}}</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
 </script>