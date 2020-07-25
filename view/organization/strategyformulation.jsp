<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>StratRoom</title>
<!-- Favicon-->
<!-- <link rel="icon" href="images/favicon.ico" type="image/x-icon"> -->
<!-- Plugins Core Css -->
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/app.min.css" rel="stylesheet">
<!-- Custom Css -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link href="css/startroom/wedgets.css" rel="stylesheet" />
<!-- You can choose a theme from css/styles instead of get all themes -->
<link href="css/styles/all-themes.css" rel="stylesheet" />
<link href="css/employee.css" rel="stylesheet" />
<link href="css/circle.css" rel="stylesheet" />
<link href="${contextroot}/css/daterangepicker.min.css" rel="stylesheet">
<link rel="stylesheet" href="${contextroot}/css/datepickerair.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script type="text/javascript" src="${contextroot}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${contextroot}/js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${contextroot}/js/jquery/additional-methods.min.js"></script>

<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />

<script async defer src="https://buttons.github.io/buttons.js"></script>

<style>
.orientation-right {
	top: 60px !important;
	right: 0 !important;
	left: auto !important;
	position: fixed;
}
</style>
<!-- <link href="../../assets/daterangepicker/daterangepicker.min.css" rel="stylesheet"> -->
<style>
#chartdiv>svg {
	margin: 0 auto;
	display: block;
}
</style>

<style>
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
</style>

</head>

