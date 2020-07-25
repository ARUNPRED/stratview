<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />

<link href="${contextroot}/css/employee.css" rel="stylesheet" />
<link href="${contextroot}/css/risk.css" rel="stylesheet" />
<link href="${contextroot}/css/circle.css" rel="stylesheet" />

<style>
.goal-input-calender-icon {
	color: #5a6169;
	position: absolute;
	bottom: 26%;
	right: 6%;
	font-size: 16px;
}

#chartdiv>svg {
	margin: 0 auto;
	display: block;
}

.orientation-right {
	top: 60px !important;
	right: 0 !important;
	left: auto !important;
	position: fixed;
}

#chartdiv_init {
	height: 337px !important;
}

.btn-secondary {
	color: #fff;
	background-color: #6c757d;
	border-color: #6c757d;
	padding: 0px 12px;
	font-size: 12px;
	background-color: #02162a;
	margin-right: 3px;
	margin-bottom: 9px;
	border-radius: 8px !important;
	margin-top: 8px;
}

.btn-secondary:hover {
	color: #fff !important;
	background-color: #6c757d !important;
	border-color: #6c757d !important;
	padding: 0px 12px !important;
	font-size: 12px !important;
	background-color: #02162a !important;
	margin-right: 3px !important;
	margin-bottom: 9px !important;
	border-radius: 8px !important;
	margin-top: 8px !important;
}

.list-group {
	max-height: 215px;
	margin-bottom: 10px;
	overflow: scroll;
	overflow-x: inherit;
	-webkit-overflow-scrolling: touch;
	font-size: 11px;
	border: 1px solid #e9ecef;
}

#result_panel>.panelbody>.list-group>.list-group-item {
	padding: 5px 10px !important;
}

#formula_builder, #summary_calculation {
	font-size: 11px !important;
}

#kpi_formula_popup>.modal-content>.modal-body {
	padding: 0 25px !important;
}

#kpi_formula_popup>.modal-content>.modal-body.card>.tab-content {
	padding: 0;
}

#formula_builder {
	padding-bottom: 0px;
}

.panel:hover {
	cursor: pointer;
}

#formula-builder .col-md-4 {
	margin-bottom: 0px;
}

.modal #kpi_formula_popup {
	background-color: rgba(238, 238, 238, 0) !important;
}

.modal-backdrop {
	opacity: 0.5 !important;
}

#kpi_formula_popup .modal-content .nav li a.nav-link {
	font-size: 12px !important;
}

#datepickers-container {
	z-index: 10000;
}


.toggle-dropdown li {
	cursor: pointer;
}

.multi-column-dropdown h4 {
	font-weight: 600;
	font-size: 15px;
	padding: 7px 0px 4px 10px;
}

.dropdown-menu {
	min-width: 200px;
}

.dropdown-menu.columns-2 {
	min-width: 400px;
}

.dropdown-menu.columns-3 {
	min-width: 600px;
}

.dropdown-menu li a {
	padding: 3px 15px;
	font-weight: 300;
}

