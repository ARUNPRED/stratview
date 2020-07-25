<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />
<link href="${contextroot}/css/initatives.css" rel="stylesheet" />
<link href="${contextroot}/css/employee.css" rel="stylesheet" />
<link href="${contextroot}/css/custom.css" rel="stylesheet">
<link href="${contextroot}/css/frappe-gantt.css" rel="stylesheet">
<link href="${contextroot}/css/icheck-bootstrap.min.css"
	rel="stylesheet">

<link href="${contextroot}/css/treeable/jquery.treetable.css"
	rel="stylesheet">
<link
	href="${contextroot}/css/treeable/jquery.treetable.theme.default.css"
	rel="stylesheet">
<link href="${contextroot}/css/file-upload.css" rel="stylesheet">

<style>
#chartdiv>div.gantt-container {
	height: 340px;
	overflow-x: auto;
}

.form-group .form-line {
	width: 100%;
	position: relative;
	margin-left: 3% !important;
}

#chart_modal>div.gantt-container {
	height: 340px;
	overflow-x: auto;
}

ul li label {
	font-size: 12px;
}

.initiatives-gantt-color .bar-progress {
	fill: #de7878 !important;
}

.subinitiatives-gantt-color .bar-progress {
	fill: #c24fc3 !important;
}

.activities-gantt-color .bar-progress {
	fill: #46b7b7 !important;
}

.orientation-right {
	top: 60px !important;
	right: 0 !important;
	left: auto !important;
	position: fixed;
}

.initiate_sidebar h5 {
	padding: 0px 0px 0px 0px;
}

.modal-ku {
	width: 750px;
	margin: auto;
}

#modalBodyContent {
	height: 450px;
	overflow: scroll;
}

.checkbuttoncolor {
	background-color: aliceblue;
}
</style>


<script>
	function preview_images() {
		var total_file = document.getElementById("images").files.length;
		for (var i = 0; i < total_file; i++) {
			$('#image_preview')
					.append(
							"<div class='col-md-3' style='padding-bottom: 4%' '><img class='img-responsive' src='"
									+ URL
											.createObjectURL(event.target.files[i])
									+ "'></div>");
		}
	}
</script>

<jsp:include page="modals/initiative_description_modal.jsp"></jsp:include>

<!-- #END# Right Sidebar -->
<!-- #END# FormEdit Sidebar -->
<!-- #END# KPI Desc Sidebar 364780743841-->
<jsp:include page="template/sidebar_template.jsp"></jsp:include>
<aside id="initiative_sidebar" class="initiative_sidebar">
	<div class="sub_initiatives" id="sub_initiatives">
		<div class="card">
			<div class="header d-flex flex-row initiate_sidebar"
				style="margin-top: 5%;">
				<h5 class="prob d-flex flex-fill">
					<strong style="color: #333;">Initiatives</strong>
				</h5>
				<div class="initativesdescription" data-toggle="modal"
					data-target=".initatives_description_popup"
					onClick="handleinitiativeevent('{{id}}', 'add')">
					<i class="fa fa-plus-circle" style="color: #808080"></i>
				</div>

				&nbsp;
				<button class="btn btn-custom-secondary pull-right"
					data-toggle="modal" data-target=".file_upload_popup"
					style="margin-left: 4px;">
					<i class="fas fa-upload"></i>
				</button>
				&nbsp;&nbsp;

				<div class="dropdown">
					<a href="#" role="button" id="dropdownMenuLink"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-filter"></i>
					</a>

					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink"
						style="margin-left: -100px;">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Another action</a>
					</div>
				</div>

			</div>
			<div class="d-flex flex-column" id="initiate_sidebar"></div>
		</div>
	</div>
</aside>

<!-- File Upload PopUp -->

<div class="modal fade file_upload_popup1" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title" id="myLargeModalLabel">File Upload</h6>
				<button type="button" class="close fileuploadclose"
					data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<form action="" method="post" enctype="multipart/form-data">
						<div class="col-md-12" style="width: 100%; margin-bottom: 2%;">
							<input type="file" accept=".xlsx, .xls, .csv"
								style="padding-bottom: 12%; padding-top: 3%; padding-right: 5%;"
								class="form-control" id="importinitiative"
								name="importinitiative" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- End of File Upload PopUp -->