<body class="light">
	<!-- Page Loader -->
	<jsp:include page="../common/top-navigation.jsp"></jsp:include>
	<!-- #Top Bar -->
	<div>
		<jsp:include page="../common/left-navigation.jsp"></jsp:include>
		<jsp:include page="../common/right-navigation.jsp"></jsp:include>
	</div>
	<!--#END View -->
	<section class="content">

		<div class="page-header row no-gutters py-4">
			<div class="col-12 col-sm-12 text-center text-sm-left mb-0">
				<span class="text-uppercase page-subtitle">Overview</span>
				<h3 class="page-title">Strategy Formulation</h3>
			</div>
		</div>


		<!-- Default Light Table -->
		<div class="card card-small">
			<div class="card-body p-0 pb-3 text-center">
				<div class="row mt-2">

					<div class="col-lg-4 col-md-6 col-sm-12 well_head_last">
						<div class="well">
							<h6>
								<b>Strategic Plan Period</b>
							</h6>
						</div>
						<br />
						<div id="blog-overview-date-range"
							class="input-daterange input-group input-group-sm my-auto ml-auto mr-auto ml-sm-auto mr-sm-0 p-2 pl-4"
							style="max-width: 350px;">
							<input type="text" class="input-sm form-control" name="start"
								placeholder="Start Date" id="startdate">
							<script>
								$('#startdate').datepicker();
							</script>
							<input type="text" class="input-sm form-control" name="end"
								placeholder="End Date" id="enddate">
							<script>
								$('#enddate').datepicker();
							</script>
						</div>

					</div>

					<div class="col-lg-3 col-md-6 col-sm-12 well_head">
						<div class="well">
							<h6>
								<b>Plan Type</b>
							</h6>
						</div>
						<form class="p-4">
							<select class="form-control">
								<option value="">Long Term</option>
								<option value="">Medium Term</option>
								<option value="">Small Term</option>
							</select>

						</form>
					</div>
					<div class="col-lg-5 col-md-12 col-sm-12 p-2 well_head_last">
						<div class="well">
							<h6>
								<b> Formulation Team</b>
							</h6>
						</div>
						<div class="p-2">Add Employee :</div>
						<div class="avatar-wrapper avatar-wrapper-overlap">
							<div class="avatar-icon-wrapper avatar-icon-sm">
								<div class="avatar-icon">
									<img src="images/avatars/0.jpg" alt="">
								</div>
							</div>
							<div class="avatar-icon-wrapper avatar-icon-sm">
								<div class="avatar-icon">
									<img src="images/avatars/0.jpg" alt="">
								</div>
							</div>

							<div class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
								<div class="avatar-icon add_icon">
									<div class="image-upload">
										<label for="file-input"> <i>+</i>
										</label> <input id="file-input" type="file" />
									</div>
								</div>
							</div>
						</div>
						<br />
						<div class="col-lg-12 col-md-12 col-sm-12 ">
							<div class="p-2">Approved By</div>
							<div
								class="avatar-wrapper col-md-6 avatar-wrapper-overlap float-left">
								<div class="avatar-icon-wrapper avatar-icon-sm">
									<div class="avatar-icon">
										<img src="images/avatars/0.jpg" alt="">
									</div>
								</div>

								<div class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
									<div class="avatar-icon add_icon">
										<div class="image-upload">
											<label for="file-input"> <i>+</i>
											</label> <input id="file-input" type="file" />
										</div>
									</div>
								</div>
							</div>

							<input type="text" class="input-sm col-md-6 form-control"
								name="approved" placeholder="Approved Date" id="approveddate">
							<script>
								$('#approveddate').datepicker();
							</script>

						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- End Default Light Table -->



		<div class="page-header row no-gutters py-4">
			<div class="col-12 col-sm-12 text-center text-sm-left mb-0">
				<span class="text-uppercase page-subtitle">Overview</span>
				<h3 class="page-title">Corporate Strategy</h3>
				<!--a href="#" class="btn btn-success float-right"><b> Save </b></a-->
			</div>
		</div>
		<!-- End Page Header -->




		<div class="row container-fluid">
			<div class="col-lg-12">
				<ul class="nav nav-tabs" id="tabs">
					<li class="p-1 float-left"><button
							class="form-control rounded-circle" onclick="addTab('#content');">
							<i class="fa fa-save round"></i>
						</button></li>

					<li class="p-1 float-left"><button
							class="form-control rounded-circle" onclick="addTab('#content');">
							<i class="fa fa-plus round"></i>
						</button></li>


					<li class="nav-item p-1"><a class="nav-link active"
						onclick="active();" data-toggle="tab" href="#finance"><input
							class="form-control list" type="text" value="Finance"></a></li>
					<li class="nav-item p-1"><a class="nav-link"
						onclick="active();" data-toggle="tab" href="#business"><input
							class="form-control list" type="text" value="Business"></a></li>
					<!--li class="nav-item m-l-10">
                                <a class="nav-link" data-toggle="tab" href="#appraisal">Appraisal</a>
                            </li>
                            <li class="nav-item m-l-10">
                                <a class="nav-link" data-toggle="tab" href="#documents">Documents</a>
                            </li-->

				</ul>
			</div>
			<!--div class="card col-lg-1 ">
						<ul class="nav">
						
						<li class="p-1 float-left"><button class="form-control rounded-circle" onclick="addTab('#content');"> <i class="fa fa-plus"></i>  </button></li>
							<li class="p-1 float-right"><button class="form-control rounded-circle" onclick="addTab('#content');"> <i class="fa fa-save"></i>  </button></li>	
                        </ul></div-->




			<script>
				function active() {
					$("#tabs li").removeClass("active");
					$(".tab-content .tab-pane").removeClass("active");
				}
				function addTab(link) {
					// hide other tabs
					$("#tabs li").removeClass("active");

					// add new tab and related content
					$("#tabs")
							.append(
									"<li class='nav-item p-1'><a class='nav-link' data-toggle='tab' href='#content'> <input class='form-control list' type='text' value='New Tab'> </a></li>");

				}

				//$("#" + contentname).show();
			</script>
		</div>

		<div class="tab-content" id="tab-content">
			<div class="tab-pane body" id="content">

				<div class="card card-small objective">

					<div class="card-body p-0 pb-3 text-center" id="objective_extra">
						<div class="row">
							<div class="col-lg-12 pt-4 text-center">

								<div class="float-right p-1 pr-4">
									<button class="form-control" data-toggle="modal"
										data-target="#max">
										<i class="fa fa-external-link"></i> </a>
								</div>
								<div class="float-right p-1">
									<button id="add_objective"
										onclick="objective_extra('objective_extra')"
										class="form-control">
										<i class="fa fa-plus"></i> </a>
								</div>

							</div>
						</div>

						<div class="row mt-2" id="row_objective">
							<div class="col-lg-4 col-md-12 col-sm-12">
								<div class="well_head_first">
									<div class="well">
										<ul class="nav">
											<li class="col-lg-6"><h6>
													<b> Objectives</b>
												</h6></li>
											<li><button id="btn_copy"
													onclick="initiative('obj_extra')"
													class="form-control rounded-circle">
													<i class="fa fa-plus"></i>
												</button></li>
										</ul>
									</div>
									<form class="p-1 pl-2">
										<div id="obj_extra">
											<div class="float-left pt-4">
												<textarea type="text" class="form-control" cols="35"
													rows="2"> </textarea>
											</div>
											<div
												class="avatar-wrapper avatar-wrapper-overlap float-left pt-4 pl-1">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

												<div
													class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
													<div class="avatar-icon add_icon">
														<div class="image-upload">
															<label for="file-input"> <i>+</i>
															</label> <input id="file-input" type="file" />
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->
									</form>
								</div>
							</div>
							<div class="col-lg-4 col-md-12 col-sm-12 well_head">
								<div class="well">

									<ul class="nav">
										<li class="col-lg-10"><h6>
												<b> Proposed KPI'S </b>
											</h6></li>

										<li><button id="btn_copy" onclick="kpi('kpi_extra')"
												class="form-control rounded-circle">
												<i class="fa fa-plus"></i>
											</button></li>
									</ul>

								</div>

								<form class="p-2 pb-0">
									<div class="text-left pb-1">List of KPI'S</div>
									<div class="float-left" id="kpi_extra">
										<textarea cols="50" rows="2" class="form-control mb-2"> </textarea>
									</div>
									<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->

								</form>



							</div>
							<div class="col-lg-4 col-md-12 col-sm-12">
								<div class="well col-md-12">
									<ul class="nav">
										<li class="col-lg-7"><h6>
												<b> Proposed Initiative</b>
											</h6></li>
										<li><button onclick="initiative('initiative_extra');"
												class="form-control rounded-circle">
												<i class="fa fa-plus"></i>
											</button></li>
									</ul>
								</div>
								<br />
								<form class="p-1 pl-2">
									<div class="col-lg-12" id="initiative_extra">
										<div class="float-left  pt-1">
											<textarea type="text" class="form-control" cols="35" rows="2"> </textarea>
										</div>
										<div
											class="avatar-wrapper avatar-wrapper-overlap float-left pt-1 pl-1">
											<div class="avatar-icon-wrapper avatar-icon-sm">
												<div class="avatar-icon">
													<img src="images/avatars/0.jpg" alt="">
												</div>
											</div>

											<div
												class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
												<div class="avatar-icon add_icon">
													<div class="image-upload">
														<label for="file-input"> <i>+</i>
														</label> <input id="file-input" type="file" />
													</div>
												</div>
											</div>
										</div>


									</div>


									<!--div class="float-left col-lg-6 ">
	<br/>
		<a href="#" class="form-control btn_control"><i class="fa fa-save"></i> Save </a>
	</div-->

								</form>


							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="tab-content" id="tab-content">
				<div class="tab-pane body active" id="finance">

					<!-- Default Light Table -->
					<div class="card card-small objective">

						<div class="card-body p-0 pb-3 text-center" id="objective_first">
							<div class="row">
								<div class="col-lg-12 pt-4 text-center">

									<div class="float-right p-1 pr-4">
										<button class="form-control" data-toggle="modal"
											data-target="#max">
											<i class="fa fa-external-link"></i> </a>
									</div>
									<div class="float-right p-1 ">
										<button id="add_objective"
											onclick="objective_first('objective_first')"
											class="form-control">
											<i class="fa fa-plus"></i> </a>
									</div>

								</div>
							</div>

							<div class="row mt-2" id="row_objective">
								<div class="col-lg-4 col-md-12 col-sm-12 ">
									<div class="well_head_first">

										<div class="well">
											<ul class="nav">
												<li class="col-lg-6"><h6>
														<b> Objectives</b>
													</h6></li>
												<li><button id="btn_copy"
														onclick="initiative('obj_first')"
														class="form-control rounded-circle">
														<i class="fa fa-plus"></i>
													</button></li>
											</ul>
										</div>
										<form class="p-1 pl-2">
											<div id="obj_first">
												<div class="float-left  pt-4">
													<textarea type="text" class="form-control" cols="35"
														rows="2"> </textarea>
												</div>
												<div
													class="avatar-wrapper avatar-wrapper-overlap float-left pt-4 pl-1">
													<div class="avatar-icon-wrapper avatar-icon-sm">
														<div class="avatar-icon">
															<img src="images/avatars/0.jpg" alt="">
														</div>
													</div>

													<div
														class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
														<div class="avatar-icon add_icon">
															<div class="image-upload">
																<label for="file-input"> <i>+</i>
																</label> <input id="file-input" type="file" />
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->
										</form>
									</div>
								</div>
								<div class="col-lg-4 col-md-12 col-sm-12 well_head">
									<div class="well">
										<ul class="nav">
											<li class="col-lg-6">
												<h6>
													<b> Proposed KPI'S </b>
												</h6>
											</li>
											<li><button id="btn_copy" onclick="kpi('kpi_first')"
													class="form-control rounded-circle">
													<i class="fa fa-plus"></i>
												</button></li>
										</ul>

									</div>

									<form class="p-2 pb-0">
										<div class="text-left pb-1">List of KPI'S</div>
										<div class="float-left" id="kpi_first">
											<textarea cols="50" rows="2" class="form-control mb-2"> </textarea>
										</div>
										<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->

									</form>

								</div>
								<div class="col-lg-4 col-md-12 col-sm-12">
									<div class="well col-md-12">
										<ul class="nav">
											<li class="col-lg-7"><h6>
													<b> Proposed Initiative</b>
												</h6></li>
											<li><button onclick="initiative('initiative_first');"
													class="form-control rounded-circle">
													<i class="fa fa-plus"></i>
												</button></li>
										</ul>
									</div>
									<br />
									<form class="p-1 pl-2">
										<div class="col-lg-12" id="initiative_first">
											<div class="float-left  pt-1">
												<textarea type="text" class="form-control" cols="35"
													rows="2"> </textarea>
											</div>
											<div
												class="avatar-wrapper avatar-wrapper-overlap float-left pt-1 pl-1">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

												<div
													class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
													<div class="avatar-icon add_icon">
														<div class="image-upload">
															<label for="file-input"> <i>+</i>
															</label> <input id="file-input" type="file" />
														</div>
													</div>
												</div>
											</div>
										</div>


										<!--div class="float-left col-lg-6 ">
	<br/>
		<a href="#" class="form-control btn_control"><i class="fa fa-save"></i> Save </a>
	</div-->

									</form>
								</div>

							</div>
						</div>
					</div>


				</div>
				<div class="tab-pane body" id="business">

					<!-- Default Light Table -->
					<div class="card card-small objective">

						<div class="card-body p-0 pb-3 text-center" id="objective">
							<div class="row">
								<div class="col-lg-12 p-4 text-center">
									<div class="float-right p-1 pr-4">
										<button class="form-control" data-toggle="modal"
											data-target="#max">
											<i class="fa fa-external-link"></i> </a>
									</div>
									<div class="float-right p-1">
										<button id="add_objective" onclick="objective('objective')"
											class="form-control">
											<i class="fa fa-plus"></i> </a>
									</div>

								</div>
							</div>

							<div class="row mt-2" id="row_objective">
								<div class="col-lg-4 col-md-12 col-sm-12">
									<div class="well_head_first">
										<div class="well">
											<ul class="nav">
												<li class="col-lg-6"><h6>
														<b> Objectives</b>
													</h6></li>
												<li><button id="btn_copy"
														onclick="initiative('busi_obj')"
														class="form-control rounded-circle">
														<i class="fa fa-plus"></i>
													</button></li>
											</ul>
										</div>
										<form class="p-1 pl-2">
											<div id="busi_obj">
												<div class="float-left pt-4">
													<textarea type="text" class="form-control" cols="35"
														rows="2"> </textarea>
												</div>
												<div
													class="avatar-wrapper avatar-wrapper-overlap float-left pt-4 pl-1">
													<div class="avatar-icon-wrapper avatar-icon-sm">
														<div class="avatar-icon">
															<img src="images/avatars/0.jpg" alt="">
														</div>
													</div>

													<div
														class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
														<div class="avatar-icon add_icon">
															<div class="image-upload">
																<label for="file-input"> <i>+</i>
																</label> <input id="file-input" type="file" />
															</div>
														</div>
													</div>
												</div>
											</div>
											<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->
										</form>
									</div>
								</div>
								<div class="col-lg-4 col-md-12 col-sm-12 well_head">
									<div class="well">
										<ul class="nav">
											<li class="col-lg-6">
												<h6>
													<b> Proposed KPI'S </b>
												</h6>
											</li>
											<li><button id="btn_copy" onclick="kpi('kpi')"
													class="form-control rounded-circle">
													<i class="fa fa-plus"></i>
												</button></li>
										</ul>
									</div>

									<form class="p-2 pb-0">
										<div class="text-left pb-1">List of KPI'S</div>
										<div class="float-left" id="kpi">
											<textarea cols="50" rows="2" class="form-control mb-2"> </textarea>
										</div>
										<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->

									</form>
								</div>
								<div class="col-lg-4 col-md-12 col-sm-12">
									<div class="well col-md-12">
										<ul class="nav">
											<li class="col-lg-7"><h6>
													<b> Proposed Initiative</b>
												</h6></li>
											<li><button onclick="initiative('initiative');"
													class="form-control rounded-circle">
													<i class="fa fa-plus"></i>
												</button></li>
										</ul>
									</div>
									<br />
									<form class="p-0 pb-4">
										<div class="col-lg-12" id="initiative">
											<div class="float-left  pt-1">
												<textarea type="text" class="form-control" cols="35"
													rows="2"> </textarea>
											</div>
											<div
												class="avatar-wrapper avatar-wrapper-overlap float-left pt-1 pl-1">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

												<div
													class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
													<div class="avatar-icon add_icon">
														<div class="image-upload">
															<label for="file-input"> <i>+</i>
															</label> <input id="file-input" type="file" />
														</div>
													</div>
												</div>
											</div>


										</div>


										<!--div class="float-left col-lg-6 ">
	<br/>
		<a href="#" class="form-control btn_control"><i class="fa fa-save"></i> Save </a>
	</div-->

									</form>
								</div>

							</div>
						</div>
					</div>
				</div>



				<!--div class="tab-pane body" id="documents"><h5>Documents</h5></div>
 <div class="tab-pane body" id="appraisal"><h5>appraisal</h5></div-->

			</div>





			<!-- Modal -->
			<div id="max" class="modal fade" role="dialog">
				<div class="modal-dialog" style="left: 250px; position: absolute">

					<!-- Modal content-->
					<div class="modal-content" style="width: 1100px;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>

						</div>
						<div class="modal-body">
							<!-- Default Light Table -->
							<div class="card card-small">

								<div class="card-body p-0 pb-3 text-center" id="objective">

									<!--div class="col-lg-12 p-4 bglight text-center">
	<div class="float-right p-4"><button class="form-control" data-toggle="modal" data-target="#max"> <i class="fa fa-external-link"></i> </a></div>
		<div class="col-lg-3 float-right p-4"><button id="add_objective" onclick="objective('objective')" class="form-control"> + Add Objective </a></div>
		
	</div-->

									<div class="col-lg-12 p-4 bglight text-center">
										<div class="p-4">
											<h4>
												<font color="#fff"> View Objectives</font>
											</h4>
										</div>


									</div>

									<div class="row mt-2" id="row_objective">
										<div class="col-lg-4 col-md-12 col-sm-12">
											<div class="well">
												<ul class="nav">
													<li class="col-lg-6"><h6>
															<b> Objectives</b>
														</h6></li>
													<li><button id="btn_copy"
															onclick="initiative('busi_model')"
															class="form-control rounded-circle">
															<i class="fa fa-plus"></i>
														</button></li>
												</ul>
											</div>
											<form class="p-1 pl-2">
												<div id='busi_model'>
													<div class="float-left pt-4">
														<textarea type="text" class="form-control" cols="35"
															rows="2"> </textarea>
													</div>
													<div
														class="avatar-wrapper avatar-wrapper-overlap float-left pt-4 pl-1">
														<div class="avatar-icon-wrapper avatar-icon-sm">
															<div class="avatar-icon">
																<img src="images/avatars/0.jpg" alt="">
															</div>
														</div>

														<div
															class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
															<div class="avatar-icon add_icon">
																<div class="image-upload">
																	<label for="file-input"> <i>+</i>
																	</label> <input id="file-input" type="file" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->
											</form>
										</div>
										<div class="col-lg-4 col-md-12 col-sm-12 well_head">
											<div class="well">
												<ul class="nav">
													<li class="col-lg-7"><h6>
															<b> Proposed KPI's</b>
														</h6></li>
													<li><button onclick="kpi('kpi_model');"
															class="form-control rounded-circle">
															<i class="fa fa-plus"></i>
														</button></li>
												</ul>
											</div>

											<form class="p-2 pb-0">
												<div class="text-left pb-1">List of KPI'S</div>
												<div class="float-left pb-1" id="kpi_model">
													<textarea cols="50" rows="2" class="form-control"> </textarea>
												</div>
												<!--div class="float-left col-lg-6">
	<br/>
		<a href="#" class="form-control btn_control"> <i class="fa fa-save"></i> Save </a>
	</div-->

											</form>
											<!--div class="float-right col-lg-6">
	<br/>
		<button id="btn_copy" onclick="kpi('kpi')" class="form-control btn_control btn-copy"> + Add kpi </button>
	</div-->
										</div>
										<div class="col-lg-4 col-md-12 col-sm-12">
											<div class="well col-md-12">
												<ul class="nav">
													<li class="col-lg-7"><h6>
															<b> Proposed Initiative</b>
														</h6></li>
													<li><button onclick="initiative('initiative_model');"
															class="form-control rounded-circle">
															<i class="fa fa-plus"></i>
														</button></li>
												</ul>
											</div>
											<br />
											<form class="p-0 pb-4">
												<div class="col-lg-12" id="initiative_model">
													<div class="col-md-8 float-left pl-0 pb-1 pt-2">

														<textarea class="form-control" cols="35" rows="2"> </textarea>
													</div>

													<div
														class="avatar-wrapper col-md-4 avatar-wrapper-overlap float-right pl-0 pt-2">
														<div class="avatar-icon-wrapper avatar-icon-sm">
															<div class="avatar-icon">
																<img src="images/avatars/0.jpg" alt="">
															</div>
														</div>

														<div
															class="avatar-icon-wrapper avatar-icon-sm avatar-icon-add">
															<div class="avatar-icon add_icon">
																<div class="image-upload">
																	<label for="file-input"> <i>+</i>
																	</label> <input id="file-input" type="file" />
																</div>
															</div>
														</div>
													</div>
												</div>


												<!--div class="float-left col-lg-6 ">
	<br/>
		<a href="#" class="form-control btn_control"><i class="fa fa-save"></i> Save </a>
	</div-->

											</form>

											<!--div class="float-right col-lg-6 ">
	<br/>
		<button onclick="initiative('initiative');" class="form-control btn_control" > + Add Initiative </a>
	</div-->
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

			<!--INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />

	<INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />

	<TABLE id="dataTable" width="350px" border="1">
		<TR>
			<TD><INPUT type="checkbox" name="chk"/></TD>
			<TD> 1 </TD>
			<TD> <INPUT type="text" /> </TD>
		</TR>
	</TABLE-->
			<!-- Modal -->
			<div id="notes" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<!--button type="button" class="close pull-right" data-dismiss="modal">&times;</button-->
							<h4>Notes / Minutes</h4>
						</div>
						<div class="modal-body">

							<table class="table table-bordered">
								<thead class="bg-light">
									<tr>
										<th>Notes</th>
										<th>Responsible</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Note 1</td>
										<td>
											<div class="avatar-wrapper avatar-wrapper-overlap">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

											</div>
										</td>
									</tr>
									<tr>
										<td>Note 2</td>
										<td>
											<div class="avatar-wrapper avatar-wrapper-overlap">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

											</div>
										</td>
									</tr>
								</tbody>
							</table>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

			<!-- Modal -->
			<div id="action" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<!--button type="button" class="close pull-right" data-dismiss="modal">&times;</button-->
							<h4>Actions</h4>
						</div>
						<div class="modal-body">

							<table class="table table-bordered">
								<thead class="bg-light">
									<tr>
										<th>Actions</th>
										<th>By Date</th>
										<th>Responsible</th>
										<th>Status</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Action 1</td>
										<td><input type="text" class="form-control"
											value="01-01-2020" readonly></td>
										<td>
											<div class="avatar-wrapper avatar-wrapper-overlap">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

											</div>
										</td>
										<td><i class="fa fa-check" aria-hidden="true"></i></td>
									</tr>
									<tr>
										<td>Action 1</td>
										<td><input type="text" class="form-control"
											value="01-01-2020" readonly></td>
										<td>
											<div class="avatar-wrapper avatar-wrapper-overlap">
												<div class="avatar-icon-wrapper avatar-icon-sm">
													<div class="avatar-icon">
														<img src="images/avatars/0.jpg" alt="">
													</div>
												</div>

											</div>
										</td>
										<td><i class="fa fa-times" aria-hidden="true"></i></td>
									</tr>

								</tbody>
							</table>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>




		</div>




	</section>
	<!-- Plugins Js -->
	<script src="js/app.min.js"></script>
		<script type="text/javascript"
		src="${contextroot}/js/knockout-3.5.0.js"></script>

	<script type="text/javascript"
		src="${contextroot}/js/daterangepicker.min.js"></script>
	<!-- Custom Js -->
	<script src="js/admin.js"></script>

	<!-- Knob Js -->
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/moment.js"></script>

	<script src="js/jquery.editable.min.js"></script>

	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/widgets.js"></script>

	<script>

		$(document).ready(function() {
			$('#my_id').change(function(e) {
				var files = $(this)[0].files;
				var fileName = files.length
				alert('The file "' + fileName + '" has been selected.');
			});
		});
	</script>
	<script type="text/javascript">
		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			var element1 = document.createElement("input");
			element1.type = "checkbox";
			element1.name = "chkbox[]";
			cell1.appendChild(element1);

			var cell2 = row.insertCell(1);
			var factor = rowCount;
			cell2.innerHTML = " <input style='width:180px;height:60px' type='text' placeholder='Meeting' class='form-control'>";

			var cell3 = row.insertCell(2);
			//var element2 = document.createElement("input");
			cell3.innerHTML = "<div class='avatar-wrapper avatar-wrapper-overlap'><div class='avatar-icon-wrapper avatar-icon-sm'><div class='avatar-icon'><img src='images/avatars/0.jpg' alt=''></div></div> </div>	";
			//cell3.appendChild(element2);

			var cell4 = row.insertCell(3);
			cell4.innerHTML = "<input class='form-control' id='datepicker_pop' style='width:80px;float:left' /><i class='fa fa-calendar-o' style='width:30px;height:30px'></i>";
			$('#datepicker_pop').datepicker();

			var cell5 = row.insertCell(4);
			cell5.innerHTML = "<input type='time' class='form-control' id='timepicker_pop' style='width:70px;float:left' /><i class='fa fa-clock-o' style='width:30px;height:30px'></i>";

			//var cell5 = row.insertCell(4);
			//cell5.innerHTML = " ";

			var cell6 = row.insertCell(5);
			cell6.innerHTML = ' <div class="fullscreen"> <ul class="list-unstyled order-list"> <li class="avatar avatar-sm"> <img class="rounded-circle" src="assets/images/user/user7.jpg" alt="user"> </li><li class="avatar avatar-sm"> <img class="rounded-circle" src="assets/images/user/user8.jpg" alt="user"> </li><div class="image-upload"> <label for="file-input"> <li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span _ngcontent-hhc-c5="" class="badge">+3</span></li></label><input id="file-input" type="file"/></div></ul> </div>';

			var cell7 = row.insertCell(6);
			cell7.innerHTML = "<textarea style='width:180px' rows='2' class='form-control'> </textarea> ";

			var cell8 = row.insertCell(7);
			cell8.innerHTML = " <a href='#' class='btn-add1 strength' data-toggle='modal' data-target='#notes'> <i class='fa fa-clone' aria-hidden='true'></i> </a> ";

			var cell9 = row.insertCell(8);
			cell9.innerHTML = "<a href='#' class='btn-add2 strength' data-toggle='modal' data-target='#action'> <i class='fa fa-bolt' aria-hidden='true'></i>  </a>";

			var cell10 = row.insertCell(9);
			cell10.innerHTML = "<label for='file-input1'><span class='btn-add1 strength'><i class='fa fa-paperclip' style='font-size:20px' aria-hidden='true'></i></span></label> <input id='file-input1' style='display:none' type='file'/>";

			var cell11 = row.insertCell(10);
			cell11.innerHTML = "<select class='form-control'> <option value='Completed'> Completed</option><option value='Not Completed'> Not Completed</option><option value='Reschedule'> Reschedule</option><option value='Over Due'> Over Due</option></select>";

		}

		function deleteRow(tableID) {
			try {
				var table = document.getElementById(tableID);
				var rowCount = table.rows.length;

				for (var i = 0; i < rowCount; i++) {
					var row = table.rows[i];
					var chkbox = row.cells[0].childNodes[0];
					if (null != chkbox && true == chkbox.checked) {
						table.deleteRow(i);
						rowCount--;
						i--;
					}

				}
			} catch (e) {
				alert(e);
			}
		}

		function notes(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			cell1.innerHTML = '<textarea class="form-control" cols="5" rows="5" > </textarea>';

			var cell2 = row.insertCell(1);
			cell2.innerHTML = '<div class="fullscreen"> <ul class="list-unstyled order-list"> <li class="avatar avatar-sm"> <img class="rounded-circle" src="assets/images/user/user7.jpg" alt="user"> </li><li class="avatar avatar-sm"> <img class="rounded-circle" src="assets/images/user/user8.jpg" alt="user"> </li><div class="image-upload"> <label for="file-input"> <li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span _ngcontent-hhc-c5="" class="badge">+</span></li></label><input id="file-input" type="file"/></div></ul> </div>';

		}

		function notes_del(tableID) {
			try {
				var table = document.getElementById(tableID);
				var rowCount = table.rows.length;

				for (var i = 0; i < rowCount; i++) {
					var row = table.rows[i];
					var chkbox = row.cells[0].childNodes[0];
					if (null != chkbox && true == chkbox.checked) {
						table.deleteRow(i);
						rowCount--;
						i--;
					}

				}
			} catch (e) {
				alert(e);
			}
		}

		function action(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			var factor = rowCount;
			cell1.innerHTML = '<textarea class="form-control" cols="5" rows="5" > </textarea>';

			var cell2 = row.insertCell(1);
			cell2.innerHTML = '<input type="date" class="form-control" >';

			var cell3 = row.insertCell(2);
			cell3.innerHTML = '<ul class="list-unstyled order-list"> <li class="avatar avatar-sm"> <img class="rounded-circle" src="assets/images/user/user7.jpg" alt="user"> </li><div class="image-upload"> <label for="file-input"> <li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span _ngcontent-hhc-c5="" class="badge">+</span></li></label><input id="file-input" type="file"/></div></ul>';

			var cell4 = row.insertCell(3);
			cell4.innerHTML = '<input type="checkbox"  >';
		}

		function action_del(tableID) {
			try {
				var table = document.getElementById(tableID);
				var rowCount = table.rows.length;

				for (var i = 0; i < rowCount; i++) {
					var row = table.rows[i];
					var chkbox = row.cells[0].childNodes[0];
					if (null != chkbox && true == chkbox.checked) {
						table.deleteRow(i);
						rowCount--;
						i--;
					}

				}
			} catch (e) {
				alert(e);
			}
		}
	</script>
	<script>
		$('#timepicker_pop').timepicker();
	</script>
	<script>
		$(function() {
			$('input[name="date"]').daterangepicker({
				singleDatePicker : true,
				showDropdowns : true,
				minYear : 1901,
				maxYear : parseInt(moment().format('YYYY'), 10)
			}, function(start, end, label) {
				var years = moment().diff(start, 'years');
				alert("You are " + years + " years old!");
			});
		});
	</script>
	<script type="text/javascript">
		function cloneRow() {
			var row = document.getElementById("rowToClone"); // find row to copy
			var table = document.getElementById("tableToModify"); // find table to append to
			var clone = row.cloneNode(true); // copy children too
			clone.id = "newID"; // change id or other attributes/contents
			table.appendChild(clone); // add new row to end of table
		}

		function createRow() {
			var row = document.createElement('tr'); // create row node
			var col = document.createElement('td'); // create column node
			var col2 = document.createElement('td'); // create second column node
			row.appendChild(col); // append first column to row

			row.appendChild(col2); // append second column to row
			col.innerHTML = "Impact <button class='btn btn-primary'> <i class='fa fa-plus' aria-hidden='true'></i>  Add </button>"; // put data in first column
			col2.innerHTML = "<label for='file-input'><img src='images/plus.png' width='50px' height='50px'></label><input style='display:none' id='file-input' type='file'/> "; // put data in second column
			var table = document.getElementById("tableToModify"); // find table to append to
			table.appendChild(row); // append row to table
		}
	</script>
</body>