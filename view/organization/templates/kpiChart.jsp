<script id="kpiChartViewTemplate" type="text/x-handlebars-template">
<div class="card">
                                <div class="header d-flex flex-row">
                                    <h5 class="prob d-flex flex-fill_47">
									
									<strong class="editableTxt2" contenteditable="true" onkeypress="return (this.innerText.length <= 25)" data-oldkpichartHeader="{{kpichartHeader}}" id="kpichartHeader" editable="true">{{kpichartHeader}}</strong></h5>
									<ul class="header-dropdown" style="margin-right: 8%;">
					                  <li class="dropdown m-t--10">
					                    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
					                      <i class="fas fa-chart-line"></i>
					                    </a>
					                    <ul class="dropdown-menu apexchartsdrop pull-right" x-placement="bottom-start" style="position: absolute;will-change: transform;top: 0px;left: 0px;transform: translate3d(0px, 24px, 0px);">
					                      <li style="display: flex !important;-webkit-box-orient: horizontal !important;-webkit-box-direction: normal !important;flex-direction: row !important;justify-content: space-evenly;text-align: center;padding: 4px;">
					                        <a href="#" onclick="drawChart('#chartdiv_init',1)" data-toggle="tooltip" title="Bubble">
					                          <img src="images/widgets/Bubble.png" alt="Bubble Chart" width="13" style="max-width: none !important;"/>
					                        </a>
					                        <a href="#" onclick="drawChart('#chartdiv_init',2)" data-toggle="tooltip" title="Column">
					                          <img src="images/widgets/Column.png" alt="Column Chart" width="13" style="max-width: none !important;"/>
					                        </a>
					                        <a href="#" onclick="drawChart('#chartdiv_init',3)" data-toggle="tooltip" title="Line">
					                          <img src="images/widgets/Line.png" alt="Line Chart" width="13" style="max-width: none !important;"/>
					                        </a>
					                        <a href="#" onclick="drawChart('#chartdiv_init',4)" data-toggle="tooltip" title="Area">
					                          <img src="images/widgets/Area.png" alt="Area Chart" width="13" style="max-width: none !important;"/>
					                        </a>
					                      </li>
					                    </ul>
					                  </li>
					                </ul>
                
                                    <!--<div class="form-group kpi_create_initives mb-0">
                                        <select id="chart-selection" name="sub_initative_desc" class="mr-4">
                                        <option value="1">Standard Chart</option>
                                        <option value="3">Line Chart</option>
                                        <option value="4">Box Chart</option>
                                        <option value="5">Pie Chart</option>
                                        <option value="6">Bubble Chart</option>
                                        <option value="9">Waterfall Chart</option>
                                        <option value="13">Scatter Chart</option>
                                        <option value="14">Stacked Bar Chart</option>
                                        
                                        
                                        <option value="2">Bar Chart</option>
                                        <option value="15">Bar Chart multiple Y Axis</option>
                                        <option value="7">Radar Chart</option>
                                        <option value="8">Polar Chart</option> 
                                        <option value="10">Risk Chart</option>
                                        <option value="11">Gantt Chart</option>
                                    </select>
                                    </div>-->
                                    <ul class="header-dropdown m-r--2">
                                        <li class="dropdown m-t--10">
                                            <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target=".kpi_chart_view_popup" onclick="kpichartviewdetails();">View</a>
                                                </li>
                                                <li>
                                                    <a href="#" onclick="return false;">Delete</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div>
                                    <div id="chartdiv_init" style="height: 341.02px;position: relative;" data-id="1"></div>
                                    <div id="chartdiv_expandinit" style="display:none"></div>
                                    <div id="tag"></div>
                                </div>
                            </div>
                        </script>