<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <title>StratRoom</title>
        <link href="css/app.min.css" rel="stylesheet">
        <!-- Custom Css -->
        <link href="css/style.css" rel="stylesheet" />
        		 <link href="css/custom.css" rel="stylesheet" />
        
        <link href="css/initatives.css" rel="stylesheet" />
        <link href="css/startroom/wedgets.css" rel="stylesheet" />
        <!-- You can choose a theme from css/styles instead of get all themes -->
        <link href="css/styles/all-themes.css" rel="stylesheet" />
        <!-- <link href="css/table-view.css" rel="stylesheet" /> -->
        <link rel="stylesheet" href="css/datepickerair.css">
        <link href="css/jquery-ui.min.css" rel="stylesheet">
        <link href="css/daterangepicker.min.css" rel="stylesheet">
        
        <link href="css/employee.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/fonts/fontawesome_v_5/font-awesome.min.css">
		<link rel="stylesheet" href="css/fonts/fontawesome_v_5/all.css">
		   <script src='js/plotly-latest.min.js'></script>
  <style>
  tr > th{
  	text-algin:center;
  	font-weight:600;
  }
  
  .form-group .form-line {
    width: 100%;
    position: relative;
    margin-left: 3% !important;
}

.kpiselectoption {
	font-family:"Poppins", sans-serif !important;
	font-size:11px !important;
}

.kpiSidebarHighLight {
    border-top: 2px solid black !important;
    border-right: 2px solid black !important;
    border-bottom: 2px solid black !important;
}

.table th, .table td {
    padding: 0.75rem !important;
    vertical-align: middle !important;
    border: 1px solid #dee2e6 !important;
    height: 2.5em;
    }
    
	.employee_details_content_info p {
	    text-align: center !important;
	}
	  
  .rightaligndata {
  	text-algin:right !important;
  }
  
  .js-plotly-plot .plotly, .js-plotly-plot .plotly div {
    font-family: "Poppins", sans-serif !important;
}
  	select:disabled {
    	color:#495057 !important;
	}
            .hidden {
                display: none;
            }
            
            .shown {
                display: block;
            }
            
            svg {
                width: 100%;
                height: 100%;
            }
            
            path.slice {
                stroke-width: 2px;
            }
            
            polyline {
                opacity: .3;
                stroke: black;
                stroke-width: 2px;
                fill: none;
            }
            
            .arc text {
                font: 10px sans-serif;
                text-anchor: middle;
            }
            
            .arc path {
                stroke: #fff;
            }
            
            .bar {
                fill: orange;
            }
            
            .bar:hover {
                fill: orangered;
            }
            
            .x.axis path {
                display: none;
            }
            
            .d3-tip {
                line-height: 1;
                font-weight: bold;
                padding: 12px;
                background: rgba(0, 0, 0, 0.8);
                color: #fff;
                border-radius: 2px;
            }
            /* Creates a small triangle extender for the tooltip */
            
            .d3-tip:after {
                box-sizing: border-box;
                display: inline;
                font-size: 10px;
                width: 100%;
                line-height: 1;
                color: rgba(0, 0, 0, 0.8);
                content: "\25BC";
                position: absolute;
                text-align: center;
            }
            /* Style northward tooltips differently */
            
            .d3-tip.n:after {
                margin: -1px 0 0 0;
                top: 100%;
                left: 0;
            }
            
            .bar.total rect {
                fill: steelblue;
            }
            
            .bar.positive rect {
                fill: darkolivegreen;
            }
            
            .bar.negative rect {
                fill: crimson;
            }
            
            .bar line.connector {
                stroke: grey;
                stroke-dasharray: 3;
            }
            
            .bar text {
                fill: white;
                font: 12px sans-serif;
                text-anchor: middle;
            }
            
            .axis text {
                font: 10px sans-serif;
            }
            /* .axis path,
            .axis line {
                fill: none;
                stroke: #000;
                shape-rendering: crispEdges;
            }
             */
            
            path {
                stroke: steelblue;
                stroke-width: 2;
                fill: none;
            }
            
            .axis path,
            .axis line {
                fill: none;
                stroke: grey;
                stroke-width: 1;
                shape-rendering: crispEdges;
            }
            /* 3d bar chart style */
            
            .bar .face {
                shape-rendering: geometricPrecision;
                stroke: #4286b4;
                stroke-width: .7px;
            }
            
            .bar .face.front {
                fill: #4286b4;
            }
            
            .bar .face.top {
                fill: #3b82bd;
            }
            
            .bar .face.left,
            .bar .face.right {
                fill: #3675a9;
            }
            
            .bar:hover .face {
                stroke: #A52A2A;
            }
            
            .bar:hover .face.front {
                fill: #A52A2A;
            }
            
            .bar:hover .face.top {
                fill: #991920;
            }
            
            .bar:hover .face.left,
            .bar:hover .face.right {
                fill: #8e181e;
            }
            
            .axis {
                font: 10px sans-serif;
            }
            
            .axis path,
            .axis line {
                fill: none;
                stroke: #000;
                shape-rendering: crispEdges;
            }
            
            .x.axis path {
                display: none;
            }
            
            .orientation-right {
                top: 60px !important;
                right: 0 !important;
                left: auto !important;
                position: fixed;
            }
            #comments-row-box_view {
  list-style-type:none;
}