<!-- File Validate Form -->
<div class="modal fade file_upload_popup" id="file-validate-form"
	tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4>File Upload</h4>
				<button type="button" class="close pull-right" data-dismiss="modal">
					&times;</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<ul class="form-progressbar">
							<li>Upload</li>
							<li>Validation</li>
							<li>Import</li>
						</ul>
					</div>
					<div class="col-md-12">
						<hr />
					</div>
				</div>

				<div class="row" id="file-upload">
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">Upload File</label>
							<div class="preview-zone hidden">
								<div class="box box-solid">
									<div class="box-body"></div>
								</div>
							</div>
							<div class="dropzone-wrapper">
								<div class="dropzone-desc">
									<i class="fas fa-file-upload" style="font-size: 20px;"></i>
									<p>Choose a file or drag it here.</p>
								</div>
								<input type="file" name="img_logo" class="dropzone"
									accept=".xlsx, .xls, .csv" />
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<hr />
					</div>
					<div class="col-md-12">
						<div class="form-line right">
							<button class="initative_save_btn" id="next-btn-1"
								style="font-weight: 600;">Next</button>
						</div>
					</div>
				</div>

				<div class="row" id="file-validate" style="display: none;">
					<div class="col-md-12 img-center">
						<img src="../images/Not-Verified.png" alt="Not-Verified" />
						<div class="error-div">
							<table class="error-table">
								<thead>
									<tr>
										<th style="width: 150px; text-align: center;">SheetName</th>
										<!-- <th style="width: 150px; text-align: -webkit-center;">Owner</th> -->
										<th style="width: 150px; text-align: center;">Row-Number</th>
										<th style="width: 150px; text-align: center;">CellName</th>
										<th style="width: 250px; text-align: center;">Reason</th>
									</tr>

								</thead>
								<tbody class="uploadvalidationSuccess">
									<!-- <tr>
										<td style="width: 150px;">1</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">3</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">5</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">8</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">10</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">19</td>
										<td>Contain Special Character</td>
									</tr> -->
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-12">
						<hr />
					</div>
					<div class="col-md-12">
						<div class="form-line" id="validateImportHide">
							<!-- <button type="button" class="btn-default1 btn" id="prev-btn1"
										style="font-weight: 600;">Previous</button>
									<button class="initative_save_btn pull-right" id="next-btn-2"
										style="font-weight: 600;">Next</button> -->
						</div>
					</div>
				</div>

				<div class="row" id="file-save" style="display: none;">
					<div class="col-md-12">
						<div class="col-md-12 img-center">
							<img src="../images/Success.png" alt="Verified" />
						</div>
					</div>
					<div class="col-md-12">
						<hr />
					</div>
					<div class="col-md-12">
						<div class="form-line">
							<button type="button" class="btn-default1 btn" id="prev-btn2"
								style="font-weight: 600;">Previous</button>
							<button class="initative_save_btn pull-right" id="done-btn"
								style="font-weight: 600;" data-dismiss="modal"
								aria-label="Close">Done</button>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<!-- END File Validate Form -->


<div class="modal fade chart_view_popup" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg"
		style="max-width: 100%">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel_1">View
					Initiative Chart Status</h6>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="card">
						<div class="form-row" style="padding: 16px;">
							<div class="col-md-2 form-group">
								<button onclick="menuToggle()" class="btn btn-custom-secondary"
									data-toggle="tooltip" data-placement="right"
									title="Collapse Table">
									<i id="toggleIcon" class="fa fa-angle-double-left"></i>
								</button>
							</div>
							<div class="col-md-8"></div>
							<div class="col-md-2 custom-space-even">
								<div id="control-view" class="btn-group" role="group"
									aria-label="Basic example" style="width: 100%;">
									<button type="button" class="btn btn-custom-secondary"
										data-value="Day"
										style="border-top-left-radius: 4px; border-bottom-left-radius: 4px;">
										D</button>
									<button type="button" class="btn btn-custom-secondary"
										data-value="Week">W</button>
									<button type="button" class="btn btn-custom-secondary active"
										data-value="Month"
										style="border-top-right-radius: 4px; border-bottom-right-radius: 4px;">
										M</button>
								</div>
								<!--<button
                    class="btn btn-custom-secondary"
                    data-toggle="modal"
                    data-target="#create_task"
                  >
                    <i class="fas fa-plus"></i>
                  </button>-->
							</div>
						</div>
						<div class="form-row" style="padding: 16px; margin-top: -20px;">
							<div class="col-md-4" id="TreeTable" hidden>
								<div class="table-responsive">
									<table id="example-basic"
										class="table align-center dashboard-table dashboard-task-infos">
										<thead>
											<tr>
												<th>Task Name</th>
												<th>Start Date</th>
												<th>End Date</th>
												<th>Owner</th>
											</tr>
										</thead>
										<tbody id="ganttchart_table">

										</tbody>
									</table>
								</div>
							</div>
							<div class="col-md-12" id="FrappeGantt"
								style="border: 2px solid #e0e0e0;">
								<div id="chart_modal" class="chartviewtemplatediv"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!--#START Sub Activitie View -->
<div class="modal fade sub_activitie_view_popup" tabindex="-1"
	role="dialog" aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header modalheadercolor">
				<h6 class="modal-title" id="myLargeModalLabel">View Activitives</h6>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="col-lg-12 col-md-12 sub_initiatives">
				<div class="card">
					<div
						class="d-flex flex-column employee_div_body_box activities-box"
						id="activities-box_view"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--#END Sub Activitie View -->

