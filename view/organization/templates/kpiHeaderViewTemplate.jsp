                                    <script id="kpiHeaderViewTemplate" type="x-tmpl-mustache">
								<div class="card">
                                <div class="header d-flex flex-row">
									<h5 class="prob d-flex flex-fill"><strong class="editableTxt2" contenteditable="true" onkeypress="return (this.innerText.length <= 25)" data-oldkpiinitiativeHeader="{{kpiinitiativeHeader}}" id="kpiinitiativeHeader" editable="true">{{kpiinitiativeHeader}}</strong> </h5>
                                    <div class="create_initives add-sub-initiative"><span class="sub_initiative" data-toggle="modal" data-target=".kpi_initiaties_popup" onClick="handleKpiinitiativeevent({{id}},'0', 'add')"><i class="fa fa-plus"></i> Add</span></div>
                                    <ul class="header-dropdown m-r--2 d-flex">
                                        <li class="dropdown m-t--10">
                                            <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target=".kpi_initiaties_view_popup" onclick="initiatiesviewdetails({{id}})">View</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="d-flex flex-column employee_div_body_box activities-box">
									{{{initRows}}}
                                </div>
                            </div>                                    
									
                                    </script>