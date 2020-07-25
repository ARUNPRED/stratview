<script id="kpiDetailsViewTemplate" type="text/x-handlebars-template">
<div class="container-fluid text-dark bg-white p-0">
                        <div class="d-flex_name employee_top_section">
                            <div class="collapse_arrow_right" style="display: none;">
                                <i class="arrow_collapse_size fas fa-caret-right"></i>
                            </div>
                            <div class="collapse_arrow_left">
                                <i class="arrow_collapse_size fas fa-caret-left"></i>
                            </div>
                            <div class="employee_details">
                                <div class="img_details">
                                    <img {{{Owner}}} alt="User" width="90">
                                </div>
                                <div class="employee_top_info">
                                    <div class="employe_head_info">
                                        <div>
                                            <h6 class="formattextreader">{{name}}</h6>
                                        </div>
                                        <div class="employe_head_info_icon">
											<i class="fas fa-pencil-alt title_edit_icon" data-toggle="modal" data-target=".kpi_description_popup" onClick="handleKpidescriptionevent('${kpiId}','{{id}}', 'edit')"></i>
              								<i class="fas fa-paperclip title_edit_icon" data-toggle="modal" data-target=".file_upload_popup"></i>
                                            <ul class="header-dropdown">
                                                <li class="dropdown title_edit_icon">
                                                <i class="far fa-eye dropdown-toggle" style="padding: 6px;" data-toggle="dropdown"></i>
                                                <ul class="dropdown-menu kpidropdown-hide multi-column pull-right" x-placement="bottom-start" style="position: absolute;will-change: transform;top: 0px;left: 0px;transform: translate3d(0px, 24px, 0px);">
                                                    <div class="row">
                                                      <div class="col-sm-12">
                                                        <ul class="multi-column-dropdown kpiview_multi-column-dropdown">
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
                                                            <a href="#" onclick="return false;" class="delete-row">Delete</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="initiative_profile_details">
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">Department</div>
                                            <p class="formattextreader">{{userDept}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">Frequency</div>
                                            <p style="text-align: right !important;">{{period}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">Status</div>
                                            <p>{{statusLight}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">Trend</div>
                                            <p><i class="{{trend}}"></i></p>
                                        </div>
                                        {{{riskStatusLight}}}
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">KPI ID</div>
                                            <p>{{kpiId}}</p>
                                        </div>
                                        <div class="employee_details_content_info">
                                            <div class="employee_info">Thershold</div>
                                            <div class="d-flex flex-row flex-fill">
                                                <div class="amount">
                                                    {{{threshholdstatus}}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="{{displayKpiStatusField}}">
                                    {{{actualfieldstauts}}}
                                    {{{targetfieldstauts}}}
                                    {{{budgetfieldstauts}}}
                                    {{{forecastfieldstauts}}}
                                </div>

                            </div>
                        </div>
                        </script>