.tableBody {
  font-size: 11px;
}

        </style>
        <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery/additional-methods.min.js"></script>
        
            <script>
        function preview_images() 
            {
            var total_file=document.getElementById("images").files.length;
            for(var i=0;i<total_file;i++)
            {
            $('#image_preview').append("<div class='col-md-3' style='padding-bottom: 4%' '><img class='img-responsive' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
            }
            }
    </script>       
    </head>

    <body class="light">
<jsp:include page="../common/top-navigation.jsp"></jsp:include>
        <div>
		<jsp:include page="../common/left-navigation.jsp"></jsp:include>
		<jsp:include page="../common/right-navigation.jsp"></jsp:include> 
		<jsp:include page="templates/kpiViewTemplate.jsp"></jsp:include> 
		<jsp:include page="templates/kpiInitiativeTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiHeaderViewTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiDetailViewTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiCommentsTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiActualTargetTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiActualTargetRowTemplate.jsp"></jsp:include>
		<jsp:include page="templates/kpiChart.jsp"></jsp:include>
		<jsp:include page="templates/kpiComments.jsp"></jsp:include>
		<jsp:include page="modal/kpiDescriptionModal.jsp"></jsp:include>
		<jsp:include page="modal/kpi_InitiatiesModal.jsp"></jsp:include>
		<jsp:include page="modal/kpi_initiative_view.jsp"></jsp:include>
		<jsp:include page="modal/kpi_comments_view.jsp"></jsp:include>
		<jsp:include page="modal/kpiReportTableModal.jsp"></jsp:include>
		<jsp:include page="templates/kpiReportTableTemplate.jsp"></jsp:include>
            <aside id="initiative_sidebar" class="initiative_sidebar">
                <div class="sub_initiatives" id="sub_initiatives">
                    <div class="card">
                    <div class="header d-flex flex-row initiate_sidebar" style="margin-top: 5%;">
                            <h5 class="prob d-flex flex-fill">
                                <strong style="color: #333;">KPI's</strong> 
                            </h5>
                            <div class="dropdown">
                                <a  href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-filter"></i>
                                </a>
                              
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="margin-left: -100px;">

                                </div>
                              </div>
                        </div>
                        <input type="hidden" id="ischeckkpiurlornot" value="KPI">
                        <div class="kpi_score_objective">
                        <div><strong>Page</strong></div>
                            <div class="form-group">
                                <select id="kpi_scorecard_page" name="kpi_scorecard_page_drop" class="kpiselectoption" onchange="populateScoreCard(this.value)">
                                    <c:if test="${pageList != null}">
                                    <c:forEach items="${pageList}" var="pageObj">
                                    <c:if test="${pageObj.pageType eq 'Standard_View'}">
                                    <option value="${pageObj.id}">${pageObj.pageName}</option>
                                      </c:if>
                                    </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        	<div><strong>Scorecard</strong></div>
                            <div class="form-group">
                                <select id="kpi_scorecard" name="kpi_scorecard_drop" class="kpiselectoption" onchange="populateObjectives(this.value)">
                                    <option value="">Select</option>
                                </select>
                            </div>
                            <div><strong>Objectives</strong></div>
                            <div class="form-group">
                                <select id="kpi_objectives_id" name="kpi_objectives_drop" class="kpiselectoption" onchange="populateKpi(this.value)">
                                <option value="">Select</option>
                                </select>
                            </div>
                            <div><strong>KPI'S</strong></div>
                        </div>
                    
                        <div class="d-flex flex-column" id="initiate_sidebar">

                        </div>
                    
                    </div>
                </div>
            </aside>
            <div id="deleteModalKpi" class="modal fade">
			<div class="modal-dialog modal-confirm">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Delete</h4>	
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<h5 class="confirm-modal-content">Do you really want to delete these records?</h5>
						<br>
						<div class="form-line right">
							<input type="hidden" id="deletekpirecordid"/>
							<input type="hidden" id="deletekpirecordtype"/>
							<button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
							<button type="button" class="btn btn-danger confirm-modal-deleteBtn" onclick="handlekpieventdelete()">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</div>

            <!--#START Data Collection Form -->
            <div class="modal fade data_collection_form" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                        </div>
                        <div class="modal-body">
                            <form id="sub_initative_Form">
                                <div class="form-row justify-content-center">
                                    <img width="110" class="rounded-circle" id="upload_link1" src="images/user/usrbig7.jpg" alt="">
                                    <input id="upload1" type="file" style="display:none" />
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="sub_initative_desc">KPI Name</label>
                                        <select id="kpi_id" name="sub_initative_desc" class="form-control data_field">
                                            <option></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group browser-default">
                                        <label for="attachment">Frequency</label>
                                        <select id="attachment" name="attachment" class="form-control data_field">
                                            <option></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_desc">Element ID</label>
                                        <input type="text" class="form-control data_field" name="sub_initative_desc" id="kpi_id" placeholder="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="attachment">Element Type</label>
                                        <select id="attachment" name="attachment" class="form-control data_field">
                                        <option></option>
                                    </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_desc">Data</label>
                                        <select id="kpi_data" name="kpi_data" class="form-control data_field">
                                            <option></option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="attachment">Scheduler</label>
                                        <select id="attachment" name="attachment" class="form-control data_field">
                                        <option></option>
                                    </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_desc">Responsible</label>
                                        <select id="responsible" name="responsible" class="form-control data_field">
                                            <option></option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="attachment">Cutoff Date</label>
                                        <input type="text" class="form-control data_field date_pickers" name="cuttoff_date" id="cutoff_date" placeholder="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6 d-flex">
                                        <div class="employee_approval">Approval By</div>
                                        <div>
                                            <ul class="list-unstyled order-list">
                                                <li class="avatar avatar-sm">
                                                    <img class="rounded-circle" src="images/user/user7.jpg" alt="user">
                                                </li>
                                                <li class="avatar avatar-sm">
                                                    <img class="rounded-circle" src="images/user/user8.jpg" alt="user">
                                                </li>
                                                <li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span _ngcontent-hhc-c5="" class="badge">+2</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 d-flex">
                                        <div class="employee_approval">First Approval By</div>
                                        <div>
                                            <ul class="list-unstyled order-list">
                                                <li class="avatar avatar-sm">
                                                    <img class="rounded-circle" src="images/user/user7.jpg" alt="user">
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-line right">
                                    <button type="button" class="dataform_save_btn" data-dismiss="modal" aria-label="Close">Save</button>
                                    <button class="dataform_resend_btn" value="Save">Resend</button>
                                    <button class="dataform_submit_btn" value="Save">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Data Collection Form -->
            
            <!-- #Start Kpi Comments PopUp -->

            <div class="modal fade kpi_comments_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Kpi Comments Update</h6>
                            <button type="button" class="close" id="kpiComments" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="kpi_comments_Form">
                                <input type="hidden" name="kpi_comments_id" id="kpi_comments_id" />
                                <input type="hidden" name="kpi_comments_kpiid" id="kpi_comments_kpiid" />
                                 <div class="form-row">   
                                    <div class="form-group col-md-12">
                                        <label for="sub_initative_desc">Comments</label>
                                        <textarea rows="3" cols="" class="form-control browser-default" name="kpi_Comments" id="kpi_Comments" placeholder=""></textarea> 
                                    </div>
                                  </div><hr/>
                                    <input type="hidden" name="action" value="" />
                               
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# kpi Comments PopUp -->

            <!--#START Sub Initiatives Edit -->
            <div class="modal fade sub_initative_edit_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Edit My Initiative Description</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="sub_initative_Form">
                                <div class="form-row">
                                    <div class="form-group col-md-9">
                                        <label for="sub_initative_desc">Description</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_desc" id="kpi_id" placeholder="">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_initative_progress">Progress</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_progress" id="sub_initative_progress" placeholder="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_start_end">Start / End Date</label>
                                        <input type="text" class="form-control browser-default date_pickers datepicker-here" data-range="true" data-multiple-dates-separator=" - " data-language="en" id="air-date-sub-init-edit" />
                                    </div>
                                    
                                </div>
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                                <div class="d-flex flex-row">
                                    <p class="kpi_audit">Audit</p>
                                </div>
                                <div class="d-flex flex-row">
                                    <div class="d-flex flex-column">
                                        <p><span>Created By : </span><span>Arun</span></p>
                                        <p><span>Created Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                    <div class="d-flex flex-column pl-5">
                                        <p><span>Modified By : </span><span>Karthik</span></p>
                                        <p><span>Modified Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Initiatives Edit -->

            <!--#START Sub Initiatives View -->
            <div class="modal fade sub_initative_view_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" style="max-width:50%">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Data Table</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="">
                            <div class="col-lg-12 col-md-12 sub_initiatives">
                                <div class="card">
                                    <div id="actualtargetview"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Initiatives Edit -->


            <!--#START Sub Activitie Edit -->
            <div class="modal fade sub_activitie_edit_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Edit Activitive Description</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="sub_initative_Form">
                                <div class="form-row">
                                    <div class="form-group col-md-9">
                                        <label for="sub_initative_desc">Description</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_desc" id="kpi_id" placeholder="">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_initative_progress">Progress</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_progress" id="sub_initative_progress" placeholder="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_start_end">Start / End Date</label>
                                        <input type="text" class="form-control browser-default date_pickers datepicker-here" data-range="true" data-multiple-dates-separator=" - " data-language="en" id="" />
                                    </div>
                                    
                                </div>
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                                <div class="d-flex flex-row">
                                    <p class="kpi_audit">Audit</p>
                                </div>
                                <div class="d-flex flex-row">
                                    <div class="d-flex flex-column">
                                        <p><span>Created By : </span><span>Arun</span></p>
                                        <p><span>Created Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                    <div class="d-flex flex-column pl-5">
                                        <p><span>Modified By : </span><span>Karthik</span></p>
                                        <p><span>Modified Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Activitie Edit -->

            <!--#START Sub Activitie View -->
            <div class="modal fade kpi_initiaties_view_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">View My Initiative</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="col-lg-12 col-md-12 sub_initiatives">
                            <div class="card">
                                <div class="header d-flex flex-row">
                                    <h5 class="prob d-flex flex-fill"><strong id="myinitiativeviewheader"></strong> </h5>
                                </div>
                                	<div class="d-flex flex-column employee_div_body_box activities-box" id="kpi_initiaties_viewrow">
                                    
                                	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Activitie View -->

            <!--#START Sub Milestone -->
            <div class="modal fade sub_milestone_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Add Milestone Description</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="sub_initative_Form">
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <label for="sub_initative_desc">Description</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_desc" id="kpi_id" placeholder="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_progress">Progress</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_progress" id="sub_initative_progress" placeholder="">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_start_end">End Date</label>
                                        <input type="text" class="form-control browser-default date_pickers_single datepicker-here" data-language="en" id="" />
                                    </div>
                                </div>
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                                <div class="d-flex flex-row">
                                    <p class="kpi_audit">Audit</p>
                                </div>
                                <div class="d-flex flex-row">
                                    <div class="d-flex flex-column">
                                        <p><span>Created By : </span><span>Arun</span></p>
                                        <p><span>Created Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                    <div class="d-flex flex-column pl-5">
                                        <p><span>Modified By : </span><span>Karthik</span></p>
                                        <p><span>Modified Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Milestone -->

            <!--#START Sub Milestone Edit -->
            <div class="modal fade sub_milestone_edit_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">Edit Milestone Description</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="sub_initative_Form">
                                <div class="form-row">
                                    <div class="form-group col-md-9">
                                        <label for="sub_initative_desc">Description</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_desc" id="kpi_id" placeholder="">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="sub_initative_progress">Progress</label>
                                        <input type="text" class="form-control browser-default" name="sub_initative_progress" id="sub_initative_progress" placeholder="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="sub_initative_start_end">End Date</label>
                                        <input type="text" class="form-control browser-default date_pickers_single datepicker-here" data-language="en" id="" />
                                    </div>
                                   
                                </div>
                                <div class="form-line right">
                                    <button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
                                    <button class="initative_save_btn" value="Save">Save</button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div class="d-flex flex-column flex-fill ml-4 mb-5 text-left font-11">
                                <div class="d-flex flex-row">
                                    <p class="kpi_audit">Audit</p>
                                </div>
                                <div class="d-flex flex-row">
                                    <div class="d-flex flex-column">
                                        <p><span>Created By : </span><span>Arun</span></p>
                                        <p><span>Created Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                    <div class="d-flex flex-column pl-5">
                                        <p><span>Modified By : </span><span>Karthik</span></p>
                                        <p><span>Modified Date : </span><span>Oct 02, 2019</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Milestone Edit -->

            <!--#START Sub Milestone View -->
            <div class="modal fade sub_milestone_view_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header modalheadercolor">
                            <h6 class="modal-title" id="myLargeModalLabel_1">View Milestones</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="col-lg-12 col-md-12 sub_initiatives">
                            <div class="card">
                                <div class="header d-flex flex-row">
                                    <h5 class="prob d-flex flex-fill"><strong class="editableTxt1" onkeypress="return (this.innerText.length <= 25)" editable="true">Milestones</strong> </h5>
                                </div>
                                <div class="d-flex flex-column employee_div_body_box" id="milestone_view">
                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-1 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Completed</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar progress-bar-success width-per-35 rounded-pill bar_height" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">35%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-2 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Pending</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar width-per-40 rounded-pill bar_height yellow_bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">40%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-3 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Completed</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar progress-bar-success width-per-80 rounded-pill bar_height" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">80%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-4 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Completed</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar width-per-15 rounded-pill bar_height orange_bar" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">15%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-5 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Completed</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar progress-bar-success width-per-60 rounded-pill bar_height" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">60%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row employe_content_border sub_initiative_details">
                                        <div class="d-flex flex-column flex-fill profile_content">
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column init_flex_profile">
                                                    <p>Milestones-6 Lorem ipsum dolor sit amet, nam ea, ei putent oblique probatus ve 1 </p>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Completed</strong></div>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row">
                                                <div class="d-flex flex-column flex-fill">
                                                    <div class="d-flex flex-row">
                                                        <div class="progress-s progress">
                                                            <div class="progress-bar progress-bar-success width-per-35 rounded-pill bar_height" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
                                                            </div>
                                                        </div>
                                                        <div class="progress_value">35%</div>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column">
                                                    <div><strong>Oct 09, 2019</strong></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Sub Milestone View -->


<!-- #END# KPI chart PopUp -->
		<div class="modal fade kpi_chart_view_popup" tabindex="-1"
			role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" style="max-width: 100%">
				<div class="modal-content">
					<div class="modal-header modalheadercolor">
						<h6 class="modal-title" id="myLargeModalLabel_1">View KPI Chart Status</h6>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
					</div>
					<div class="modal-body">
						<div class="container-fluid">
							<div id="chart_modal">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- #END# KPI chart PopUp -->

            <section class="content" id="section">
                <!---------Initiatives--------->
                <div class="initiative_details kpi_page_details" id="kpiDetailsView">
                    
                    </div>

                    <!-------kpiTargetActual------->
                    <div class="row row-padding m-0">
                        <div class="col-lg-8 col-md-10 select-toggle sub_initiatives" id="kpiTargetActual">

                        </div>

                        <!---------Chart-------->
                        <div class="col-lg-4 col-md-6 select-toggle sub_initiatives" id="kpiChart">
                            
                        </div>

                        <!-- My Initiative-->

                    
                    </div>
                    <div class="row row-padding m-0">
                        <!---------MileStones-------->
                        <div class="col-lg-12 col-md-12 select-toggle sub_initiatives" id="kpiReportTemplate">
                        
                    </div>
                    </div>
					<div class="row row-padding m-0">
                        <div class="col-lg-4 col-md-6 select-toggle sub_initiatives" id="headerInitiativeTemplate">
                            
                        </div>
                        <!---------Comments-------->
                        <div class="col-lg-4 col-md-6 select-toggle sub_initiatives" id="kpi_comments">
						</div>
						</div>

                        <div id="dialog">
                            <div class="row">
                                <div class="col-sm-12" id="primary-select">
                                    <select class="form-control" name="primary-select" id="main-select">
                                    <option value="any-date">Any Date</option>    
                                    <option value="yesterday">Yesterday</option>    
                                    <option value="current-day">Current Day</option>    
                                    <option value="tomorrow">Tomorrow</option>    
                                    <option value="this-week">This Week</option>    
                                    <option value="this-month">This Month</option>    
                                    <option value="current-quarter">Current Quarter</option>    
                                    <option value="last-7-days">Last 7 Days</option>    
                                    <option value="last-30-days">Last 30 Days</option>    
                                    <option value="last-60-days">Last 60 Days</option>    
                                    <option value="last-90-days">Last 90 Days</option>    
                                    <option value="last-n-days">Last N Days</option>    
                                    <option value="next-n-days">Next N Days</option>    
                                    <option value="next-2-years">Next 2 Years</option>    
                                    <option value="next-5-years">Next 5 Years</option>    
                                    <option value="month">Month</option>    
                                    <option value="quarter">Quarter</option>    
                                    <option value="year">Year</option>    
                                    <option value="exact-date">Exact Date</option>    
                                    <option value="last-week">Last Week</option>    
                                    <option value="last-month">Last Month</option>    
                                    <option value="next-week">Next Week</option>    
                                    <option value="next-month">Next Month</option>    
                                    <option value="custom-range">Custom Range</option>    
                                </select>
                                </div>
                                <div class="col-sm-4 hidden" id="last-n-days">
                                    <input type="number" min="0" name="last-n-days" />
                                </div>
                                <div class="col-sm-4 hidden" id="next-n-days">
                                    <input type="number" min="0" name="next-n-days" />
                                </div>
                                <div class="col-sm-6 hidden" id="exact-date">
                                    <input type="text" name="exact-date" class="form-control dateField date_pickers_single" />
                                </div>
                                <div class="col-sm-4 hidden" id="range-from">
                                    <input type="text" name="range-from" class="form-control date_pickers_single" />
                                </div>
                                <div class="col-sm-4 hidden" id="range-to">
                                    <input type="text" name="range-to" class="form-control date_pickers_single" />
                                </div>
                                <div class="col-sm-4 hidden" id="month">
                                    <select class="form-control" name="month">
                                    <option value="1">January</option>
                                    <option value="2">February</option>
                                    <option value="3">March</option>
                                    <option value="4">April</option>
                                    <option value="5">May</option>
                                    <option value="6">June</option>
                                    <option value="7">July</option>
                                    <option value="8">August</option>
                                    <option value="9">September</option>
                                    <option value="10">October</option>
                                    <option value="11">November</option>
                                    <option value="12">December</option>
                              </select>
                                </div>
                                <div class="col-sm-4 hidden" id="year">
                                    <select class="form-control" name="year">
                                    <option value="2019">2019</option>
                                    <option value="2018">2018</option>
                                    <option value="2017">2017</option>
                                    <option value="2016">2016</option>
                                    <option value="2015">2015</option>
                                    <option value="2014">2014</option>
                                    <option value="2013">2013</option>
                                    <option value="2012">2012</option>
                                    <option value="2011">2011</option>
                                    <option value="2010">2010</option>
                                    <option value="2009">2009</option>
                                    <option value="2008">2008</option>
                                </select>
                                </div>
                                <div class="col-sm-4 hidden" id="quarter">
                                    <select class="form-control" name="quarter">
                                    <option value="1">I</option>
                                    <option value="2">II</option>
                                    <option value="3">III</option>
                                    <option value="4">IV</option>
                               </select>
                            </div>
                        </div>
                        <div>
                             <!-- <input type="button" name="submit" class="datepick_popup_btn" id="sub-mit" value="Submit" />-->
                        </div>
                    </div>
                    

            </section>
            <c:if test="${kpiId != null}">
            <input type="hidden" value="${kpiId}" id="kpiId" />
            </c:if>
            <c:if test="${userPrincipal != null}">
			<input id="userDept" type="hidden" name="userDept" value="${userPrincipal.profile.department}">
			</c:if>
            <c:if test="${objId != null}">
            <input type="hidden" value="${objId}" id="objId" />
            </c:if>
            <c:if test="${scoreCardId != null}">
            <input type="hidden" value="${scoreCardId}" id="scoreCardId" />
            </c:if>
             <c:if test="${scordCardPageId != null}">
            <input type="hidden" value="${scordCardPageId}" id="scordCardPageId" />
            </c:if>
            <!-- Plugins Js -->
            <script src="js/app.min.js"></script>
            <script src="js/handlebars.js"></script>
            <script type="text/javascript"
		src="js/knockout-3.5.0.js"></script>
            <script src="js/daterangepicker.min.js"></script>
            <!-- Custom Js -->
            <script src="js/admin.js"></script>
            <script src="js/file-preview.js"></script>
            
            <script src="js/bundles/amcharts4/core.js"></script>
            <script src="js/bundles/amcharts4/charts.js"></script>
            <script src="js/bundles/amcharts4/animated.js"></script>
            <script src="js/amcharts.js"></script>
            <script src="js/serial.js"></script>
            <script src="js/light.js"></script>
            <script src="js/gantt.js"></script>
            <script src="js/jquery-ui.min.js"></script>
            
            <!-- Knob Js -->
            <script src="js/moment.js"></script>
            <!-- <script src="daterangepicker.min.js"></script> -->
            <script src="js/d3.v3.min.js"></script>
            <!-- <script src="d3.v4.js"></script> -->
            <script src="js/d3pie.min.js"></script>
            <script src="js/pages/core.js"></script>
            <script src="js/pages/charts.js"></script>
            <script src="js/pages/spiritedaway.js"></script>
            <script src="js/pages/animated.js"></script>
            <script src="js/jquery.editable.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="js/pickr.es5.min.js"></script>
            <script src="js/datepickerair.js"></script>
            <script src="js/datepicker.en.js"></script>
            <script src="js/widgets.js"></script>
            <script src="js/jquery-resize.js"></script>
            <script src="js/plotly-latest.min.js"></script>
            <script src="js/suncalc.js"></script>
            <script src="js/chart-utils.js"></script>
            <script src="js/bar3d.js"></script>
            <script src="js/lodash.min.js"></script>
            <script src="js/loader.js"></script>
            <!-- <script src="js/pages/widgets/chart-widget.js"></script>-->
                        <script src="js/kpiview.js"></script>
            <script src="js/initiative.js"></script>
            <script src="js/initial.js"></script>
            <script src="js/apexcharts.js"></script>

            <script>
	$(document).on('click','.collapse_arrow_left', function() {
		$(this).css('display', 'none');
		$('.collapse_arrow_right').css('display', 'block');
		var $body = $('body');
		$body.addClass('ini-hide');
		$body.removeClass('ini-show');
		initiativeBar();
	});

	$(document).on('click','.collapse_arrow_right',function() {
		$(this).css('display', 'none');
		$('.collapse_arrow_left').css('display', 'block');
		var $body = $('body');
		$body.addClass('ini-show');
		$body.removeClass('ini-hide');
		initiativeBar();
	});
	$('.kpi_chart_view_popup,.kpi_initiaties_popup,.kpi_description_popup').modal({show: false, backdrop: 'static',keyboard: false});
	
	jQuery.validator.setDefaults({
		  debug: false,
		  success: "valid"
		});
		$( "#kpi_comments_Form" ).validate({
		  rules: {
			  kpi_Comments: {
			      required: true
			    },
			    kpi_comments_id: {
		      required: true
		    },
		    kpi_comments_kpiid: {
		      required: true
		    }
		  },
		   messages: {
	            required: "Name is required"
	        },
	        submitHandler: function(form) {
	        	handleKPICommentsSave('','edit');
	        }
		});
      	
	</script>
			
    </body>