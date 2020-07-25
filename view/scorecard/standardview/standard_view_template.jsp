<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />


<style>
	.calendar-selects select {
		display: block !important;
		/* height: 2rem !important; */
		height: 2rem;
	}

	ul li label {
		font-size: 12px;
	}

	.orientation-right {
		top: 60px !important;
		right: 0 !important;
		left: auto !important;
		position: fixed;
	}
	
	.checkbuttoncolor {
	background-color: aliceblue;
}
</style>
<!-- #START# Page level body content -->
<div id="deleteModalscorecard" class="modal fade" style="top:30%">
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
					<input type="hidden" id="deletescoreid" />
					<input type="hidden" id="deleterecordtype" />
					<button type="button" class="btn-default1 btn" data-dismiss="modal"
						aria-label="Close">Cancel</button>
					<button type="button" class="btn btn-danger confirm-modal-deleteBtn"
						onclick="handlescoreeventdelete()">Delete</button>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="modals/perspective_modal.jsp"></jsp:include>
<jsp:include page="modals/objective_modal.jsp"></jsp:include>
<jsp:include page="modals/kpi_modal.jsp"></jsp:include>
<jsp:include page="modals/kpi_formula_modal.jsp"></jsp:include>
<jsp:include page="modals/kpi_custom_threshold.jsp"></jsp:include>
<jsp:include page="modals/kpi_ytd_formula.jsp"></jsp:include>
<jsp:include page="modals/scorecard_modal.jsp"></jsp:include>
<jsp:include page="templates/scorecard_template.jsp"></jsp:include>
<jsp:include page="modals/scorecard_import_modal.jsp"></jsp:include>


<section class="content">
	<input type="hidden" id="ischeckscurlornot" value="SCORECARD">
	<div class="container-fluid">
		<div class="row py-2">
			<div class="col-md-10">
				<h5 style="margin-top : -50px;"><span class="scorecardname"></span> <span
						id="scorecardstatusicon"></span></h5>
			</div>

			<div class="col-md-2" style="margin-top : -50px;">
				<button class="btn btn-custom-secondary scorecarddescription pull-right" data-toggle="modal"
					data-target=".scorecard_description_popup" onclick="handleScoreCardEvent()"
					style="margin-left: 4px;">
					<i class="fas fa-cog" style="font-size: 14px;"></i>
				</button>

				<!-- <a href="#" style="float:right; padding: 0px;position: relative;overflow: hidden;display: inline-block;">
                    <button class="btn btn-custom-secondary pull-right" id="OpenImgUpload" style="margin-left: 4px;"><i class="fas fa-upload"></i>
                    	<input type="file" accept=".xlsx, .xls, .csv" id="importscorescrd" style="position: absolute; left: 0; top: 0; opacity: 0; cursor: pointer;" />
                    </button>
              </a> -->

				<a href="#"
					style="float:right; padding: 0px;position: relative;overflow: hidden;display: inline-block;">
					<button class="btn btn-custom-secondary pull-right" data-toggle="modal"
						data-target=".file_upload_popup" style="margin-left: 4px;">
						<i class="fas fa-upload"></i>
						<!-- <input type="file" accept=".xlsx, .xls, .csv" id="importscorescrd"
							style="position: absolute; left: 0; top: 0; opacity: 0; cursor: pointer;" /> -->
					</button>
				</a>
				<!--<input type="file" type="file" accept=".xlsx, .xls, .csv" id="importscorescrd" style="display: none;" />
              <button class="btn btn-custom-secondary pull-right" id="OpenImgUpload" style="margin-left: 4px;">
                	<i class="fas fa-upload"></i>
              </button>-->

				<button class="btn btn-custom-secondary dropdown-toggle pull-right" data-toggle="dropdown">
					<i class="far fa-eye"></i>

					<ul class="dropdown-menu standard_dropdown-hide multi-column  columns pull-right"
						x-placement="bottom-start"
						style="white-space: normal; position: absolute;will-change: transform;top: 0px;left: 0px;transform: translate3d(0px, 24px, 0px);">

						<div class="row">
							<div class="col-sm-12">
								<div class="checkboxes">

									<ul class="multi-column-dropdown standard_multi-column-dropdown" id="viewiconTxt">

									</ul>
								</div>
							</div>
						</div>
					</ul>
				</button>
			</div>
		</div>
		<c:if test="${userPrincipal != null}">
			<input id="userPrincipal" type="hidden" name="userPrincipal" value="<c:out value="
				${userPrincipal.profile.empId}" />">
		</c:if>
		<c:if test="${pagenumber != null}">
			<input id="pagenumber" type="hidden" name="pagenumber" value="<c:out value=" ${pagenumber}" />">
		</c:if>


		<div class="tableview">
			<div id="scordcard-wrapper" class="row"></div>
			<jsp:include page="templates/perspective_template.jsp"></jsp:include>
			<jsp:include page="templates/perspective_header_row_template.jsp"></jsp:include>
			<jsp:include page="templates/objective_row_template.jsp"></jsp:include>
			<jsp:include page="templates/kpi_row_template.jsp"></jsp:include>
		</div>
	</div>
</section>



<!-- #END# Page level body content -->



<script src="${contextroot}/js/standard_view.js"></script>
<script>
	$('.date_pickers').datepicker({
		language: 'en',
		minDate: new Date(),
		range: true,
		autoClose: true,
		position: "top left",
		todayButton: true,
		onSelect: function (fd) {
			// $('.datepickers-container').hide();
		}
	});
	$('#kpi_formula').on('click', function () {
		$("#kpi_trigger").trigger("click");
	});
	$('#kpi_custom_threshold').on('click', function () {
		$("#kpi_custom_trigger").trigger("click");
	});
	$('#kpiYtdFormula').on('click', function () {
		$("#kpiYtdFormulaTrigger").trigger("click");
	});

	$(".list-group-item, .opr").click(function () {

	});

	$("#add").click(function () {
		var value = $("#formula").val();
		var ul = $(".formula-panel");
		var li = document.createElement("li");
		li.setAttribute("class", "list-group-item");
		li.appendChild(document.createTextNode(value));
		ul.append(li);
		$("#formula").val('');
	});

	$(".dropdown-hide").on("click", function (e) {
		e.stopPropagation();
	});

	/*$("#OpenImgUpload").click(function () {
		$("#importscorescrd").trigger("click");
		return false;
		});*/

	$('.kpi_description_popup,.kpi_formula_popup,.kpi_custom_threshold_popup,.kpiYtdFormulaPoPUp').modal({
		show: false,
		backdrop: 'static',
		keyboard: false
	});
</script>