.multi-column-dropdown {
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.multi-column-dropdown li a {
	display: block;
	clear: both;
	line-height: 1.428571429;
	color: #333;
	white-space: normal;
}

.multi-column-dropdown li a:hover {
	text-decoration: none;
	color: #333;
	background-color: #f5f5f5;
}

@media ( max-width : 767px) {
	.dropdown-menu.multi-column {
		min-width: 240px !important;
		overflow-x: hidden;
	}
}
</style>
<script type="text/javascript" src="${contextroot}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${contextroot}/js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${contextroot}/js/jquery/additional-methods.min.js"></script>
</head>

<body class="light">
	<input type="hidden" id="ischeckemployeeurlornot" value="EMPLOYEE">

	<jsp:include
		page="../initiatives/modals/initiative_description_modal.jsp"></jsp:include>
	<jsp:include page="../initiatives/modals/subinitiatives_modal.jsp"></jsp:include>
	<jsp:include page="../initiatives/modals/activities_modal.jsp"></jsp:include>
	<jsp:include page="../initiatives/modals/milestones_modal.jsp"></jsp:include>

	<!-- #scorescard -->
	<jsp:include
		page="../scorecard/standardview/modals/perspective_modal.jsp"></jsp:include>
	<jsp:include
		page="../scorecard/standardview/modals/scorecard_modal.jsp"></jsp:include>
	<jsp:include
		page="../scorecard/standardview/modals/objective_modal.jsp"></jsp:include>
	<jsp:include page="../scorecard/standardview/modals/kpi_modal.jsp"></jsp:include>
	<jsp:include
		page="../scorecard/standardview/modals/kpi_formula_modal.jsp"></jsp:include>

	<c:if test="${defaultPageId != null}">
		<input id="pagenumber" type="hidden" name="pagenumber"
			value="${defaultPageId}" />
	</c:if>
	<c:if test="${userPrincipal != null}">
		<input id="userPrincipal" type="hidden" name="userPrincipal"
			value="<c:out value="${userPrincipal.profile.empId}" />">
	</c:if>
	<c:if test="${pagenumber != null}">
		<input id="pagenumber" type="hidden" name="pagenumber"
			value="<c:out value="${pagenumber}" />">
	</c:if>

	<div class="modal fade employee_add_view_popup" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header modalheadercolor">
					<h6 class="modal-title" id="myLargeModalLabel_1">View My KPI</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="">
					<!---------MileStones-------->
					<div class="col-lg-12 col-md-12 sub_initiatives">
						<div class="card">
							<div class="d-flex flex-column employee_div_body_box_emp"
								id="my_kpi_view"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade appraisal_view_popup" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header modalheadercolor">
					<h6 class="modal-title" id="myLargeModalLabel_1">View
						Appraisal</h6>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="">
					<!---------MileStones-------->
					<div class="col-lg-12 col-md-12 sub_initiatives">
						<div class="card">

							<div class="d-flex flex-column employee_div_body_box">
								<div
									class="d-flex flex-row employe_content_border appraisal_box">
									<div
										class="d-flex flex-column flex-fill profile_content justify-content-center">
										<p>Self</p>
									</div>
									<div class="d-flex flex-column">
										<p>
											<i class="green fas fa-circle"
												style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
											Completed
										</p>
										<div>
											<strong>Due on 30 Sep 2019</strong>
										</div>
									</div>
								</div>
								<div
									class="d-flex flex-row employe_content_border appraisal_box">
									<div
										class="d-flex flex-column flex-fill profile_content justify-content-center">
										<p>Manager</p>
									</div>
									<div class="d-flex flex-column">
										<p>
											<i class="red fas fa-circle"
												style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
											Not completed
										</p>
										<div>
											<strong>Due on 30 Sep 2019</strong>
										</div>
									</div>
								</div>
								<div
									class="d-flex flex-row employe_content_border appraisal_box">
									<div
										class="d-flex flex-column flex-fill profile_content justify-content-center">
										<p>Peers</p>
									</div>
									<div class="d-flex flex-column">
										<p>
											<i class="yellow fas fa-circle"
												style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
											Pending
										</p>
										<div>
											<strong>Due on 30 Sep 2019</strong>
										</div>
									</div>
								</div>
								<div
									class="d-flex flex-row employe_content_border appraisal_box">
									<div
										class="d-flex flex-column flex-fill profile_content justify-content-center">
										<p>Direct Reports</p>
									</div>
									<div class="d-flex flex-column">
										<p>
											<i class="green fas fa-circle"
												style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
											Completed
										</p>
										<div>
											<strong>Due on 30 Sep 2019</strong>
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
	<!--#END View -->
	<section class="content">
		<div class="employee_section">
			<div class="container-fluid text-dark">
				<div class="employee_top_section">
					<c:if test="${userPrincipal != null}">
						<c:set value="${userPrincipal.profile}" var="employeeProfileObj"
							scope="session" />
						<div class="employee_details">
							<div class="img_details">
								<img src="${employeeProfileObj.profileImage}" alt="User"
									class="rounded-circle" width="90">
							</div>
							<div class="employee_top_info">
								<div class="employe_head_info">
									<h6 class="flex-fill">${employeeProfileObj.firstName}</h6>
									<p class="flex-fill">${employeeProfileObj.location}</p>
									<p class="flex-fill">${employeeProfileObj.emailAddress}</p>
									<div class="employe_head_info_icon">
										<i class="fas fa-pencil-alt title_edit_icon"></i>
										<ul class="header-dropdown">
											<li class="dropdown title_edit_icon"><a href="#"
												class="dropdown-toggle" data-toggle="dropdown"> <i
													class="far fa-eye" style="padding: 6px;"></i>
											</a>
												<ul
													class="dropdown-menu employeedropdownmenuicon employeedropdown-menu multi-column columns-3 pull-right"
													x-placement="bottom-start"
													style="position: absolute; will-change: transform; top: 0px; left: 0px; width: 180px; transform: translate3d(0px, 24px, 0px);">

													<div class="row">
														<div class="col-sm-4">
															<ul class="multi-column-dropdown">
																<h4>Dashboard</h4>
																<span id="dashboardviewiconTxt"></span>
																<!--<li>
	                                    								<a href="#"><label><input type="checkbox" name="empcomments_iconview" value="empcomments_iconview" checked/>Comments</label></a>
	                                  								</li>-->
															</ul>
														</div>

														<div class="col-sm-4">
															<ul class="multi-column-dropdown">
																<h4>Scorecard</h4>
																<span id="viewiconTxt"></span>
															</ul>
														</div>

														<div class="col-sm-4">
															<ul class="multi-column-dropdown">
																<h4>Activities</h4>
																<span id="activitiesviewiconTxt"></span>
															</ul>
														</div>

													</div>
												</ul></li>
										</ul>

										<ul class="header-dropdown">
											<li class="dropdown title_edit_icon"><a href="#"
												onclick="return false;" class="dropdown-toggle"
												data-toggle="dropdown" role="button" aria-haspopup="true"
												aria-expanded="true"> <i class="material-icons">more_horiz</i>
											</a>
												<ul class="dropdown-menu pull-right"
													x-placement="bottom-start"
													style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">

													<li><a href="#" onclick="return false;"
														class="delete-row">Delete</a></li>
												</ul></li>
										</ul>
									</div>
								</div>
								<div class="employee_profile_details">
									<div class="employee_details_content_info">
										<div class="employee_info">Emp ID</div>
										<p>${employeeProfileObj.empId}</p>
									</div>
									<div class="employee_details_content_info">
										<div class="employee_info">Date of Joining</div>
										<p></p>
									</div>
									<div class="employee_details_content_info">
										<div class="employee_info">Designation</div>
										<p>${employeeProfileObj.title}</p>
									</div>
									<div class="employee_details_content_info">
										<div class="employee_info">Grade</div>
										<p></p>
									</div>
									<div class="employee_details_content_info">
										<div class="employee_info">Department</div>
										<p>${employeeProfileObj.department}</p>
									</div>
									<div class="employee_details_content_info">
										<div class="employee_info">Reporting to</div>
										<c:if test="${employeeProfileObj.parentEmployee != null}">
											<c:set value="${employeeProfileObj.parentEmployee}"
												var="parentEmployeeObj" scope="session" />

											<div class="align-center">
												<ul class="list-unstyled order-list">
													<li class="avatar avatar-sm"><img
														class="rounded-circle"
														src="${parentEmployeeObj.profileImage}" alt="user">
													</li>
												</ul>
											</div>
										</c:if>
										<c:if test="${empty employeeProfileObj.parentEmployee}">
											<p></p>
										</c:if>

									</div>

									<div class="employee_details_content_info">
										<div class="employee_info">Direct Reportees</div>
										<div class="">
											<ul class="list-unstyled order-list">
												<c:if test="${employeeProfileObj.reporteeList != null}">
													<c:forEach items="${employeeProfileObj.reporteeList}"
														var="reporteeObj">
														<li class="avatar avatar-sm"><img
															class="rounded-circle" src="${reporteeObj.profileImage}"
															alt="user"></li>
													</c:forEach>
												</c:if>
												<li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span
													_ngcontent-hhc-c5="" class="badge"><i
														class="fa fa-plus"></i></span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<div class="employee_rating_details">
						<div class="employee_rating_overall">
							<div style="color: #fff;">Overall Score</div>
							<div class="overall_score" style="color: #fff;">4.8</div>
						</div>
						<div class="employee_rating_overall">
							<div style="color: #fff;">Score</div>
							<div class="overall_score" style="color: #fff;">4.5</div>
						</div>
						<div class="employee_rating_all_rating">
							<div style="color: #fff;">All Rating</div>
						</div>
						<div class="employee_rating_self" style="margin-top: 4px;">
							<div class="" style="text-align: center;">
								<span style="color: #fff; font-weight: 600;">4.5</span> <br>
								<span style="color: #D4AF37; font-size: 12px;"> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star-half-alt"></i> <i
									class="far fa-star"></i>
								</span>
							</div>
							<div style="color: #fff;">Self</div>
						</div>
						<div class="employee_rating_manager" style="margin-top: 4px;">
							<div class="" style="text-align: center;">
								<span style="color: #fff; font-weight: 600;">5</span> <br>
								<span style="color: #D4AF37; font-size: 12px;"> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i>
								</span>
							</div>
							<div style="color: #fff;">Manager</div>
						</div>
						<div class="employee_rating_peers" style="margin-top: 4px;">
							<div class="" style="text-align: center;">
								<span style="color: #fff; font-weight: 600;">3.5</span> <br>
								<span style="color: #D4AF37; font-size: 12px;"> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i> <i
									class="fas fa-star-half-alt"></i> <i class="far fa-star"></i>
								</span>
							</div>
							<div style="color: #fff;">Peers</div>
						</div>
						<div class="employee_rating_direct_reports"
							style="margin-top: 4px;">
							<div class="" style="text-align: center;">
								<span style="color: #fff; font-weight: 600;">4</span> <br>
								<span style="color: #D4AF37; font-size: 12px;"> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="far fa-star"></i>
								</span>
							</div>
							<div style="color: #fff;">Direct Reports</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="card" style="padding: 16px;">
						<div class="row" style="margin-bottom: 6px !important;">
							<div class="col-md-12">
								<div id="custom-tab" class="btn-group custom-tab-control"
									role="group" aria-label="Custom Tab">
									<button type="button" class="btn btn-custom-secondary active"
										data-value="Dashboard">Dashboard</button>
									<button type="button" class="btn btn-custom-secondary"
										data-value="Scorecard">Scorecard</button>
									<button type="button" class="btn btn-custom-secondary"
										data-value="Activities">Activities</button>
									<button type="button"
										class="btn btn-custom-secondary riskcallload"
										data-value="Risk">Risk</button>
									<button type="button" class="btn btn-custom-secondary"
										data-value="Appraisal">Appraisal</button>
									<button type="button" class="btn btn-custom-secondary"
										data-value="Documents">Documents</button>
								</div>
							</div>
						</div>
					</div>


					<!-- <div class="" style="background: #fff"> -->
					<div class="row">
						<div class="col-md-12 customTabContent Dashboard">
							<div class="container-fluid">
								<div class="row row-padding">
									<!-- Chart -->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empchart_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<div class="form-group kpi_create_initives mb-0">
													<select id="employeechart" class="mr-4">
														<c:if test="${kpiList != null}">
															<c:forEach items="${kpiList}" var="kpiOption">
																<option value="${kpiOption.id}">${kpiOption.kpiValue.name}</option>
															</c:forEach>
														</c:if>
													</select>
												</div>
												<div class="form-group kpi_create_initives mb-0">
													<select id="chart-selection" name="sub_initative_desc"
														class="mr-4">
														<option value="1">Standard Chart</option>
														<option value="2">Bar Chart</option>
														<option value="3">Line Chart</option>
														<option value="4">Box Chart</option>
														<option value="5">Pie Chart</option>
														<option value="6">Bubble Chart</option>
														<option value="9">Waterfall Chart</option>
														<option value="13">Scatter Chart</option>
														<option value="14">Stacked Bar Chart</option>
														<option value="15">Bar Chart multiple Y Axis</option>
													</select>
												</div>
												<!-- <div class="create_initives add-sub-initiative"><span class="sub_initiative" data-toggle="modal" data-target=".sub_activitie_popup"><i class="fa fa-plus"></i>Activities</span></div> -->
												<ul class="header-dropdown m-r--2 d-flex">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".kpi_chart_view_popup"
																onclick="kpichartviewdetails();">View</a></li>
														</ul></li>
												</ul>
											</div>
											<!-- <div id="chart7"></div> -->
											<div id="chartdiv_init"
												style="height: 339px; width: 355px; position: relative;"></div>
											<div id="chartdiv_expandinit"
												style="height: 339px; width: 355px; position: relative; display: none;"></div>
										</div>
									</div>
									<!------- My KPI ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empmykpi_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														id="mykpiHeader" editable="true">My KPI</strong>
												</h5>
												<!--<div class="create_initives add-sub-initiative"><span class="sub_initiative" data-toggle="modal" data-target=".kpi_description_popup" onclick="handleKpiEvent('0', 'add', '0')"><i class="fa fa-plus"></i>Add</span>
                                            </div>-->
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".employee_add_view_popup"
																onclick="mykpiviewdetails();">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>

											<div class="d-flex flex-column employee_div_body_box">
												<c:if test="${kpiList != null}">
													<c:forEach items="${kpiList}" var="kpiObj">
														<c:if test="${kpiObj.isStatusRed()}">
															<div
																class="d-flex flex-row employe_content_border my_kpi_green sub_initiative_details">
																<div
																	class="d-flex flex-column flex-fill profile_content">
																	<div class="d-flex flex-row">
																		<p>${kpiObj.kpiValue.name}</p>
																	</div>
																	<div class="d-flex flex-row">
																		<div class="d-flex flex-column flex-fill">
																			<div>
																				<strong>Actual : ${kpiObj.kpiValue.actual}</strong>
																			</div>
																		</div>
																		<div class="d-flex flex-column">
																			<div>
																				<strong>Target : ${kpiObj.kpiValue.target}</strong>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="flex-column">
																	<ul class="header-dropdown m-r--2 d-flex">
																		<li class="dropdown"><a href="#"
																			onclick="return false;" class="dropdown-toggle"
																			data-toggle="dropdown" role="button"
																			aria-haspopup="true" aria-expanded="true"> <i
																				class="material-icons">more_vert</i>
																		</a>
																			<ul class="dropdown-menu pull-right"
																				x-placement="bottom-start"
																				style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																				<li><a href="#" data-toggle="modal"
																					data-target=".kpi_description_popup"
																					class="kpidescription"
																					onclick="handleKpiEvent(${kpiObj.id}, 'edit', ${kpiObj.objectiveId})">Edit</a>
																				</li>
																				<li><a href="#"
																					onclick="deleteEmploeedahsboard(${kpiObj.id},'kpi');">Delete</a>
																				</li>
																			</ul></li>
																	</ul>
																</div>
															</div>
														</c:if>
													</c:forEach>
												</c:if>
											</div>


										</div>
									</div>
									<!-------Sub Initiatives------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empappraisal_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true">Appraisal</strong>
												</h5>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".appraisal_view_popup"
																onclick="return false;">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">
												<div
													class="d-flex flex-row employe_content_border appraisal_box">
													<div
														class="d-flex flex-column flex-fill profile_content justify-content-center">
														<p>Self</p>
													</div>
													<div class="d-flex flex-column">
														<p>
															<i class="green fas fa-circle"
																style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
															Completed
														</p>
														<div>
															<strong>Due on 30 Sep 2019</strong>
														</div>
													</div>
												</div>
												<div
													class="d-flex flex-row employe_content_border appraisal_box">
													<div
														class="d-flex flex-column flex-fill profile_content justify-content-center">
														<p>Manager</p>
													</div>
													<div class="d-flex flex-column">
														<p>
															<i class="red fas fa-circle"
																style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
															Not completed
														</p>
														<div>
															<strong>Due on 30 Sep 2019</strong>
														</div>
													</div>
												</div>
												<div
													class="d-flex flex-row employe_content_border appraisal_box">
													<div
														class="d-flex flex-column flex-fill profile_content justify-content-center">
														<p>Peers</p>
													</div>
													<div class="d-flex flex-column">
														<p>
															<i class="yellow fas fa-circle"
																style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
															Pending
														</p>
														<div>
															<strong>Due on 30 Sep 2019</strong>
														</div>
													</div>
												</div>
												<div
													class="d-flex flex-row employe_content_border appraisal_box">
													<div
														class="d-flex flex-column flex-fill profile_content justify-content-center">
														<p>Direct Reports</p>
													</div>
													<div class="d-flex flex-column">
														<p>
															<i class="green fas fa-circle"
																style="font-size: 10px !important; padding: 0px 5px 0 0;"></i>
															Completed
														</p>
														<div>
															<strong>Due on 30 Sep 2019</strong>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

								<!-- GOAL MODAL -->

								<jsp:include page="../organization/modal/goals.jsp"></jsp:include>

								<div id="deleteModalEmployee" class="modal fade">
									<div class="modal-dialog modal-confirm">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title">Delete</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
											</div>
											<div class="modal-body">
												<h5 class="confirm-modal-content">Do you really want to
													delete these records?</h5>
												<br>
												<div class="form-line right">
													<input type="hidden" id="deleterecordid" /> <input
														type="hidden" id="deleterecordtype" />
													<button type="button" class="btn-default1 btn"
														data-dismiss="modal" aria-label="Close">Cancel</button>
													<button type="button"
														class="btn btn-danger confirm-modal-deleteBtn"
														onclick="handleemployeeeventdelete()">Delete</button>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="modal fade goals_view_popup" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel_1"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header modalheadercolor">
												<h6 class="modal-title" id="myLargeModalLabel_1">View
													Goals</h6>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="">
												<!---------goals-------->
												<div class="col-lg-12 col-md-12 sub_initiatives">
													<div class="card">
														<div class="d-flex flex-column employee_div_body_box_emp"
															id="goals_box_view"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="row row-padding">
									<!------- Goals ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empgoal_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true">Goals</strong>
												</h5>
												<div class="create_initives add-sub-initiative">
													<span class="sub_initiative" data-toggle="modal"
														data-target=".add_goals_popup"
														onclick="handleGoalDetailEvent('','add');"><i
														class="fa fa-plus"></i> Add</span>
												</div>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".goals_view_popup"
																onclick="goalsviewdetails()">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">
												<c:if test="${goals != null}">
													<c:forEach items="${goals}" var="goal">
														<c:if test="${goal.isStatusRed()}">
															<div
																class="d-flex flex-row employe_content_border my_kpi_red sub_initiative_details">
																<div class="d-flex flex-column profile_content">
																	<div class="d-flex flex-row">
																		<div class="d-flex flex-column">
																			<p>${goal.goalsValue.name}</p>
																		</div>
																	</div>
																	<div class="d-flex flex-row">
																		<div class="d-flex flex-column flex-fill">
																			<div class="d-flex flex-row">
																				<div class="progress-s progress">
																					<div
																						class="${goal.goalsValue.statusLight}"
																						role="progressbar"
																						aria-valuenow="${goal.goalsValue.progress}"
																						aria-valuemin="0" aria-valuemax="100"
																						style="width:${goal.goalsValue.progress}%;">
																					</div>
																				</div>
																				<div class="progress_value">${goal.goalsValue.progress}%</div>
																			</div>
																		</div>
																		<div class="d-flex flex-column"
																			style="margin-top: -5px;">
																			<div>
																				<strong style="color: #bdbdbd;">Due on <br /></strong><strong>${goal.goalsValue.dateRange}</strong>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="flex-column">
																	<ul class="header-dropdown m-r--2 d-flex">
																		<li class="dropdown"><a href="#"
																			onclick="return false;" class="dropdown-toggle"
																			data-toggle="dropdown" role="button"
																			aria-haspopup="true" aria-expanded="true"> <i
																				class="material-icons">more_vert</i>
																		</a>
																			<ul class="dropdown-menu pull-right"
																				x-placement="bottom-start"
																				style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																				<li><a href="#" data-toggle="modal"
																					data-target=".add_goals_popup"
																					onclick="handleGoalDetailEvent(${goal.id},'edit');">Edit</a>
																				</li>
																				<li><a href="#"
																					onclick="deleteEmploeedahsboard(${goal.id},'goal');">Delete</a>
																				</li>
																			</ul></li>
																	</ul>
																</div>
															</div>
														</c:if>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
									<!------- My Initiative ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empinitiatives_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true" id="myinitiativeHeader">My
														Initiative</strong>
												</h5>
												<!--<div class="create_initives add-sub-initiative"><span class="sub_initiative" data-toggle="modal" data-target=".initatives_description_popup" onClick="handleinitiativeevent('0', 'add')"><i class="fa fa-plus"></i> Add</span></div>-->
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".my_initative_view_popup"
																onclick="myinitiativeEmpView()">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box"
												id="employee_div_body_box">
												<c:if test="${initiativesList != null}">
													<c:forEach items="${initiativesList}" var="initiativesObj">
														<%-- <c:if test="${initiativesObj.isStatusRed()}"> --%>
															<div
																class="d-flex flex-row employe_content_border my_kpi_red sub_initiative_details">
																<div
																	class="d-flex flex-column flex-fill profile_content">
																	<c:if
																		test="${not empty initiativesObj.initiativeValue.description}">
																		<div class="d-flex flex-row">
																			<p>${initiativesObj.initiativeValue.description}</p>
																		</div>
																	</c:if>
																	<div class="d-flex flex-row">
																		<div class="d-flex flex-column flex-fill">
																			<c:if
																				test="${not empty initiativesObj.initiativeValue.progressval}">
																				<div class="d-flex flex-row">
																					<div class="progress-s progress">
																						<div
																							class="${initiativesObj.initiativeValue.statusLight}"
																							role="progressbar"
																							aria-valuenow="${initiativesObj.initiativeValue.progressval}"
																							aria-valuemin="0" aria-valuemax="100"
																							style="width:${initiativesObj.initiativeValue.progressval}%;">
																						</div>
																					</div>
																					<div class="progress_value">${initiativesObj.initiativeValue.progressval}%</div>
																				</div>
																			</c:if>
																		</div>
																		<c:if
																			test="${not empty initiativesObj.initiativeValue.daterange}">
																			<div class="d-flex flex-column">
																				<div>
																					<strong>${initiativesObj.initiativeValue.daterange}</strong>
																				</div>
																			</div>
																		</c:if>
																	</div>
																</div>
																<div class="flex-column">
																	<ul class="header-dropdown m-r--2 d-flex">
																		<li class="dropdown"><a href="#"
																			onclick="return false;" class="dropdown-toggle"
																			data-toggle="dropdown" role="button"
																			aria-haspopup="true" aria-expanded="true"> <i
																				class="material-icons">more_vert</i>
																		</a>
																			<ul class="dropdown-menu pull-right"
																				x-placement="bottom-start"
																				style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																				<li><a href="#" data-toggle="modal"
																					data-target=".initatives_description_popup"
																					onClick="handleinitiativeevent('${initiativesObj.id}', 'edit')">Edit</a>
																				</li>
																				<li><a href="#"
																					onclick="deleteEmploeedahsboard(${initiativesObj.id},'initiative');">Delete</a>
																				</li>
																			</ul></li>
																	</ul>
																</div>
															</div>
														<%-- </c:if> --%>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>


									<! -- my risk -->
									<jsp:include page="../organization/modal/riskDetailModal.jsp"></jsp:include>
									<!-- View My Risks popup -->
									<div class="modal fade risk_view_popup" tabindex="-1"
										role="dialog" aria-labelledby="myLargeModalLabel_1"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header">
													<h4>View My Risks</h4>
													<button type="button" class="close pull-right"
														data-dismiss="modal">&times;</button>
												</div>
												<div class="">
													<!---------My Risks-------->
													<div class="col-lg-12 col-md-12 sub_initiatives">
														<div class="card">
															<div class="d-flex flex-column employee_div_body_box"
																id="myrisk_view_box"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- View My Risks popup -->


									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle my-initiatives">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true">My Risks</strong>
												</h5>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".risk_view_popup"
																onclick="riskListviewdetails()">View</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">


												<c:if test="${riskDetailList != null}">

													<c:forEach items="${riskDetailList}" var="risk">

														<c:choose>
															<c:when test="${risk.riskValue.riskStatus == 'Rare'}">
																<div	class="d-flex flex-row employe_content_border my_kpi_green sub_initiative_details">
															</c:when>
															<c:when test="${risk.riskValue.riskStatus == 'Unlikely'}">
																<div	class="d-flex flex-row employe_content_border my_kpi_yellow sub_initiative_details">
															</c:when>
															<c:when	test="${risk.riskValue.riskStatus == 'Possible' || risk.riskValue.riskStatus == 'Likely' || risk.riskValue.riskStatus == 'Almost Certain'}">
																<div	class="d-flex flex-row employe_content_border my_kpi_red sub_initiative_details">
															</c:when>
															<c:otherwise>
															<div	class="d-flex flex-row employe_content_border my_kpi_default sub_initiative_details">
															</c:otherwise>
														</c:choose>
														<div class="d-flex flex-column flex-fill profile_content">
															<div class="d-flex flex-row">
																<div class="d-flex flex-column flex-fill">
																	<div>
																		<p>${risk.riskValue.desc}</p>
																	</div>
																</div>
																<div class="d-flex flex-column">
																	<div>
																		<strong style="font-size: 12px;">${risk.riskValue.score}</strong>
																	</div>
																</div>
															</div>
															<div class="d-flex flex-row">
																<div class="d-flex flex-column flex-fill">
																	<div>
																		<strong>${risk.riskValue.riskStatus}</strong>
																	</div>
																</div>
																<div class="d-flex flex-column">
																	<div>
																		<strong>${risk.riskValue.dateCompleted}</strong>
																	</div>
																</div>
															</div>
														</div>

														<div class="flex-column">
															<ul class="header-dropdown m-r--2 d-flex">
																<li class="dropdown"><a href="#"
																	onclick="return false;" class="dropdown-toggle"
																	data-toggle="dropdown" role="button"
																	aria-haspopup="true" aria-expanded="true"> <i
																		class="material-icons">more_vert</i>
																</a>
																	<ul class="dropdown-menu pull-right"
																		x-placement="bottom-start"
																		style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																		<li><a href="#" data-toggle="modal"
																			data-target=".riskDetail_description_popup"
																			onclick="handleRiskDetailEvent(${risk.id},'edit')">Edit</a>
																		</li>
																		<li><a href="#"
																			onclick="deleteEmploeedahsboard(${risk.id},'risk');">Delete</a>
																		</li>
																	</ul>
																</li>
															</ul>
														</div>
											</div>

											</c:forEach>
											</c:if>

										</div>
										</div>
									</div>

								</div>
							</div>
						</div>

						<!-- Dashboard end Tab-->

						<!--#START my initiative View -->
						<div class="modal fade my_initative_view_popup" tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel_1"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header modalheadercolor">
										<h6 class="modal-title" id="myLargeModalLabel_1">View My
											Initiative</h6>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="">
										<!---------MileStones-------->
										<div class="col-lg-12 col-md-12 sub_initiatives">
											<div class="card">
												<div class="d-flex flex-column employee_div_body_box_emp"
													id="my_initiative_view"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--#END View -->


						<!-- Scorecard Start Tab-->
						<div class="col-md-12 customTabContent Scorecard"
							style="display: none;">
							<div class="container-fluid">



								<div class="tableview">
									<div id="scordcard-wrapper" class="row"></div>
									<jsp:include
										page="/view/pages/scorecard/standardview/templates/perspective_template.jsp"></jsp:include>
									<jsp:include
										page="/view/pages/scorecard/standardview/templates/perspective_header_row_template.jsp"></jsp:include>
									<jsp:include
										page="/view/pages/scorecard/standardview/templates/objective_row_template.jsp"></jsp:include>
									<jsp:include
										page="/view/pages/scorecard/standardview/templates/kpi_row_template.jsp"></jsp:include>
								</div>
								<!--scorescard div close -->
							</div>
						</div>
						<!-- Scorecard end Tab-->

						<!--#START Sub Activitie View -->
						<div class="modal fade sub_activitie_view_popup" tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel_1"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header modalheadercolor">
										<h6 class="modal-title" id="myLargeModalLabel">View
											Activitives</h6>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="col-lg-12 col-md-12 sub_initiatives">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong id="initactivitiesviewheader"></strong>
												</h5>
											</div>
											<div
												class="d-flex flex-column employee_div_body_box activities-box"
												id="activities-box_view"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--#END Sub Activitie View -->


						<!-- Activities Start Tab-->
						<div class="col-md-12 customTabContent Activities"
							style="display: none;">
							<div class="container-fluid">
								<div class="row row-padding">

									<!------- Activities ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empactivities_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1" id="activitiesHeader"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true" contenteditable="true">Activities</strong>
												</h5>
												<div class="create_initives add-sub-initiative">
													<span class="sub_initiative" data-toggle="modal"
														data-target=".sub_activities_popup"
														onclick="handleActivitiesEvent('0','', 'add')"><i
														class="fa fa-plus"></i>Add</span>
												</div>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".sub_activitie_view_popup"
																onclick="activitiesviewdetails('','employee');">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">
												<c:if test="${activitiesList != null}">
													<c:forEach items="${activitiesList}" var="activitiesObj">
														<div
															class="d-flex flex-row employe_content_border goal_row_box">
															<div class="d-flex flex-column flex-fill profile_content">
																<div class="d-flex flex-row">
																	<p>${activitiesObj.activitiesValue.desc}</p>
																</div>
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column flex-fill">
																		<div class="d-flex flex-row">
																			<div class="icon">
																				<div id="one"
																					class="chart_orange_${activitiesObj.id} chart-pie_${activitiesObj.id}"></div>
																			</div>
																			<div class="pie-progress">${activitiesObj.activitiesValue.progress}%</div>
																		</div>
																	</div>
																	<div class="d-flex flex-column">
																		<div>
																			<strong>${activitiesObj.activitiesValue.dateRange}</strong>
																		</div>
																	</div>
																</div>
															</div>

															<div class="flex-column">
																<ul class="header-dropdown m-r--2 d-flex">
																	<li class="dropdown"><a href="#"
																		onclick="return false;" class="dropdown-toggle"
																		data-toggle="dropdown" role="button"
																		aria-haspopup="true" aria-expanded="true"> <i
																			class="material-icons">more_vert</i>
																	</a>
																		<ul class="dropdown-menu pull-right"
																			x-placement="bottom-start"
																			style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																			<li><a href="#" data-toggle="modal"
																				data-target=".sub_activities_popup"
																				onclick="handleActivitiesEvent('${activitiesObj.initiativeId}',${activitiesObj.id}, 'edit')">Edit</a>
																			</li>
																			<li><a href="#"
																				onclick="deleteActivities(${activitiesObj.id})"
																				class="delete-row">Delete</a></li>
																		</ul></li>
																</ul>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>

									<jsp:include
										page="../initiatives/modals/sub_initiative_view.jsp"></jsp:include>
									<!------- Sub Initiatives ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empsubinitiatives_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														id="subinitiativeHeader" editable="true"
														contenteditable="true">Sub Initiatives</strong>
												</h5>
												<div class="create_initives add-sub-initiative">
													<span class="sub_initiative" data-toggle="modal"
														data-target=".sub_initative_edit_popup"
														onclick="handlesubinitiativeevent('0','', 'add')"><i
														class="fa fa-plus"></i>Add</span>
												</div>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".sub_initative_view_popup"
																onclick="subinitiatiesviewdetails('','employee');">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">
												<c:if test="${subInitiativesList != null}">
													<c:forEach items="${subInitiativesList}"
														var="subInitiativesObj">
														<div
															class="d-flex flex-row employe_content_border goal_row_box">

															<div class="d-flex flex-column flex-fill profile_content">
																<div class="d-flex flex-row">
																	<p>${subInitiativesObj.subInitiativeValue.description}
																	</p>
																</div>
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column flex-fill">
																		<c:if
																			test="${not empty subInitiativesObj.subInitiativeValue.progressval}">
																			<div class="d-flex flex-row">
																				<div class="progress-s progress">
																					<div
																						class="${subInitiativesObj.subInitiativeValue.statusLight}"
																						role="progressbar"
																						aria-valuenow="${subInitiativesObj.subInitiativeValue.progressval}"
																						aria-valuemin="0" aria-valuemax="100"
																						style="width:${subInitiativesObj.subInitiativeValue.progressval}%;">
																					</div>
																				</div>
																				<div class="progress_value">${subInitiativesObj.subInitiativeValue.progressval}%</div>
																			</div>
																		</c:if>
																	</div>
																	<div class="d-flex flex-column">
																		<div>
																			<strong>${subInitiativesObj.subInitiativeValue.dateRange}</strong>
																		</div>
																	</div>
																</div>
															</div>

															<div class="flex-column">
																<ul class="header-dropdown m-r--2 d-flex">
																	<li class="dropdown"><a href="#"
																		onclick="return false;" class="dropdown-toggle"
																		data-toggle="dropdown" role="button"
																		aria-haspopup="true" aria-expanded="true"> <i
																			class="material-icons">more_vert</i>
																	</a>
																		<ul class="dropdown-menu pull-right"
																			x-placement="bottom-start"
																			style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																			<li><a href="#" data-toggle="modal"
																				data-target=".sub_initative_edit_popup"
																				onclick="handlesubinitiativeevent('${subInitiativesObj.initiativeId}',${subInitiativesObj.id}, 'edit')">Edit</a>
																			</li>
																			<li><a href="#"
																				onclick="deleteSubInitiatives(${subInitiativesObj.id})"
																				class="delete-row">Delete</a></li>
																		</ul></li>
																</ul>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>

									<!--#START Milestone View -->
									<div class="modal fade milestones_view_popup" tabindex="-1"
										role="dialog" aria-labelledby="myLargeModalLabel_1"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header modalheadercolor">
													<h6 class="modal-title" id="myLargeModalLabel_1">View
														Milestones</h6>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="col-lg-12 col-md-12 sub_initiatives">
													<div class="card">
														<div class="d-flex flex-column employee_div_body_box"
															id="emp_milestone_view"></div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!------- Milestones ------->
									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empmilestones_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														editable="true" id="empmilstoneHeader"
														contenteditable="true">Milestones</strong>
												</h5>
												<div class="create_initives add-sub-initiative">
													<span class="sub_initiative" data-toggle="modal"
														data-target=".sub_milestone_popup"
														onclick="handleMileStonesEvent('0',0, 'add')"><i
														class="fa fa-plus"></i>Add</span>
												</div>
												<ul class="header-dropdown m-r--2">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".milestones_view_popup"
																onclick="empmilstoneviewdetails();">View</a></li>
															<li><a href="#" onclick="return false;"
																class="delete-row">Delete</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="d-flex flex-column employee_div_body_box">
												<c:if test="${mileStonesList != null}">
													<c:forEach items="${mileStonesList}" var="mileStonesObj">
														<div
															class="d-flex flex-row employe_content_border goal_row_box">

															<div class="d-flex flex-column flex-fill profile_content">
																<div class="d-flex flex-row">
																	<p>${mileStonesObj.mileStonesValue.desc}</p>
																</div>
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column flex-fill">
																		<div class="d-flex flex-row">
																			<div class="progress-s progress">
																				<div
																					class="${mileStonesObj.mileStonesValue.statusLight}"
																					role="progressbar"
																					aria-valuenow="${mileStonesObj.mileStonesValue.progress}"
																					aria-valuemin="0"
																					style="width:${mileStonesObj.mileStonesValue.progress}%"
																					aria-valuemax="100"></div>
																			</div>
																			<div class="progress_value">${mileStonesObj.mileStonesValue.progress}%</div>
																		</div>
																	</div>
																	<div class="d-flex flex-column">
																		<div>
																			<strong>${mileStonesObj.mileStonesValue.dateRange}</strong>
																		</div>
																	</div>
																</div>
															</div>

															<div class="flex-column">
																<ul class="header-dropdown m-r--2 d-flex">
																	<li class="dropdown"><a href="#"
																		onclick="return false;" class="dropdown-toggle"
																		data-toggle="dropdown" role="button"
																		aria-haspopup="true" aria-expanded="true"> <i
																			class="material-icons">more_vert</i>
																	</a>
																		<ul class="dropdown-menu pull-right"
																			x-placement="bottom-start"
																			style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																			<li><a href="#" data-toggle="modal"
																				data-target=".sub_milestone_popup"
																				onclick="handleMileStonesEvent('${mileStonesObj.initiativeId}',${mileStonesObj.id}, 'edit')">Edit</a>
																			</li>
																			<li><a href="#"
																				onclick="deleteMileStones(${mileStonesObj.id})"
																				class="delete-row">Delete</a></li>
																		</ul></li>
																</ul>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</div>

									<!-- milstone end-->

									<!-- comments start -->


									<div class="modal fade emp_comments_view_popup" tabindex="-1"
										role="dialog" aria-labelledby="myLargeModalLabel_1"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header modalheadercolor">
													<h6 class="modal-title" id="myLargeModalLabel_1">View
														Comments</h6>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="">
													<div class="col-lg-12 col-md-12 sub_initiatives">
														<div class="card">
															<div
																class="d-flex flex-column employee_div_body_box sub-ini-box"
																id="sub-ini-box_view">
																<div class="comment-history" id="comment-conversation_1">
																	<ul id="comment-conversation_employee">
																		<div id="emp_comments-row-box_view"></div>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>



									<div
										class="col-lg-4 col-md-6 sub_initiatives select-toggle empcomments2_iconview">
										<div class="card">
											<div class="header d-flex flex-row">
												<h5 class="prob d-flex flex-fill">
													<strong class="editableTxt1"
														onkeypress="return (this.innerText.length <= 25)"
														id="empcommentsHeader" editable="true">Comments</strong>
												</h5>
												<ul class="header-dropdown m-r--2 d-flex">
													<li class="dropdown m-t--10"><a href="#"
														onclick="return false;" class="dropdown-toggle"
														data-toggle="dropdown" role="button" aria-haspopup="true"
														aria-expanded="true"> <i class="material-icons">more_vert</i>
													</a>
														<ul class="dropdown-menu pull-right"
															x-placement="bottom-start"
															style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
															<li><a href="#" data-toggle="modal"
																data-target=".emp_comments_view_popup"
																onclick="empcommentsviewdetails()">View</a></li>
														</ul></li>
												</ul>
											</div>
											<div class="comment-history" id="comment-conversation_1">
												<ul id="comment-conversation_employee">
													<c:if test="${commentsList != null}">
														<c:forEach items="${commentsList}" var="commentsObj">
															<li>
																<div class="d-flex flex-row">
																	<div class="flex-column comment_image">
																		<img src="images/user/usrbig6.jpg"
																			class="rounded-circle" alt="User" width="40">
																	</div>
																	<div class="flex-column comment_details">
																		<ul>
																			<li><span class="message-data-name"><strong>${commentsObj.commentsValue.createdByName}</strong></span>
																				<span class="message-data-time">${commentsObj.createdTime}</span>
																			</li>
																			<li class="commentsdesc">${commentsObj.commentsValue.desc}</li>
																			<li>
																				<ul class="d-flex flex-row">
																					<li>Reply</li>
																					<li>Like</li>
																				</ul>
																			</li>
																		</ul>
																	</div>
																	<div class="flex-column">
																		<ul class="header-dropdown m-r--2 pt-2 d-flex">
																			<li class="dropdown"><a href="#"
																				onclick="return false;" class="dropdown-toggle"
																				data-toggle="dropdown" role="button"
																				aria-haspopup="true" aria-expanded="true"> <i
																					class="material-icons">more_vert</i>
																			</a>
																				<ul class="dropdown-menu pull-right"
																					x-placement="bottom-start"
																					style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																					<li><a href="#"
																						onclick="deleteComments(${commentsObj.id})">Delete</a>
																					</li>
																				</ul></li>
																		</ul>
																	</div>
																</div>
															</li>
														</c:forEach>
													</c:if>
												</ul>
											</div>
											<div class="comment_send">
												<form id="emp_comments_Form">
													<div class="form-group d-flex flex-row align-items-center">
														<div class="form-line">
															<input type="text" name="empComments" id="empComments"
																class="form-control" placeholder="Type a comment..."
																autocomplete="off" />
														</div>
														<div class="send_btn"
															onclick="handleEmployeeCommentsSave('add')">
															<i class="fas fa-arrow-right"></i>
														</div>
													</div>
												</form>
											</div>

										</div>
									</div>
								</div>


								<!-- commetns end -->

							</div>
						</div>
					</div>
					<!-- Activities end Tab-->

					<!-- Risk Start Tab-->
					<div class="col-md-12 customTabContent Risk" style="display: none;">
						<div class="container-fluid">
							<div class="row row-padding">
								<style>
td {
	white-space: nowrap !important;
}

.dashboard-table tbody tr td, .dashboard-table tbody tr th {
	border: 1px solid #ececec !important;
	padding: 14px 5px 14px 5px;
	font-size: 12px !important;
}

.dashboard-table tbody tr th {
	background-color: #f7f7f7;
}

.dashboard-table tbody tr td {
	font-weight: 500 !important;
	color: #555;
}

.dashboard-table tbody tr th {
	font-weight: 600 !important;
	color: #1e252d;
}

.risk-icon i:hover {
	color: #fff !important;
}
</style>
								<div id="deleteModalrisksummary" class="modal fade">
									<div class="modal-dialog modal-confirm">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title">Delete</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
											</div>
											<div class="modal-body">
												<h5 class="confirm-modal-content">Do you really want to
													delete these records?</h5>
												<br>
												<div class="form-line right">
													<input type="hidden" id="deleterecordid" />
													<button type="button" class="btn-default1 btn"
														data-dismiss="modal" aria-label="Close">Cancel</button>
													<button type="button"
														class="btn btn-danger confirm-modal-deleteBtn"
														onclick="handleriskeventdelete()">Delete</button>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- table view start -->
								<div class="modal fade Risktableview" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel_1"
									aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered"
										style="max-width: 80%;">
										<div class="modal-content">
											<div class="modal-header modalheadercolor">
												<h6 class="modal-title" id="myLargeModalLabel_1">View
													Tables</h6>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>

											<div class="body table-responsive sub-ini-box">
												<div class="col-lg-12 col-md-12">
													<div class="card">
														<div class="tableBody">
															<div class="table-responsive Month box">
																<table
																	class="table dashboard-task-infos align-center dashboard-table"
																	id="table1" style="margin-bottom: 0px !important;">
																	<tbody class="viewsummarytable1">

																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!-- table view end -->

								<jsp:include
									page="../organization/modal/risksummary_comments_popup.jsp"></jsp:include>

								<!--#START Sub Comment View -->
								<div class="modal fade" id="risksum_comments_view_popup"
									tabindex="-1" role="dialog"
									aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header">
												<h4>View Comments</h4>
												<button type="button" class="close pull-right"
													data-dismiss="modal">&times;</button>
											</div>
											<div class="col-lg-12 col-md-12 sub_initiatives sub-ini-box">
												<div class="card">
													<div class="comment-history" id="comment-conversation_1">

														<ul id="view_summarycomment-conversation"
															style="border: 1px solid #e9ecef;">

														</ul>

													</div>
												</div>
												</li>
												</ul>
											</div>
										</div>
									</div>
								</div>


								<!-------Heat Map------->
								<div
									class="col-lg-8 col-md-6 sub_initiatives select-toggle causenconsequence">
									<div class="card">
										<div class="header d-flex flex-row">
											<h5 class="prob d-flex flex-fill">
												<strong class="editableTxt1"
													onkeypress="return (this.innerText.length <= 25)"
													editable="true">Heat Map</strong>
											</h5>
											<ul class="header-dropdown m-r--2">
												<li class="dropdown m-t--10"><a href="#"
													onclick="return false;" class="dropdown-toggle"
													data-toggle="dropdown" role="button" aria-haspopup="true"
													aria-expanded="true"> <i class="material-icons">more_vert</i>
												</a>
													<ul class="dropdown-menu pull-right"
														x-placement="bottom-start"
														style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
														<li><a href="#" data-toggle="modal"
															data-target=".cause_conq_view_popup"
															onclick="return false;">View</a></li>
														<li><a href="#" onclick="return false;"
															class="delete-row">Delete</a></li>
													</ul></li>
											</ul>
										</div>
										<div class="d-flex flex-column employee_div_body_box"></div>
									</div>
								</div>

								<!-- Comment Section -->
								<div
									class="col-lg-4 col-md-6 sub_initiatives select-toggle summarycomments">
									<div class="card">
										<div class="header d-flex flex-row">
											<h5 class="prob d-flex flex-fill">
												<strong class="editableTxt1"
													onkeypress="return (this.innerText.length <= 25)"
													editable="true">Comments</strong>
											</h5>
											<ul class="header-dropdown m-r--2 d-flex">
												<li class="dropdown m-t--10"><a href="#"
													onclick="return false;" class="dropdown-toggle"
													data-toggle="dropdown" role="button" aria-haspopup="true"
													aria-expanded="true"> <i class="material-icons">more_vert</i>
												</a>
													<ul class="dropdown-menu pull-right"
														x-placement="bottom-start"
														style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
														<li><a href="#" data-toggle="modal"
															data-target="#risksum_comments_view_popup"
															onclick="commentsviewdetails()">View</a></li>
													</ul></li>
											</ul>
										</div>
										<div class="comment-history" id="comment-conversation_1">
											<ul id="comment-conversation"
												class="summarycomment-conversation_1">
												<jsp:include
													page="../organization/templates/summarycomments_template.jsp"></jsp:include>
												<script id="summarycomment-template-parent"
													type="x-tmpl-mustache">
									{{{commentRows}}}
								</script>
											</ul>
										</div>
										<div class="comment_send">
											<div class="form-group d-flex flex-row align-items-center">
												<div class="form-line"
													style="width: 100%; position: relative; margin-left: 3% !important;">
													<input type="text" class="form-control"
														id="risksumarycommentval" placeholder="Type a comment..." />
												</div>
												<div class="send_btn" id="send-btn"
													onclick="handleRiskSummaryCommentsSave('add')">
													<i class="fas fa-arrow-right"></i>
												</div>
											</div>
										</div>
									</div>
								</div>



								<!---------Table-------->
								<div
									class="col-lg-8 col-md-8 select-toggle tables sub_initiatives">
									<div class="card">
										<div class="header d-flex flex-row">
											<h5 class="prob d-flex flex-fill">
												<strong class="editableTxt1"
													onkeypress="return (this.innerText.length <= 25)"
													editable="true">Tables</strong>
											</h5>
											<ul class="header-dropdown m-r--2 d-flex">
												<li class="dropdown m-t--10"><a href="#"
													onclick="return false;" class="dropdown-toggle"
													data-toggle="dropdown" role="button" aria-haspopup="true"
													aria-expanded="true"> <i class="material-icons">more_vert</i>
												</a>
													<ul class="dropdown-menu pull-right"
														x-placement="bottom-start"
														style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
														<li><a href="#" data-toggle="modal"
															data-target=".Risktableview"
															onclick="viewsummaryviewdetails()">View</a></li>
														<li><a href="#" onclick="return false;"
															class="delete-row">Delete</a></li>
													</ul></li>
											</ul>
										</div>

										<div class="body table-responsive sub-ini-box">
											<div class="col-lg-12 col-md-12">
												<div class="card">
													<div class="tableBody">
														<div class="table-responsive Month box">
															<table
																class="table dashboard-task-infos align-center dashboard-table"
																id="table1" style="margin-bottom: 0px !important;">
																<tbody class="summarytable1">
																	<jsp:include
																		page="../organization/templates/summaryTable.jsp"></jsp:include>
																	<script id="summary-template-parent"
																		type="x-tmpl-mustache">
													{{{bodyRows}}}
												</script>
																</tbody>
															</table>
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
					<!-- risk end Tab-->
					<!-- Appraisal Start Tab-->
					<div class="col-md-12 customTabContent Appraisal"
						style="display: none;">
						<div class="container-fluid">
							<!-- <div class="tab-pane body" id="appraisal">
                            <div class="row">
                                <div class="col-xs-12 ol-sm-12 col-md-12 col-lg-12">
                                    <div class="panel-group" id="appraisal_accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-col-pink">
                                            <div class="panel-heading" role="tab" id="appraisal_heading">
                                                <h4 class="panel-title">
                                                    <a role="button" data-toggle="collapse" data-parent="#appraisal_accordion" href="#appraisal_collapse" aria-expanded="false" aria-controls="appraisal_collapse" class="collapsed">
                                                        <i class="material-icons">perm_contact_calendar</i> Collapsible
                                                        Group Item #1
                                                        <span class="badge float-right">14 new</span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="appraisal_collapse" class="panel-collapse in collapse" role="tabpanel" aria-labelledby="appraisal_heading" style="">
                                                <div class="panel-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                    accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                    non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
                                                    laborum
                                                    eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
                                                    squid
                                                    single-origin coffee nulla assumenda shoreditch et. Nihil anim
                                                    keffiyeh
                                                    helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                                                    proident.
                                                    Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                                    farm-to-table,
                                                    raw denim aesthetic synth nesciunt you probably haven't heard of
                                                    them
                                                    accusamus labore sustainable VHS.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-padding">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header d-flex flex-row">
                                            <h2 class="prob d-flex flex-fill"><strong>Appraisal</strong></h2>
                                            <div class="create_initives add-milestones"><span class="sub_initiative" data-toggle="modal" data-target=".sub_milestone_popup"><i class="fa fa-plus"></i>Category</span></div>
                                        </div>
                                        <div class="body">
                                            <div class="row clearfix">
                                                <div class="col-xs-12 ol-sm-12 col-md-12 col-lg-12">
                                                    <div class="panel-group" id="accordion_17" role="tablist" aria-multiselectable="true">
                                                        <div class="panel panel-col-pink">
                                                            <div class="panel-heading" role="tab" id="headingOne_17">
                                                                <h4 class="panel-title">
                                                                    <a role="button" data-toggle="collapse" data-parent="#accordion_17" href="#collapseOne_17" aria-expanded="false" aria-controls="collapseOne_17" class="collapsed">
                                                                        Decision Making
                                                                        <span class="badge bg-pink float-right">14 new</span>
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne_17" class="panel-collapse in collapse" role="tabpanel" aria-labelledby="headingOne_17" style="">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-xs-12 ol-sm-12 col-md-8 col-lg-8">
                                                                            Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                                            accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
                                                                            laborum
                                                                        </div>
                                                                        <div class="col-xs-12 ol-sm-12 col-md-4 col-lg-4">
                                                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
                                                                            squid
                                                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim
                                                                            keffiyeh
                                                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                                                                            proident.
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="panel panel-col-orange">
                                                            <div class="panel-heading" role="tab" id="headingFour_17">
                                                                <h4 class="panel-title">
                                                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_17" href="#collapseFour_17" aria-expanded="false" aria-controls="collapseFour_17">
                                                                        <i class="material-icons">folder_shared</i> Collapsible Group
                                                                        Item #4
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseFour_17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour_17" style="">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-xs-12 ol-sm-12 col-md-8 col-lg-8">
                                                                            Anim pariatur cliche reprehenderit, enim eiusmod high life
                                                                            accusamus terry richardson ad squid. 3 wolf moon officia aute,
                                                                            non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
                                                                            laborum
                                                                        </div>
                                                                        <div class="col-xs-12 ol-sm-12 col-md-4 col-lg-4">
                                                                            eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
                                                                            squid
                                                                            single-origin coffee nulla assumenda shoreditch et. Nihil anim
                                                                            keffiyeh
                                                                            helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                                                                            proident.
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
                                </div>
                            </div> -->
							<h5>Appraisal</h5>
						</div>
					</div>
					<div class="col-md-12 customTabContent Documents"
						style="display: none;">
						<div class="container-fluid">
							<h5>Documents</h5>
						</div>
					</div>

				</div>
			</div>
		</div>
		</div>
		<!-- #END# KPI chart PopUp -->
		<div class="modal fade kpi_chart_view_popup" tabindex="-1"
			role="dialog" aria-labelledby="myLargeModalLabel_1"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg"
				style="max-width: 100%">
				<div class="modal-content">
					<div class="modal-header modalheadercolor">
						<h6 class="modal-title" id="myLargeModalLabel_1">View KPI
							Chart Status</h6>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container-fluid">
							<div id="chart_modal"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# KPI chart PopUp -->

	</section>

	
	<script src="${contextroot}/js/apexcharts.js"></script>
	<script type="text/javascript"
		src="${contextroot}/js/chosen.jquery.min.js"></script>
	<script src="${contextroot}/js/handlebars.js"></script>
	<script src="${contextroot}/js/standard_view.js"></script>
	<script src="${contextroot}/js/initial.js"></script>
	<script src="${contextroot}/js/initiative.js"></script>
	<script src="${contextroot}/js/risk.js"></script>
	<script src="${contextroot}/js/risksummary.js"></script>
	<script src="${contextroot}/js/employee.js"></script>
	<script>
      
		$("#custom-tab").on("click", "button", function (e) {
        var CustomTabValue = this.dataset.value;
        if (CustomTabValue) {
          $(".customTabContent")
            .not("." + CustomTabValue)
            .hide();
          $("." + CustomTabValue).show();
        } else {
          $(".customTabContent").hide();
        }
        $(this).parent().find("button").removeClass("active");
        $(this).addClass("active");
      });
      

      
  	$('#kpi_formula').on('click', function() {
		$("#kpi_trigger").trigger("click");
	});

	$(".list-group-item, .opr").click(function() {

	});

	$("#add").click(function() {
		var value = $("#formula").val();
		var ul = $(".formula-panel");
		var li = document.createElement("li");
		li.setAttribute("class", "list-group-item");
		li.appendChild(document.createTextNode(value));
		ul.append(li);
		$("#formula").val('');
	});
      

      
		$("#OpenImgUpload").click(function () {
        	$("#importscorescrd").trigger("click");
        	return false;
      	});
		
		$('.date_pickers').datepicker({
		    language: 'en',
		    minDate: new Date(),
		    range: true,
		    autoClose: true,
		    position: "top left",
		    todayButton: true,
		    onSelect: function(fd) {
		        // $('.datepickers-container').hide();
		    }
		});
		
			<c:forEach items="${activitiesList}" var="riskActivity">
			var chartvalue		=	parseInt(100)-parseInt(${riskActivity.activitiesValue.progress});
			var chartbalance	=	${riskActivity.activitiesValue.progress};
			
			if(chartvalue	==	0){
				chartbalance	=	100;
			}
			
			/*var statusindi		=	${riskActivity.activitiesValue.statusIndicator};
			var colorstatus		=	"#1aa243";
			if(statusindi	==	"GREEN"){
				colorstatus		=	"#1aa243";
			}*/
			
			if(chartbalance 	==	100){
				$(".chart_orange_${riskActivity.id}, .chart-pie_${riskActivity.id}").sparkline([ chartbalance, chartvalue ], {
					type : 'pie',
					height : '30px',
					sliceColors : [ "#1aa243", "#ffffff" ]
				});
			}else{
				$(".chart_orange_${riskActivity.id}, .chart-pie_${riskActivity.id}").sparkline([ chartbalance, chartvalue ], {
					type : 'pie',
					height : '30px',
					sliceColors : [ "#ffd500", "#ffffff" ]
				});	
			}
		</c:forEach>
		
		$('[class^=chart_orange]').children(':first-child').css('border',
				'1px solid #c7c7c7').css('border-radius', '50%');

      		
	$('.riskuser,.commentsuser,.planuser').initial({
				 charCount : 2,
				 height : 30,
				 width : 30,
				 fontSize : 18
				});
				
	</script>
</body>