<div id="deleteModalinitiative" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Delete</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<h5 class="confirm-modal-content">Do you really want to delete
					these records?</h5>
				<br>
				<div class="form-line right">
					<input type="hidden" id="deleterecordid" /> <input type="hidden"
						id="deleterecordtype" />
					<button type="button" class="btn-default1 btn" data-dismiss="modal"
						aria-label="Close">Cancel</button>
					<button type="button"
						class="btn btn-danger confirm-modal-deleteBtn"
						onclick="handlesubinitiativeeventdelete()">Delete</button>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="modals/sub_initiative_user_modal.jsp"></jsp:include>
<section class="content" id="section">
	<jsp:include page="template/initiativedet_template.jsp"></jsp:include>
	<div class="initiative_details">
		<div class="container-fluid text-dark bg-white p-0">
			<div id="initiative_details" class="d-flex_name employee_top_section">

			</div>
		</div>

	</div>
	<!---------Initiatives--------->

	<c:if test="${userPrincipal != null}">
		<input id="userPrincipal" type="hidden" name="userPrincipal"
			value="<c:out value="
			${userPrincipal.profile.firstName}" />">
		<input id="userDept" type="hidden" name="userDept"
			value="<c:out value="
			${userPrincipal.profile.department}" />">
	</c:if>
	<c:if test="${pagenumber != null}">
		<input id="pagenumber" type="hidden" name="pagenumber"
			value="<c:out value=" ${pagenumber}" />">
	</c:if>
	<!-------Sub Initiatives------->
	<div class="row row-padding m-0">
		<jsp:include page="modals/sub_initiative_view.jsp"></jsp:include>
		<jsp:include page="modals/subinitiatives_modal.jsp"></jsp:include>

		<jsp:include page="template/subinitiatives.jsp"></jsp:include>
		<jsp:include page="template/subinitiativesparent.jsp"></jsp:include>
		<div class="col-lg-4 col-md-6 sub_initiatives"
			id="subinitiative_initial_template">
			<div class="d-flex flex-column employee_div_body_box sub-ini-box"
				id="sub-ini-box_view"></div>
		</div>

		<!---------Chart-------->
		<jsp:include page="template/intiatives_chart.jsp"></jsp:include>
		<!---------Chart-------->
		<div class="col-lg-8 col-md-8 sub_initiatives" id="chartdiv_ini">

		</div>
	</div>
	<div class="row row-padding m-0">


		<!-- Activities-->
		<jsp:include page="modals/initiative_activities_user_modal.jsp"></jsp:include>
		<jsp:include page="template/subinitiatives_activities.jsp"></jsp:include>
		<jsp:include page="template/activities_template.jsp"></jsp:include>
		<jsp:include page="modals/activities_modal.jsp"></jsp:include>
		<div class="col-lg-4 col-md-6 sub_initiatives" id="activities"></div>

		<!---------MileStones-------->
		<jsp:include page="template/milestone.jsp"></jsp:include>
		<jsp:include page="template/milestones_row_template.jsp"></jsp:include>
		<jsp:include page="modals/milestones_modal.jsp"></jsp:include>
		<jsp:include page="modals/milestones_view.jsp"></jsp:include>
		<div class="col-lg-4 col-md-6 sub_initiatives" id="milestones"></div>
		<!---------comments-------->
		<jsp:include page="template/comments.jsp"></jsp:include>
		<jsp:include page="template/comments_template.jsp"></jsp:include>
		<jsp:include page="modals/initiative_comments_view.jsp"></jsp:include>
		<div class="col-lg-4 col-md-6 sub_initiatives" id="comments"></div>


	</div>

	<jsp:include page="modals/initiative_comments_popup.jsp"></jsp:include>
</section>
<script src="${contextroot}/js/bundles/amcharts4/core.js"></script>
<script src="${contextroot}/js/bundles/amcharts4/charts.js"></script>
<script src="${contextroot}/js/bundles/amcharts4/animated.js"></script>
<script src="${contextroot}/js/datepickerair.js"></script>
<script src="${contextroot}/js/datepicker.en.js"></script>
<script src="${contextroot}/js/pages/widgets/chart-widget.js"></script>
<script type="text/javascript" src="${contextroot}/js/d3.min.js"></script>
<script src="${contextroot}/js/jquery.treetable.js"></script>
<script>
	$('.date_pickers').datepicker({
		language : 'en',
		minDate : new Date(),
		range : true,
		autoClose : true,
		position : "top left",
		todayButton : true,
		onSelect : function(fd) {
			// $('.datepickers-container').hide();
		}
	});

	$('.sub_initative_add_user_popup,.activities_add_user_popup,.initatives_description_popup')
			.modal({
				show : false,
				backdrop : 'static',
				keyboard : false
			});
</script>
<script src="${contextroot}/js/frappe-gantt.min.js"></script>

<script src="${contextroot}/js/initiative.js"></script>