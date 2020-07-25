<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />


<link href="${contextroot}/css/risk.css" rel="stylesheet" />
<!-- You can choose a theme from css/styles instead of get all themes -->
<link href="${contextroot}/css/bootstrap-popover-x.css" media="all"
	rel="stylesheet" />
<link href="${contextroot}/css/circle.css" rel="stylesheet" />
<link rel="stylesheet" href="${contextroot}/css/datepickerair.css">
<link rel="stylesheet" href="${contextroot}/css/employee.css">
<link rel="stylesheet" href="${contextroot}/css/chosen.min.css">
<style>
.chosen-search input[type=text] {
	width: 92% !important;
}

ul li label {
	font-size: 12px;
}

.ini_side_due p {
	white-space: nowrap;
}

.form-group .form-line {
	width: 100%;
	position: relative;
	margin-left: 3% !important;
}

.input-calender-icon {
	color: #5a6169;
	position: absolute;
	bottom: 30%;
	right: 8%;
	font-size: 16px;
}

.init_flex_profile p {
	word-break: break-all;
}

#risk_score, .popover {
	top: 41px !important;
	left: 1095.45px !important;
	padding: 0px !important;
}

.riskSidebarHighLight {
	border-top: 2px solid black !important;
	border-right: 2px solid black !important;
	border-bottom: 2px solid black !important;
}
</style>

	
	<div>

		<jsp:include page="modal/riskActivitiesModal.jsp"></jsp:include>
		<jsp:include page="modal/riskActionModal.jsp"></jsp:include>
		<jsp:include page="modal/riskPlanModal.jsp"></jsp:include>
		<jsp:include page="modal/riskMonitoringModal.jsp"></jsp:include>
		<jsp:include page="modal/riskDetailModal.jsp"></jsp:include>
		<jsp:include page="modal/CauseAndConsequenceModal.jsp"></jsp:include>
		<jsp:include page="modal/CauseAndConseqSubModal.jsp"></jsp:include>

		<div id="deleteModalrisk" class="modal fade">
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
							<input type="hidden" id="deleterecordid" /> <input type="hidden"
								id="deleterecordtype" />
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

	</div>

	<aside id="initiative_sidebar" class="initiative_sidebar">
		<input type="hidden" id="ischeckriskurlornot" value="RISK">
		<div class="sub_initiatives" id="sub_initiatives">
			<div class="card">
				<div class="header d-flex flex-row initiate_sidebar"
					style="margin-top: 5%;">
					<h5 class="prob d-flex flex-fill">
						<strong style="color: #333;">Risk Register</strong>
					</h5>
					<div class="initativesdescription" data-toggle="modal"
						data-target=".riskDetail_description_popup"
						onclick="handleRiskDetailEvent(0,'add')" style="cursor: pointer">
						<i class="green fa fa-plus-circle"
							style="font-size: 16px; margin-right: 8px;"></i>
					</div>
					<!--<a href="risksummary" style="margin-right: 6px;">
                <img src="images/risk.png" alt="risk-summary" style="width: 20px;"/>
              </a>-->
					<div class="dropdown">
						<a href="#" role="button" id="dropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-filter" style="font-size: 16px;"></i>
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

				<c:if test="${riskList != null}">
					<div class="d-flex flex-column" id="risk_sidebar">
						<c:forEach items="${riskList}" var="risk">
							<c:choose>
								<c:when test="${risk.riskValue.riskStatus == 'Rare'}">
									<div
										class="d-flex flex-column sub_initiative_sidebar_details initiative_side_border_green sidebarriskid_${risk.id}"
										onclick="populateRiskDetails(${risk.impactId},${risk.id})">
								</c:when>
								<c:when test="${risk.riskValue.riskStatus == 'Unlikely'}">
									<div
										class="d-flex flex-column sub_initiative_sidebar_details initiative_side_border_yellow sidebarriskid_${risk.id}"
										onclick="populateRiskDetails(${risk.impactId},${risk.id})">
								</c:when>
								<c:when
									test="${risk.riskValue.riskStatus == 'Possible' || risk.riskValue.riskStatus == 'Likely' || risk.riskValue.riskStatus == 'Almost Certain'}">
									<div
										class="d-flex flex-column sub_initiative_sidebar_details initiative_side_border_orange sidebarriskid_${risk.id}"
										onclick="populateRiskDetails(${risk.impactId},${risk.id})">
								</c:when>
								<c:otherwise>
									<div
										class="d-flex flex-column sub_initiative_sidebar_details initiative_side_border_default sidebarriskid_${risk.id}"
										onclick="populateRiskDetails(${risk.impactId},${risk.id})">
								</c:otherwise>
							</c:choose>
							<div class="d-flex flex-row p-b-5">
								<div class="flex-column profile_image">
									<c:if test="${not empty risk.riskValue.riskImage}">
										<img src="${risk.riskValue.riskImage}" class="rounded-circle"
											alt="User" width="25">
									</c:if>
									<c:if test="${empty risk.riskValue.riskImage}">
										<img data-name="${risk.formatName()}"
											class="rounded-circle riskuser" alt="User" width="25">
									</c:if>
								</div>

								<div class="d-flex flex-column profile_content"
									style="width: 75%; min-height: 55px; max-height: 55px;">
									<p>${risk.formatName()}</p>
								</div>
							</div>
							<div class="d-flex flex-row justify-content-between m-t--10">
								<div class="flex-column ini_side_depart_bar">
									<div class="employee_info">Risk Rating</div>
									<p class="riskscorevalue">${risk.riskValue.riskStatus}</p>
								</div>
								<div class="d-flex flex-column ini_side_due">
									<p>${risk.riskValue.ch_dateCompleted}</p>
								</div>
							</div>
					</div>
					</c:forEach>
			</div>

			</c:if>
		</div>
		</div>
	</aside>
	<section class="content" id="section">

		<c:if test="${userPrincipal != null}">
			<input id="userPrincipal" type="hidden" name="userPrincipal"
				value="<c:out value="
				${userPrincipal.profile.empId}" />">
		</c:if>
		<c:if test="${pagenumber != null}">
			<input id="pagenumber" type="hidden" name="pagenumber"
				value="<c:out value=" ${pagenumber}" />">
		</c:if>

		<c:if test="${riskDetail != null}">
			<!---------Initiatives--------->
			<div class="initiative_details">
				<div class="container-fluid text-dark bg-white p-0">
					<div class="d-flex_name employee_top_section">
						<div class="collapse_arrow_right" style="display: none;">
							<i class="arrow_collapse_size fas fa-caret-right"></i>
						</div>
						<div class="collapse_arrow_left">
							<i class="arrow_collapse_size fas fa-caret-left"></i>
						</div>
						<div class="employee_details">
							<c:if test="${riskDetail != null}">
								<div class="img_details">
									<c:if test="${not empty riskDetail.riskValue.riskImage}">
										<img src="${riskDetail.riskValue.riskImage}"
											class="rounded-circle" alt="User" width="90"
											data-riskimagestatus="${riskDetail.riskValue.riskStatus}"
											id="riskimagestatuscircle">
									</c:if>
									<c:if test="${empty riskDetail.riskValue.riskImage}">
										<img data-name="${riskDetail.formatName()}"
											class="rounded-circle riskuser" alt="User" width="90"
											id="riskimagestatuscircle">
									</c:if>
								</div>
								<div class="employee_top_info">
									<div class="employe_head_info">
										<div>
											<h6>${riskDetail.formatName()}</h6>
										</div>
										<div class="employe_head_info_icon">
											<i class="fas fa-pencil-alt title_edit_icon"
												data-toggle="modal"
												data-target=".riskDetail_description_popup"
												onclick="handleRiskDetailEvent(${riskDetail.id},'edit')"></i>
											<i class="fas fa-paperclip title_edit_icon"
												data-toggle="modal" data-target=".file_upload_popup"></i>
											<ul class="header-dropdown">
												<li class="dropdown title_edit_icon"><i
													class="far fa-eye" class="dropdown-toggle"
													data-toggle="dropdown" style="padding: 6px;"></i>
													<ul
														class="dropdown-menu riskdropdown-hide multi-column pull-right"
														x-placement="bottom-start"
														style="position: absolute; will-change: transform; top: 0px; left: 0px; width: 180px; transform: translate3d(0px, 24px, 0px);">
														<div class="row">
															<div class="col-sm-12">
																<ul class="multi-column-dropdown" id="riskiconview">

																</ul>
															</div>
														</div>
													</ul></li>
											</ul>

											<ul class="header-dropdown">
												<li class="dropdown title_edit_icon"><a href="#"
													class="dropdown-toggle" data-toggle="dropdown"
													role="button" aria-haspopup="true" aria-expanded="true">
														<i class="material-icons">more_horiz</i>
												</a>
													<ul class="dropdown-menu pull-right"
														x-placement="bottom-start"
														style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">

														<li><a
															onclick="deleteRiskDetail(${kpiId}, ${riskDetail.id})">Delete</a>
														</li>
													</ul></li>
											</ul>
										</div>
									</div>
									<div class="initiative_profile_details">
										<div class="employee_details_content_info">
											<div class="employee_info">Department</div>
											<p>${userPrincipal.profile.department}</p>
										</div>
										<div class="employee_details_content_info">
											<div class="employee_info">Risk Category</div>
											<p>${riskDetail.riskValue.riskcategory}</p>
										</div>
										<!--<div class="employee_details_content_info">
                                            <div class="employee_info">Area of Impact</div>
                                            <p>${riskDetail.riskValue.impactDesc}</p>
                                        </div>-->

										<div class="employee_details_content_info">
											<div class="employee_info">Impact</div>
											<p class="impact-text">${riskDetail.riskValue.impact}</p>
										</div>
										<div class="employee_details_content_info">
											<div class="employee_info">Likelihood</div>
											<p id="risklikelhood">${riskDetail.riskValue.likeliHood}</p>
										</div>
										<div class="employee_details_content_info">
											<div class="employee_info">
												Risk Score<i class="fa fa-info-circle ml-1 font-10"
													data-toggle="popover-x" data-target="#risk_score"
													data-placement="right" aria-hidden="true"></i>
											</div>
											<p class="align-center risk-score">${riskDetail.riskValue.score}</p>
										</div>
										<div class="employee_details_content_info">
											<div class="employee_info">Status</div>
											<p id="riskstatus">${riskDetail.riskValue.riskStatus}</p>
										</div>



										<!-- PopoverX content -->
										<div id="risk_score" class="popover popover-x popover-default">
											<div class="arrow"></div>
											<h3 class="popover-header popover-title font-11"
												style="background-color: #1e252d; color: #fff;">
												<span class="close pull-right" data-dismiss="popover-x"
													style="color: #ffff;">&times;</span>Risk Score Key
											</h3>
											<div class="popover-body popover-content"
												style="height: 130px;">
												<table class="table table-sm">
													<tbody>
														<tr>
															<td style="padding: 10px;" class="clickable-text">Insignificant</td>
															<td style="padding: 10px;" class="score1">1</td>
															<td style="padding: 10px;" class="text2">Rare</td>
															<td style="padding: 10px;" class="score2">1</td>
														</tr>
														<tr>
															<td style="padding: 10px;" class="clickable-text">Minor</td>
															<td style="padding: 10px;" class="score1">2</td>
															<td style="padding: 10px;" class="text2">Unlikely</td>
															<td style="padding: 10px;" class="score2">2</td>
														</tr>
														<tr>
															<td style="padding: 10px;" class="clickable-text">Moderate</td>
															<td style="padding: 10px;" class="score1">3</td>
															<td style="padding: 10px;" class="text2">Possible</td>
															<td style="padding: 10px;" class="score2">3</td>
														</tr>
														<tr>
															<td style="padding: 10px;" class="clickable-text">Major</td>
															<td style="padding: 10px;" class="score1">4</td>
															<td style="padding: 10px;" class="text2">Likely</td>
															<td style="padding: 10px;" class="score2">4</td>
														</tr>
														<tr>
															<td style="padding: 10px;" class="clickable-text">Catastrophic</td>
															<td style="padding: 10px;" class="score1">5</td>
															<td style="padding: 10px;" class="text2">Almost
																Certain</td>
															<td style="padding: 10px;" class="score2">5</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>


										<div class="employee_details_content_info">
											<div class="employee_info">Risk ID</div>
											<p>${riskDetail.id}</p>
										</div>
									</div>
								</div>
							</c:if>
						</div>
						<c:if test="${riskDetail != null}">
							<div class="initiative_rating_details">
								<div class="d-flex flex-row">
									<div class="ini_thrid_row_reaction">
										<div class="" style="text-align: center !important;">
											<div class="employee_info">Date Raised</div>
											<p>${riskDetail.riskValue.ch_dateRaised}</p>
										</div>
										<div class="raised_info"
											style="text-align: center !important;">
											<div class="employee_info">Raised by</div>
											<div class="">
												<ul class="list-unstyled order-list d-flex">
													<li class="avatar avatar-sm"><c:if
															test="${not empty riskDetail.riskValue.riskImage}">
															<img src="${riskDetail.riskValue.riskImage}"
																class="rounded-circle" alt="User" width="50">
														</c:if> <c:if test="${empty riskDetail.riskValue.riskImage}">
															<img data-name="${riskDetail.riskValue.name}"
																class="rounded-circle riskuser" alt="User" width="50">
														</c:if></li>
													<!-- <li class="avatar avatar-sm">
                                                        <span _ngcontent-hhc-c5= class="badge">+3</span>
                                                    </li>-->
												</ul>
											</div>
										</div>
										<div class="" style="text-align: center !important;">
											<div class="employee_info">Business Impact</div>
											<p>${riskDetail.riskValue.impactDesc}</p>
										</div>
										<div class="" style="text-align: center !important;">
											<div class="employee_info">Financial Impact</div>
											<p>${riskDetail.riskValue.financialImpact}</p>
										</div>
										<div class="" style="text-align: center !important;">
											<div class="employee_info">Next Assessment</div>
											<p>${riskDetail.riskValue.ch_nextAssessment}</p>
										</div>
										<div class="" style="text-align: center !important;">
											<div class="employee_info">Date Completed</div>
											<p>${riskDetail.riskValue.ch_dateCompleted}</p>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</div>
				</div>
			</div>

			<div class="row row-padding m-0">

				<!-------Cause and Consequence------->
				<div
					class="col-lg-8 col-md-6 sub_initiatives select-toggle causenconsequence">
					<div class="card">
						<div class="header d-flex flex-row">
							<h5 class="prob d-flex flex-fill">
								<strong class="editableTxt1"
									onkeypress="return (this.innerText.length <= 25)"
									id="causeheader"
									data-oldcauseheader="${riskDetail.riskValue.causeheader != null ? riskDetail.riskValue.causeheader : 'Cause and Consequence'}"
									editable="true">${riskDetail.riskValue.causeheader != null ? riskDetail.riskValue.causeheader : 'Cause and Consequence'}</strong>
							</h5>
							<div class="create_initives add-sub-initiative">
								<span class="sub_initiative" data-toggle="modal"
									data-target=".cause_conq_popup"
									onclick="handleRiskCauseEvent(0,${riskId},'add')"><i
									class="fa fa-plus"></i>Add</span>
							</div>
							<ul class="header-dropdown m-r--2">
								<li class="dropdown m-t--10"><a href="#"
									onclick="return false;" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true"> <i class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right" x-placement="bottom-start"
										style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
										<li><a href="#" data-toggle="modal"
											data-target=".cause_conq_view_popup"
											onclick="causeconqviewdetails(${riskId});">View</a></li>
										<li><a href="" onclick="return false;" class="delete-row">Delete</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="d-flex flex-column employee_div_body_box sub-ini-box">
							<div class="panel-group risk-panel-group" id="risk_accordion_1"
								role="tablist" aria-multiselectable="true">
								<c:if test="${riskCauseAndConqList != null}">
									<c:forEach items="${riskCauseAndConqList}"
										var="riskConsequence">
										<div class="panel panel-col_border risk-panel">
											<div class="panel-heading risk-panel-heading" role="tab"
												id="risk_headingOne_1">
												<div class="panel-title_risk">
													<a role="button" data-toggle="collapse"
														data-parent="#risk_accordion_1"
														href="#risk_collapseOne_${riskConsequence.id}"
														aria-expanded="false" aria-controls="risk_collapseOne_1"
														class="collapsed">
														<div class="conq_title_name">${riskConsequence.causeAndConsequenceValue.name}</div>
														<div class="d-flex flex-row">
															<div class="flex-column">
																<div class="risk_badge">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
																<!--<c:choose>
															    <c:when test="${riskConsequence.causeAndConsequenceValue.riskRating == 'Very Low'}">
															        <div class="risk_badge risk_green_color">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
															    </c:when>
															    <c:when test="${riskConsequence.causeAndConsequenceValue.riskRating == 'Low'}">
															        <div class="risk_badge risk_yellow_color">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
															    </c:when>
															    <c:when test="${riskConsequence.causeAndConsequenceValue.riskRating == 'Tolerable'}">
															        <div class="risk_badge risk_lightorange_color">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
															    </c:when>
															    <c:when test="${riskConsequence.causeAndConsequenceValue.riskRating == 'High' || riskConsequence.causeAndConsequenceValue.riskRating == 'Very High'}">
															        <div class="risk_badge risk_red_color">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
															    </c:when>    
															    <c:otherwise>
															    	<div class="risk_badge risk_yellow_color">${riskConsequence.causeAndConsequenceValue.riskRating}</div>
															    </c:otherwise>
															</c:choose>-->
															</div>
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
																		<li><a href="#" data-toggle="modal"
																			data-target=".sub_cause_conq_popup"
																			onclick="handleRiskConqEvent(0,${riskConsequence.id},'add')">Add</a>
																		</li>
																		<li><a href="#" data-toggle="modal"
																			data-target=".cause_conq_popup"
																			onclick="handleRiskCauseEvent(${riskConsequence.id},${riskId},'edit')">Edit</a>
																		</li>
																		<li><a
																			onclick="deleteRiskCause(${riskConsequence.id})">Delete</a>
																		</li>
																	</ul></li>
															</ul>
														</div>
													</a>
												</div>
											</div>

											<div id="risk_collapseOne_${riskConsequence.id}"
												class="panel-collapse in collapse show" role="tabpanel"
												aria-labelledby="risk_headingOne_1" style="">
												<c:if test="${not empty riskConsequence.consequenceList}">
													<c:forEach items="${riskConsequence.consequenceList}"
														var="riskSubConsequence">
														<div class="badge_risk_title">
															<div class="conq_sub_title_name">${riskSubConsequence.consequenceValue.name}</div>
															<div class="risk_badge">${riskSubConsequence.consequenceValue.riskRating}</div>
															<!--<c:choose>
												    <c:when test="${riskSubConsequence.consequenceValue.riskRating == 'Very Low'}">
												        <div class="risk_badge risk_green_color">${riskSubConsequence.consequenceValue.riskRating}</div>
												    </c:when>
												    <c:when test="${riskSubConsequence.consequenceValue.riskRating == 'Low'}">
												        <div class="risk_badge risk_yellow_color">${riskSubConsequence.consequenceValue.riskRating}</div>
												    </c:when>
												    <c:when test="${riskSubConsequence.consequenceValue.riskRating == 'Tolerable'}">
												        <div class="risk_badge risk_lightorange_color">${riskSubConsequence.consequenceValue.riskRating}</div>
												    </c:when>
												    <c:when test="${riskSubConsequence.consequenceValue.riskRating == 'High' || riskSubConsequence.consequenceValue.riskRating == 'Very High'}">
												        <div class="risk_badge risk_red_color">${riskSubConsequence.consequenceValue.riskRating}</div>
												    </c:when>    
												    <c:otherwise>
												    	<div class="risk_badge risk_yellow_color">${riskSubConsequence.consequenceValue.riskRating}</div>
												    </c:otherwise>
												</c:choose>-->
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
																			<li><a href="#" data-toggle="modal"
																				data-target=".sub_cause_conq_popup"
																				onclick="handleRiskConqEvent(${riskSubConsequence.id},${riskSubConsequence.causeConqId},'edit')">Edit</a>
																			</li>
																			<li><a
																				onclick="deleteRiskConsequence(${riskSubConsequence.id})">Delete</a>
																			</li>
																		</ul></li>
																</ul>
															</div>
														</div>
													</c:forEach>
												</c:if>
												<!--<div class="badge_risk_consq">
                                                <div class="clearfix"><span class="risk_badge float-right" data-toggle="modal" data-target=".sub_cause_conq_popup" onclick="handleRiskConqEvent(0,${riskConsequence.id},'add')"><i class="fa fa-plus"></i> Consequence</span></div>
                                            </div>-->
											</div>

										</div>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>

				<!-- cause and consequence view start -->
				<div class="modal fade cause_conq_view_popup" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel_1"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered"
						style="max-width: 60%;">
						<div class="modal-content">
							<div class="modal-header modalheadercolor">
								<h6 class="modal-title" id="myLargeModalLabel_1">View Cause
									and consequence</h6>
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
											<div id="cause-row-box_view"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- cause and consequence view end -->



				<!---------Chart-------->
				<div class="col-lg-4 col-md-6 sub_initiatives select-toggle chart">
					<div class="card">
						<div class="header">
							<h5 class="prob">
								<strong class="editableTxt1"
									onkeypress="return (this.innerText.length <= 25)"
									id="chartheader"
									data-oldchartheader="${riskDetail.riskValue.chartheader != null ? riskDetail.riskValue.chartheader : 'Chart'}"
									editable="true">${riskDetail.riskValue.chartheader != null ? riskDetail.riskValue.chartheader : 'Chart'}</strong>
							</h5>
							<ul class="header-dropdown m-r--2">
								<li class="dropdown m-t--10"><a href="#"
									onclick="return false;" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true"> <i class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right" x-placement="bottom-start"
										style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
										<li><a href="#" onclick="return false;">View</a></li>
										<li><a href="#" onclick="return false;">Delete</a></li>
									</ul></li>
							</ul>
						</div>
						<div>
							<div id="chartdiv" style="height: 52vh; position: relative;"></div>
						</div>
					</div>
				</div>
			</div>


			<!-------Plan------->
			<div class="row row-padding m-0">
				<div class="col-lg-4 col-md-6 sub_initiatives select-toggle plan">
					<div class="card">
						<div class="header d-flex flex-row">
							<h5 class="prob d-flex flex-fill">
								<strong class="editableTxt1"
									onkeypress="return (this.innerText.length <= 25)"
									id="planheader"
									data-oldplanheader="${riskDetail.riskValue.planheader != null ? riskDetail.riskValue.planheader : 'Risk Treatment'}"
									editable="true">${riskDetail.riskValue.planheader != null ? riskDetail.riskValue.planheader : 'Risk Treatment'}</strong>
							</h5>
							<div class="create_initives add-sub-initiative">
								<span class="sub_initiative" data-toggle="modal"
									data-target="#plan_desc_add_popup"
									onclick="handleRiskPlanEvent('0',${riskId}, 'add')"><i
									class="fa fa-plus"></i>Add</span>
							</div>
							<ul class="header-dropdown m-r--2">
								<li class="dropdown m-t--10"><a href="#"
									onclick="return false;" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true"> <i class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right" x-placement="bottom-start"
										style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
										<li><a href="#" data-toggle="modal"
											data-target=".sub_initative_view_popup"
											onclick="planviewdetails(${riskId})">View</a></li>
										<li><a href="#" onclick="return false;"
											class="delete-row">Delete</a></li>
									</ul></li>
							</ul>
						</div>

						<div class="d-flex flex-column employee_div_body_box sub-ini-box">
							<div class="panel-group risk-panel-group" id="risk_accordion_1"
								role="tablist" aria-multiselectable="true">
								<c:if test="${riskTreatmentList != null}">
									<c:forEach items="${riskTreatmentList}" var="riskPlan">
										<div class="panel risk-panel panel-col_border">
											<div class="panel-heading risk-panel-heading" role="tab"
												id="risk_headingOne_1">
												<div class="panel-title_risk">
													<a role="button" data-toggle="collapse"
														data-parent="#risk_accordion_1" href="#risk_treatment_1"
														aria-expanded="true" aria-controls="risk_treatment_1"
														class="" style="padding: 0px 0px !important;"> </a>
													<div
														class="d-flex flex-row employe_content_border sub_initiative_details"
														style="margin-bottom: 0px;">

														<a role="button" data-toggle="collapse"
															data-parent="#risk_accordion_1" href="#risk_treatment_1"
															aria-expanded="false" aria-controls="risk_treatment_1"
															class="collapsed" style="padding: 0px 0px !important;">
														</a>

														<div class="d-flex flex-column flex-fill profile_content"
															style="width: 245px;">
															<div class="d-flex flex-row">
																<a role="button" data-toggle="collapse"
																	data-parent="#risk_accordion_1"
																	href="#risk_treatment_${riskPlan.id}"
																	aria-expanded="false"
																	aria-controls="risk_treatment_${riskPlan.id}"
																	class="collapsed" style="padding: 0px 0px !important;">
																	<div class="d-flex flex-column init_flex_profile"
																		style="color: #1e252d;">
																		<p style="width: 100%;">${riskPlan.riskPlanValue.name}</p>
																	</div>
																</a>
																<div class="d-flex flex-column">
																	<input type="hidden"
																		id="plans_selected_user_${riskPlan.id}"
																		value="${(not empty riskPlan.riskPlanValue.multipleOwners)?riskPlan.riskPlanValue.multipleOwners:riskDetail.createdBy}">
																	<ul class="list-unstyled order-list d-flex"
																		id="riskplans_user_${riskPlan.id}">
																		<c:if test="${not empty riskPlan.ownerList}">
																			<c:set value="${riskPlan.ownerList.size()}"
																				var="ownerCount" />
																			<c:if test="${ownerCount le 2}">
																				<c:forEach items="${riskPlan.ownerList}"
																					var="ownerObj" varStatus="status">

																					<c:if test="${status.count lt ownerCount}">
																						<li class="avatar avatar-sm"><c:if
																								test="${not empty ownerObj.profileImage}">
																								<img src="${ownerObj.profileImage}"
																									class="rounded-circle" alt="User" width="50">
																							</c:if> <c:if test="${empty ownerObj.profileImage}">
																								<img data-name="${ownerObj.formatImageName()}"
																									class="rounded-circle planuser" alt="User"
																									width="50">
																							</c:if></li>
																					</c:if>

																					<c:if test="${status.count eq ownerCount}">
																						<li class="avatar avatar-sm"><a href="#"
																							data-toggle="modal"
																							data-target=".riskplan_add_user_popup"
																							onclick="handleplanuserevent('${riskPlan.id}','edit')">
																								<c:if test="${not empty ownerObj.profileImage}">
																									<img src="${ownerObj.profileImage}"
																										class="rounded-circle" alt="User" width="50">
																								</c:if> <c:if test="${empty ownerObj.profileImage}">
																									<img data-name="${ownerObj.formatImageName()}"
																										class="rounded-circle planuser" alt="User"
																										width="50">
																								</c:if>
																						</a></li>
																					</c:if>
																				</c:forEach>
																			</c:if>
																			<c:if test="${ownerCount gt 2}">
																				<c:forEach items="${riskPlan.ownerList}"
																					var="ownerObj" begin="0" end="1" varStatus="status">

																					<li class="avatar avatar-sm"><c:if
																							test="${not empty ownerObj.profileImage}">
																							<img src="${ownerObj.profileImage}"
																								class="rounded-circle" alt="User" width="50">
																						</c:if> <c:if test="${empty ownerObj.profileImage}">
																							<img data-name="${ownerObj.formatImageName()}"
																								class="rounded-circle planuser" alt="User"
																								width="50">
																						</c:if></li>
																				</c:forEach>
																				<li class="avatar avatar-sm"><a href="#"
																					data-toggle="modal"
																					data-target=".riskplan_add_user_popup"
																					onclick="handleplanuserevent('${riskPlan.id}','edit')"><span
																						_ngcontent-hhc-c5="" class="badge">+${ownerCount-3}</span></a>
																				</li>
																			</c:if>
																		</c:if>
																		<c:if test="${empty riskPlan.ownerList}">
																			<li class="avatar avatar-sm"><a href="#"
																				data-toggle="modal"
																				data-target=".riskplan_add_user_popup"
																				onclick="handleplanuserevent('${riskPlan.id}','edit')">
																					<c:if
																						test="${not empty userPrincipal.profile.profileImage}">
																						<img src="${userPrincipal.profile.profileImage}"
																							class="rounded-circle" alt="User" width="50">
																					</c:if> <c:if
																						test="${empty userPrincipal.profile.profileImage}">
																						<img data-name="userPrincipal.profile.firstName"
																							class="rounded-circle planuser" alt="User"
																							width="50">
																					</c:if>
																			</a></li>
																		</c:if>
																	</ul>
																</div>

																<div class="flex-column">
																	<ul class="header-dropdown m-r--2 pt-3 d-flex"
																		style="margin-right: -12px; margin-top: -6px;">
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
																					data-target="#activity_desc_add_popup"
																					onclick="handleRiskActivitiesEvent(${riskPlan.id},'','add')">Add</a>
																				</li>
																				<li><a href="#" data-toggle="modal"
																					data-target="#plan_desc_add_popup"
																					onclick="handleRiskPlanEvent(${riskPlan.id},${riskId},'edit')">Edit</a></li>
																				<li><a onclick="deleteRiskPlan(${riskPlan.id})">Delete</a></li>
																			</ul></li>
																	</ul>
																</div>
															</div>

															<div class="d-flex flex-row">
																<div class="d-flex flex-column flex-fill">
																	<div class="d-flex flex-row">
																		<div class="icon">
																			<div
																				class="chart_green_plan_${riskPlan.id} chart_plan_pie_${riskPlan.id}"></div>
																		</div>
																		<div class="pie-progress">${riskPlan.riskPlanValue.progressval}%</div>
																	</div>
																</div>
																<div class="d-flex flex-column flex-fill">
																	<div>
																		<strong>${riskPlan.riskPlanValue.action}</strong>
																	</div>
																</div>
																<div class="d-flex flex-column">
																	<div>
																		<strong>${riskPlan.riskPlanValue.resolveDate}</strong>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div id="risk_treatment_${riskPlan.id}"
												class="panel-collapse in collapse show" role="tabpanel"
												aria-labelledby="risk_headingOne_1">
												<c:if test="${riskPlan.riskActivitiesDTOList != null}">
													<c:forEach items="${riskPlan.riskActivitiesDTOList}"
														var="riskReview">
														<div
															class="d-flex flex-row employe_content_border sub_initiative_details"
															style="margin: 11px 4px;">
															<div class="d-flex flex-column flex-fill profile_content">
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column init_flex_profile">
																		<p>${riskReview.riskActivitiesValue.name}</p>
																	</div>
																	<div class="d-flex flex-column">
																		<div>
																			<strong>${riskReview.riskActivitiesValue.status}</strong>
																		</div>
																	</div>

																	<div class="flex-column" style="margin-right: -10px;">
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
																						data-target="#activity_desc_add_popup"
																						onclick="handleRiskActivitiesEvent(${riskPlan.id},${riskReview.id},'edit')">Edit</a></li>
																					<li><a
																						onclick="deleteRiskActivities(${riskReview.id})">Delete</a></li>
																				</ul></li>
																		</ul>
																	</div>
																</div>
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column flex-fill">
																		<div class="d-flex flex-row">
																			<div class="icon">
																				<div id="two"
																					class="chart_green_activity_${riskReview.id} risk_chart_pie_activity_${riskReview.id}"></div>
																			</div>
																			<div class="pie-progress">${riskReview.riskActivitiesValue.progress}</div>
																		</div>
																	</div>
																	<div class="d-flex flex-column">
																		<div>${riskReview.riskActivitiesValue.resoleveby}</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>


				<div class="modal fade sub_initative_view_popup" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel_1"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header modalheadercolor">
								<h6 class="modal-title" id="myLargeModalLabel_1">View Risk
									Treatment</h6>
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
											<div id="subinitiaties-row-box_view"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="modal fade riskplan_add_user_popup" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel_1"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header modalheadercolor">
								<h6 class="modal-title" id="myLargeModalLabel_1">Edit Plan
									Users</h6>
								<button type="button" class="close getselectedplanUsers"
									id="plans_current_id" data-plans_sub_current_id=""
									data-plans_parent_id="" data-dismiss="modal" aria-label="Close">&times;</button>
							</div>
							<div id="user_subview" class=""></div>
							<div class="">
								<div class="col-lg-12 col-md-12">
									<div
										class="d-flex flex-column employee_div_body_box sub-ini-box"
										id="sub-ini-box_view">
										<span id="plan-ini-box_view_users"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade monitoring_add_user_popup" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel_1"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header modalheadercolor">
								<h6 class="modal-title" id="myLargeModalLabel_1">Edit
									Monitoring Users</h6>
								<button type="button" class="close getselectedmonitoringUsers"
									id="monitoring_current_id" data-monitoring_sub_current_id=""
									data-monitoring_parent_id="" data-dismiss="modal"
									aria-label="Close">&times;</button>
							</div>
							<div id="user_subview" class=""></div>
							<div class="">
								<div class="col-lg-12 col-md-12">
									<div
										class="d-flex flex-column employee_div_body_box sub-ini-box"
										id="sub-ini-box_view">
										<span id="monitoring-ini-box_view_users"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!---------Monitoring-------->
				<div
					class="col-lg-4 col-md-6 sub_initiatives select-toggle monitoring">
					<div class="card">
						<div class="header d-flex flex-row">
							<h5 class="prob d-flex flex-fill">
								<strong class="editableTxt1"
									onkeypress="return (this.innerText.length <= 25)"
									id="monitoringheader"
									data-oldmonitoringheader="${riskDetail.riskValue.monitoringheader != null ? riskDetail.riskValue.monitoringheader : 'Review & Monitoring'}"
									editable="true">${riskDetail.riskValue.monitoringheader != null ? riskDetail.riskValue.monitoringheader : 'Review & Monitoring'}</strong>
							</h5>

							<ul class="header-dropdown m-r--2 d-flex">
								<li class="dropdown m-t--10"><a href="#"
									onclick="return false;" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true"> <i class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right" x-placement="bottom-start"
										style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
										<li><a href="#" data-toggle="modal"
											data-target=".monitoring_view_popup"
											onclick="monitoringviewdetails(${riskId})">View</a></li>
										<li><a href="#" onclick="return false;"
											class="delete-row">Delete</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="d-flex flex-column employee_div_body_box">
							<div class="panel-group risk-panel-group" id="risk_accordion_1"
								role="tablist" aria-multiselectable="true">
								<c:if test="${riskMonitoringList != null}">
									<c:forEach items="${riskMonitoringList}" var="riskMonitor">


										<div class="panel risk-panel panel-col_border">
											<div class="panel-heading risk-panel-heading" role="tab"
												id="risk_headingOne_1">
												<div class="panel-title_risk">
													<div
														class="d-flex flex-row employe_content_border sub_initiative_details"
														style="margin-bottom: 0px; padding: 5px;">
														<div class="d-flex flex-column flex-fill profile_content"
															style="width: 245px;">
															<div class="d-flex flex-row">

																<a role="button" data-toggle="collapse"
																	data-parent="#risk_accordion_1"
																	href="#risk_monitoring_${riskMonitor.id}"
																	aria-expanded="false"
																	aria-controls="risk_monitoring_${riskMonitor.id}"
																	class="collapsed" style="padding: 0px 0px !important;">
																	<div class="d-flex flex-column init_flex_profile"
																		style="color: #1e252d;">
																		<p style="width: 100%;">${riskMonitor.riskMonitoringValue.name}</p>
																	</div>
																</a>
																<div class="d-flex flex-column">
																	<input type="hidden"
																		id="monitoring_selected_user_${riskMonitor.id}"
																		value="${(not empty riskMonitor.riskMonitoringValue.multipleOwners)?riskMonitor.riskMonitoringValue.multipleOwners:riskDetail.createdBy}">
																	<ul class="list-unstyled order-list d-flex"
																		id="riskmonitor_user_${riskMonitor.id}">
																		<c:if test="${not empty riskMonitor.ownerList}">
																			<c:set value="${riskMonitor.ownerList.size()}"
																				var="ownerCount" />
																			<c:if test="${ownerCount le 2}">
																				<c:forEach items="${riskMonitor.ownerList}"
																					var="ownerObj" varStatus="status">
																					<c:if test="${status.count lt ownerCount}">
																						<li class="avatar avatar-sm"><c:if
																								test="${not empty ownerObj.profileImage}">
																								<img src="${ownerObj.profileImage}"
																									class="rounded-circle" alt="User" width="50">
																							</c:if> <c:if test="${empty ownerObj.profileImage}">
																								<img data-name="${ownerObj.formatImageName()}"
																									class="rounded-circle monitoringuser"
																									alt="User" width="50">
																							</c:if></li>
																					</c:if>
																					<c:if test="${status.count eq ownerCount}">
																						<li class="avatar avatar-sm"><a href="#"
																							data-toggle="modal"
																							data-target=".monitoring_add_user_popup"
																							onclick="handlemonitoringuserevent('${riskMonitor.id}','edit')">

																								<c:if test="${not empty ownerObj.profileImage}">
																									<img src="${ownerObj.profileImage}"
																										class="rounded-circle" alt="User" width="50">
																								</c:if> <c:if test="${empty ownerObj.profileImage}">
																									<img data-name="${ownerObj.formatImageName()}"
																										class="rounded-circle monitoringuser"
																										alt="User" width="50">
																								</c:if>
																						</a></li>
																					</c:if>
																				</c:forEach>
																			</c:if>
																			<c:if test="${ownerCount gt 2}">
																				<c:forEach items="${riskMonitor.ownerList}"
																					var="ownerObj" begin="0" end="1" varStatus="status">
																					<li class="avatar avatar-sm"><c:if
																							test="${not empty ownerObj.profileImage}">
																							<img src="${ownerObj.profileImage}"
																								class="rounded-circle" alt="User" width="50">
																						</c:if> <c:if test="${empty ownerObj.profileImage}">
																							<img data-name="${ownerObj.formatImageName()}"
																								class="rounded-circle monitoringuser" alt="User"
																								width="50">
																						</c:if></li>
																				</c:forEach>
																				<li class="avatar avatar-sm"><a href="#"
																					data-toggle="modal"
																					data-target=".monitoring_add_user_popup"
																					onclick="handlemonitoringuserevent('${riskMonitor.id}','edit')">
																						<span _ngcontent-hhc-c5="" class="badge">+${ownerCount-3}</span>
																				</a></li>
																			</c:if>
																		</c:if>
																		<c:if test="${empty riskMonitor.ownerList}">
																			<li class="avatar avatar-sm"><a href="#"
																				data-toggle="modal"
																				data-target=".monitoring_add_user_popup"
																				onclick="handlemonitoringuserevent('${riskMonitor.id}','edit')">

																					<c:if
																						test="${not empty userPrincipal.profile.profileImage}">
																						<img src="${userPrincipal.profile.profileImage}"
																							class="rounded-circle" alt="User" width="50">
																					</c:if> <c:if
																						test="${empty userPrincipal.profile.profileImage}">
																						<img data-name="userPrincipal.profile.firstName"
																							class="rounded-circle monitoringuser" alt="User"
																							width="50">
																					</c:if>


																			</a></li>
																		</c:if>
																	</ul>
																</div>
																<div class="flex-column">
																	<ul class="header-dropdown m-r--2 pt-3 d-flex"
																		style="margin-right: -12px; margin-top: -6px;">
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
																					data-target="#risk_action_desc_popup"
																					onclick="handleReviewMonitoringEvent(${riskMonitor.id},${riskId}, 'edit')">Edit</a>
																				</li>
																				<li><a
																					onclick="deleteRiskMonitoring(${riskMonitor.id})"
																					class="delete-row">Delete</a></li>
																			</ul></li>
																	</ul>
																</div>
															</div>
															<div class="d-flex flex-row">
																<div class="d-flex flex-column flex-fill">
																	<div>
																		<strong>${riskMonitor.riskMonitoringValue.status}</strong>
																	</div>
																</div>
																<div class="d-flex flex-column">
																	<div>
																		<strong>${riskMonitor.riskMonitoringValue.resolveDate}</strong>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div id="risk_monitoring_${riskMonitor.id}"
												class="panel-collapse in collapse show" role="tabpanel"
												aria-labelledby="risk_headingOne_1">
												<c:if test="${riskMonitor.riskReviewList != null}">
													<c:forEach items="${riskMonitor.riskReviewList}"
														var="riskMonitorReview">
														<div
															class="d-flex flex-row employe_content_border sub_initiative_details"
															style="margin: 11px 4px; padding: 5px;">
															<div class="d-flex flex-column flex-fill profile_content"
																style="width: 245px;">
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column init_flex_profile">
																		<p>${riskMonitorReview.riskActivitiesValue.name}</p>
																	</div>
																	<div class="d-flex flex-column">
																		<div>
																			<strong>${riskMonitorReview.riskActivitiesValue.status}</strong>
																		</div>
																	</div>
																</div>
																<div class="d-flex flex-row">
																	<div class="d-flex flex-column flex-fill"></div>
																	<div class="d-flex flex-column">
																		<div>${riskMonitorReview.riskActivitiesValue.resoleveby}</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</div>
										</div>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>



				<!--#START monitoring View -->
				<div class="modal fade monitoring_view_popup" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel_1"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header modalheadercolor">
								<h6 class="modal-title" id="myLargeModalLabel_1">View
									Review & Monitoring</h6>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="col-lg-12 col-md-12 sub_initiatives">
								<div class="card">
									<div class="d-flex flex-column employee_div_body_box"
										id="milestone_view"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--#END monitoring View -->

				<!-- comments view start -->
				<div class="modal fade comments_view_popup" tabindex="-1"
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
													<div id="comments-row-box_view"></div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- comments view end -->


				<div
					class="col-lg-4 col-md-6 sub_initiatives select-toggle comments">
					<div class="card">
						<div class="header d-flex flex-row">
							<h5 class="prob d-flex flex-fill">
								<strong class="editableTxt1"
									onkeypress="return (this.innerText.length <= 25)"
									id="commentheader"
									data-oldcommentheader="${riskDetail.riskValue.commentheader != null ? riskDetail.riskValue.commentheader : 'Comments'}"
									editable="true">${riskDetail.riskValue.commentheader != null ? riskDetail.riskValue.commentheader : 'Comments'}</strong>
							</h5>
							<ul class="header-dropdown m-r--2 d-flex">
								<li class="dropdown m-t--10"><a href="#"
									onclick="return false;" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="true"> <i class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right" x-placement="bottom-start"
										style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
										<li><a href="#" data-toggle="modal"
											data-target=".comments_view_popup"
											onclick="commentsviewdetails(${riskId})">View</a></li>
										<li><a href="#" onclick="return false;"
											class="delete-row">Delete</a></li>
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
													<c:if
														test="${not empty commentsObj.riskCommentsValue.commentsImage}">
														<img src="${commentsObj.riskCommentsValue.commentsImage}"
															class="rounded-circle" alt="User" width="40">
													</c:if>
													<c:if
														test="${empty commentsObj.riskCommentsValue.commentsImage}">
														<img
															data-name="${commentsObj.riskCommentsValue.createdByName}"
															class="rounded-circle commentsuser" alt="User" width="40">
													</c:if>
												</div>
												<div class="flex-column comment_details">
													<ul>
														<li><span class="message-data-name"><strong>${commentsObj.riskCommentsValue.createdByName}</strong></span>
														</li>
														<li class="commentsdesc">${commentsObj.riskCommentsValue.desc}</li>
														<li>
															<ul class="d-flex flex-row">
																<li>Reply</li>
																<li>Like</li>
																<li>${commentsObj.riskCommentsValue.formattedTime}</li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="flex-column">
													<ul class="header-dropdown m-r--2 pt-2 d-flex">
														<li class="dropdown"><a href="#"
															onclick="return false;" class="dropdown-toggle"
															data-toggle="dropdown" role="button" aria-haspopup="true"
															aria-expanded="true"> <i class="material-icons">more_vert</i>
														</a>
															<ul class="dropdown-menu pull-right"
																x-placement="bottom-start"
																style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
																<li><a
																	onclick="deleteRiskComments(${commentsObj.id})">Delete</a>
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
							<form id="risk_comments_Form">
								<div class="form-group d-flex flex-row align-items-center">
									<div class="form-line">
										<input type="text" name="riskComments" id="riskComments"
											class="form-control" placeholder="Type a comment..."
											autocomplete="off" />
									</div>
									<div class="send_btn"
										onclick="handleRiskCommentsSave(${riskId},'add')">
										<i class="fas fa-arrow-right"></i>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>

			</div>
		</c:if>
	</section> 
	
	<script src="${contextroot}/js/app.min.js"></script>
	<script type="text/javascript"
		src="${contextroot}/js/knockout-3.5.0.js"></script> <script
		type="text/javascript" src="${contextroot}/js/daterangepicker.min.js"></script>

	<!-- Custom Js --> <!-- Knob Js --> <script
		src="${contextroot}/js/jquery-ui.min.js"></script> <script
		src="${contextroot}/js/moment.js"></script> <script
		src="${contextroot}/js/pages/core.js"></script> <script
		src="${contextroot}/js/pages/charts.js"></script> <script
		<script
		src="${contextroot}/js/pages/animated.js"></script> <script
		src="${contextroot}/js/jquery.editable.min.js"></script> <script
		src="${contextroot}/js/bootstrap-popover-x.js" type="text/javascript"></script>
	<script src="${contextroot}/js/amcharts.js"></script> <script
		src="${contextroot}/js/serial.js"></script> <script
		src="${contextroot}/js/light.js"></script> <script
		src="${contextroot}/js/d3.v4.js"></script> <script
		src="${contextroot}/js/d3-scale-chromatic.v1.min.js"></script> 
		<script src="${contextroot}/js/jquery-resize.js"></script> 
		<script src="${contextroot}/js/datepickerair.js"></script> 
		<script src="${contextroot}/js/datepicker.en.js"></script> 
		<script type="text/javascript" src="${contextroot}/js/chosen.jquery.min.js"></script>
		<script src="${contextroot}/js/widgets.js"></script>
		<script type="text/javascript" src="${contextroot}/js/risk.js"></script> 
		<script src="${contextroot}/js/initial.js"></script> 
		<script src="${contextroot}/js/pages/widgets/chart-widget.js"></script> 
		<script type="text/javascript" src="${contextroot}/js/d3.min.js"></script>

	<script>
				
	$(document).ready(function(){
	function initiativeBar() {
	var $body = $('body');
	if (!($body.hasClass('submenu-closed')) && !($body.hasClass('side-closed'))
			&& !($body.hasClass('ini-hide')) && !($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '230px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '485px');
	} else if (($body.hasClass('submenu-closed'))
			&& !($body.hasClass('side-closed'))
			&& !($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('ini-hide')) && !($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '230px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '484px');
	} else if (($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('side-closed'))
			&& !($body.hasClass('submenu-closed'))
			&& !($body.hasClass('ini-hide')) && !($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '260px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '484px');
	} else if (($body.hasClass('submenu-closed'))
			&& ($body.hasClass('side-closed'))
			&& !($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('ini-hide')) && !($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '59px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '313px');
	} else if (($body.hasClass('side-closed'))
			&& ($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('submenu-closed'))
			&& !($body.hasClass('ini-hide')) && !($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '260px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '514px'); // end default
	} else if (($body.hasClass('submenu-closed'))
			&& ($body.hasClass('ini-hide')) && !($body.hasClass('side-closed'))) {
		$('#initiative_sidebar').css('left', '-10px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '244px');
	} else if (($body.hasClass('submenu-closed'))
			&& ($body.hasClass('side-closed')) && ($body.hasClass('ini-hide'))) {
		$('#initiative_sidebar').css('left', '-260px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '75px');
	} else if (($body.hasClass('ini-hide')) && !($body.hasClass('side-closed'))
			&& !($body.hasClass('submenu-closed'))
			&& !($body.hasClass('side-closed-hover'))) {
		$('#initiative_sidebar').css('left', '-10px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '244px');
	} else if (($body.hasClass('ini-hide'))
			&& ($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('submenu-closed'))
			&& ($body.hasClass('side-closed'))) {
		$('#initiative_sidebar').css('left', '-260px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '275px'); // end hide
	} else if (($body.hasClass('submenu-closed'))
			&& ($body.hasClass('ini-show')) && !($body.hasClass('side-closed'))) {
		$('#initiative_sidebar').css('left', '230px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '485px');
	} else if (($body.hasClass('submenu-closed'))
			&& ($body.hasClass('side-closed')) && ($body.hasClass('ini-show'))) {
		$('#initiative_sidebar').css('left', '60px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '314px');
	} else if (($body.hasClass('ini-show')) && !($body.hasClass('side-closed'))
			&& !($body.hasClass('submenu-closed'))
			&& !($body.hasClass('side-closed-hover'))) {
		$('#initiative_sidebar').css('left', '230px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '485px');
	} else if (($body.hasClass('ini-show'))
			&& ($body.hasClass('side-closed-hover'))
			&& !($body.hasClass('submenu-closed'))
			&& ($body.hasClass('side-closed'))) {
		$('#initiative_sidebar').css('left', '260px');
		$('#section').css('margin-top', '34px');
		$('#section').css('margin-right', '15px');
		$('#section').css('margin-bottom', '0');
		$('#section').css('margin-left', '514px');
	}

}

$(".content, .navbar").mouseenter(function() {
	var $body = $('body');
	$body.removeClass('side-closed-hover');
	$body.addClass('submenu-closed');
	initiativeBar();
});

$(".sidebar").mouseenter(function() {
	var $body = $('body');
	$body.addClass('side-closed-hover');
	$body.removeClass('submenu-closed');
	initiativeBar();
});

if (localStorage.getItem("sidebar_option")) {
	jQuery("body").addClass(localStorage.getItem("sidebar_option"));
}
if ($('body').hasClass('side-closed')) {
	$(".sidebar-user-panel").css({
		"display" : "none"
	});
	initiativeBar();
} else {
	$(".sidebar-user-panel").css({
		"display" : "block"
	});
	initiativeBar();
}

	
		<c:if test="${riskTreatmentList != null}">
			<c:forEach items="${riskTreatmentList}" var="riskChart">
			var chartvalue		=	parseInt(100)-parseInt(${riskChart.riskPlanValue.progressval});
			var chartbalance	=	${riskChart.riskPlanValue.progressval};
			
			if(chartvalue	==	0){
				chartbalance	=	100;
			}
			
			if(chartbalance 	==	100){
				$(".chart_green_plan_${riskChart.id}, .chart_plan_pie_${riskChart.id}").sparkline([ chartbalance, chartvalue ], {
					type : 'pie',
					height : '30px',
					sliceColors : [ "#1aa243", "#ffffff" ]
				});
			}else{
				$(".chart_green_plan_${riskChart.id}, .chart_plan_pie_${riskChart.id}").sparkline([ chartbalance, chartvalue ], {
					type : 'pie',
					height : '30px',
					sliceColors : [ "#ffd500", "#ffffff" ]
				});	
			}
			
			<c:if test="${riskChart.riskActivitiesDTOList != null}">
				<c:forEach items="${riskChart.riskActivitiesDTOList}" var="riskview">
					var chartactivity			=	parseInt(100)-parseInt(${riskview.riskActivitiesValue.progress});
					var chartactivitybalance	=	${riskview.riskActivitiesValue.progress};
					
					if(chartactivity	==	0){
						chartactivitybalance	=	100;
					}
			
					if(chartactivitybalance 	==	100){
						$(".chart_green_activity_${riskview.id}, .risk_chart_pie_activity_${riskview.id}").sparkline([ chartactivitybalance, chartactivity ], {
							type : 'pie',
							height : '30px',
							sliceColors : [ "#1aa243", "#ffffff" ]
						});
					}else{
						$(".chart_green_activity_${riskview.id}, .risk_chart_pie_activity_${riskview.id}").sparkline([ chartactivitybalance, chartactivity ], {
							type : 'pie',
							height : '30px',
							sliceColors : [ "#ffd500", "#ffffff" ]
						});	
					}
				</c:forEach>
			</c:if>
			
		</c:forEach>
		</c:if>
		
		$('[class^=chart_green_plan_]').children(':first-child').css('border',
				'1px solid #c7c7c7').css('border-radius', '50%');
				
		$('[class^=chart_green_activity_]').children(':first-child').css('border',
				'1px solid #c7c7c7').css('border-radius', '50%');
	
	if(currentkpiId	==	"" || currentkpiId	==	undefined || currentkpiId	==	null){
		<c:forEach items="${riskList}" var="risk" begin="0" end="0">
		<c:if test="${pagenumber != null}">
			window.location 	=	"risks?kpiId=${risk.impactId}&riskId=${risk.id}&pageId=${pagenumber}";
		</c:if>
		<c:if test="${pagenumber == null}">
			window.location 	=	"risks?kpiId=${risk.impactId}&riskId=${risk.id}";
		</c:if> 
		
		</c:forEach>		
	}
	if(currentriskId	!=	"" || currentriskId	!=	undefined || currentriskId	!=	null){
		$(".sidebarriskid_"+currentriskId).addClass("riskSidebarHighLight");
	}
	
	<!--<c:if test="${riskDetail != null}">
		var imagecircleElement	=	"#riskimagestatuscircle";
		<c:if test="${riskDetail.riskValue.riskStatus == 'Rare'}">
			$(imagecircleElement).addClass("greenbarimagecircle");
		</c:if>	
		<c:if test="${riskDetail.riskValue.riskStatus == 'Unlikely'}">
			$(imagecircleElement).addClass("yellowbarimagecircle");
		</c:if>	
		<c:if test="${riskDetail.riskValue.riskStatus == 'Possible' || riskDetail.riskValue.riskStatus == 'Likely' || riskDetail.riskValue.riskStatus == 'Almost Certain'}">
			$(imagecircleElement).addClass("orangebarimagecircle");
		</c:if>	
		<c:if test="empty ${riskDetail.riskValue.riskStatus}">
			$(imagecircleElement).addClass("defaultbarimagecircle");
		</c:if>	
	   </c:if> -->
						    
			var elementclassimg	=	$("#riskimagestatuscircle").attr("data-riskimagestatus");
			if(elementclassimg	==	"Rare"){
				$("#riskimagestatuscircle").addClass('greenbarimagecircle');	
			}else if(elementclassimg	==	"Unlikely"){
				$("#riskimagestatuscircle").addClass('yellowbarimagecircle');	
			}else if(elementclassimg	==	"Possible" || elementclassimg	==	"Likely" || elementclassimg	==	"Almost Certain"){
				$("#riskimagestatuscircle").addClass('orangebarimagecircle');	
			}else{
				$("#riskimagestatuscircle").addClass('defaultbarimagecircle');
			}	
		
	$('.riskuser,.commentsuser,.planuser,.monitoringuser').initial({
				 charCount : 2,
				 height : 30,
				 width : 30,
				 fontSize : 18
				});
				
		$('.riskplan_add_user_popup,.riskactivities_add_user_popup').modal({show: false, backdrop: 'static',keyboard: false});
		
		$(".riskdropdown-hide").on("click", function (e) {
        	e.stopPropagation();
      	});
    });
      		
	</script>