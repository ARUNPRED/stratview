<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>StratRoom</title>
	<link href="${contextroot}/css/app.min.css" rel="stylesheet">
	<!-- Custom Css -->
	<link href="${contextroot}/css/style.css" rel="stylesheet" />
	<link href="${contextroot}/css/custom.css" rel="stylesheet" />
	<link href="${contextroot}/css/initatives.css" rel="stylesheet" />
	<link href="${contextroot}/css/icheck-bootstrap.min.css" rel="stylesheet" />
	<link href="${contextroot}/css/startroom/wedgets.css" rel="stylesheet" />
	<!-- You can choose a theme from css/styles instead of get all themes -->
	<link href="${contextroot}/css/styles/all-themes.css" rel="stylesheet" />
	<link href="${contextroot}/css/daterangepicker.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextroot}/css/datepickerair.css">
	<link rel="stylesheet" href="${contextroot}/css/jquery-ui.min.css">
    <link rel="stylesheet" href="${contextroot}/css/employee.css" rel="stylesheet" />
	<script type="text/javascript" src="${contextroot}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${contextroot}/js/jquery/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${contextroot}/js/jquery/additional-methods.min.js"></script>
	<script src="${contextroot}/js/gijgo.min.js" type="text/javascript"></script>
	<link href="${contextroot}/css/gijgo.min.css" rel="stylesheet" type="text/css" />
	<script async defer src="${contextroot}/js/buttons.js"></script>
	<link rel="stylesheet" href="${contextroot}/css/fonts/fontawesome_v_5/font-awesome.min.css">
	<link rel="stylesheet" href="${contextroot}/css/fonts/fontawesome_v_5/all.css">
	    <link rel="stylesheet" href="${contextroot}/css/nano.min.css" />
    <link rel="stylesheet" href="${contextroot}/css/monolith.min.css" />
    <link rel="stylesheet" href="${contextroot}/css/classic.min.css" />
	 <script src="${contextroot}/js/plotly-latest.min.js"></script>
	<link rel="stylesheet" href="${contextroot}/css/chosen.min.css">
	<script>
		function preview_images() {
			var total_file = document.getElementById("images").files.length;
			for (var i = 0; i < total_file; i++) {
				$("#image_preview").append(
					"<div class='col-md-3' style='padding-bottom: 4%' '><img class='img-responsive' src='" +
					URL.createObjectURL(event.target.files[i]) +
					"'></div>"
				);
			}
		}
	</script>

	<style>
.pointer{
	cursor:pointer;
}

.textspinprogress {
  width: 50px;
  height: 50px;
  background: none;
  position: relative;
}

.textspinprogress::after {
  content: "";
  width: 100%;
  height: 100%;
  border-radius: 50%;
  border: 6px solid #eee;
  position: absolute;
  top: 0;
  left: 0;
}

.textspinprogress>span {
  width: 50%;
  height: 100%;
  overflow: hidden;
  position: absolute;
  top: 0;
  z-index: 1;
}

.textspinprogress .textspinprogress-left {
  left: 0;
}

.textspinprogress .textspinprogress-bar {
  width: 100%;
  height: 100%;
  background: none;
  border-width: 6px;
  border-style: solid;
  position: absolute;
  top: 0;
}

.textspinprogress .textspinprogress-left .textspinprogress-bar {
  left: 100%;
  border-top-right-radius: 80px;
  border-bottom-right-radius: 80px;
  border-left: 0;
  -webkit-transform-origin: center left;
  transform-origin: center left;
}

.textspinprogress .textspinprogress-right {
  right: 0;
}

.textspinprogress .textspinprogress-right .textspinprogress-bar {
  left: -100%;
  border-top-left-radius: 80px;
  border-bottom-left-radius: 80px;
  border-right: 0;
  -webkit-transform-origin: center right;
  transform-origin: center right;
}

.textspinprogress .textspinprogress-value {
  position: absolute;
  top: 0;
  left: 0;
}

	.chosen-search input[type=text] {
		width:92% !important;
	}	
	
     #section .container-fluid .collapse_arrow_left .arrow_collapse_size {
        position: fixed;
        background: #fff;
        font-size: 20px !important;
        top: 22%;
        z-index: 999;
        color: #a3a3a3;
        margin-left: -30px;
        padding: 14px 6px 14px 2px;
        border-top: 1px solid #e9ecef;
        border-right: 1px solid #e9ecef;
        border-bottom: 1px solid #e9ecef;
        border-left: 0px solid #e9ecef;
        border-radius: 0px 12px 12px 0px;
        cursor: pointer;
        transition: 0.5s;
      }

      #section .container-fluid .collapse_arrow_right .arrow_collapse_size {
        position: fixed;
        background: #fff;
        font-size: 20px !important;
        top: 22%;
        z-index: 999;
        color: #a3a3a3;
        margin-left: -30px;
        padding: 14px 6px 14px 2px;
        border-top: 1px solid #e9ecef;
        border-right: 1px solid #e9ecef;
        border-bottom: 1px solid #e9ecef;
        border-left: 0px solid #e9ecef;
        border-radius: 0px 12px 12px 0px;
        cursor: pointer;
        transition: 0.5s;
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

      .chart-type {
        padding-top: 12px;
      }

      .chart-type img {
        width: 100%;
        height: auto;
      }

      center {
        cursor: pointer;
      }

      center:hover {
        padding: 8px;
        background: #e4e4e4;
        margin: -6px;
        border-radius: 4px;
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

      #result_panel > .panelbody > .list-group > .list-group-item {
        padding: 5px 10px !important;
      }

      #formula_builder1
      #summary_calculation1 {
        font-size: 11px !important;
      }
      
      #formula_builder,
      #summary_calculation {
        font-size: 11px !important;
      }

      #kpi_formula_popup > .modal-content > .modal-body {
        padding: 0 25px !important;
      }

      #kpi_formula_popup > .modal-content > .modal-body.card > .tab-content {
        padding: 0;
      }

      #formula_builder,#formula_builder1 {
        padding-bottom: 0px;
      }

      .panel:hover {
        cursor: pointer;
      }

      #formula-builder .col-md-4 {
        margin-bottom: 0px;
      }
      #formula-builder1 .col-md-4 {
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

      .bg-blue {
        background: linear-gradient(270deg, #10316b 0%, #4574c6 98.08%);
      }

      .bg-green {
        background: linear-gradient(270deg, #1e6262 0%, #09a2a2 98.08%);
      }

      .bg-purple {
        background: linear-gradient(90deg, #8b4fcb 0%, #581b98 98.44%);
      }

      .bg-pink {
        background: linear-gradient(270.12deg, #fd3270 0.05%, #fd5c8d 98.04%);
      }

      .text-type-card {
        height: 133px;
        box-shadow: 0px 0px 16px rgba(21, 21, 23, 0.14);
        border-radius: 16px !important;
      }

      .text-type-card .row {
        padding: 12px 18px;
      }

      .text-type-card .text-type-period {
        font-size: 9px;
        color: #fff;
        font-weight: 600;
        float: right;
        margin-right: -6%;
      }

      .text-type-card .header-dropdown i {
        font-size: 12px;
        color: #fff;
        text-align: right;
      }

      .text-type-card .header-dropdown i:hover {
        color: #fff !important;
      }

      .text-type-card h4 {
        font-size: 18px;
        font-weight: 500;
        color: #fff;
      }

      .text-type-card strong {
        font-weight: bold;
        font-size: 18px;
        color: #ffffff;
      }

      .text-type-card .text-type-trend {
        font-weight: 500;
        font-size: 12px;
        color: #ffffff;
      }

      .text-type-card span img {
        width: 16px;
        margin-top: -1%;
        margin-right: 2%;
      }

      .text-type-card .card-icon {
        width: 50px;
        height: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        background-color: #fff;
      }

      .text-type-card .card-icon i {
        font-size: 24px;
      }

      .text-type-card .card-chart i {
        font-size: 64px;
        color: #fff;
      }

      .text-type-card-mini {
        height: 94px;
        box-shadow: 0px 0px 16px rgba(21, 21, 23, 0.14);
        border-radius: 8px !important;
      }

      .text-type-card-mini .row {
        padding: 10px 12px;
      }

      .text-type-card-mini .text-type-period {
        font-size: 8px;
        color: #fff;
        font-weight: 600;
        float: right;
      }

      .text-type-card-mini h4 {
        font-size: 12px;
        font-weight: 500;
        color: #fff;
      }

      .text-type-card-mini strong {
        font-weight: bold;
        font-size: 12px;
        color: #ffffff;
      }

      .text-type-card-mini .text-type-trend {
        font-weight: 500;
        font-size: 10px;
        color: #ffffff;
      }

      .text-type-card-mini span img {
        width: 14px;
        margin-top: -1%;
        margin-right: 2%;
      }

      .text-type-card-mini .card-icon {
        width: 40px;
        height: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        background-color: #fff;
      }

      .text-type-card-mini .card-icon i {
        font-size: 18px;
      }

      .text-type-card-mini .card-chart img {
        width: 48px;
      }

      .sub_initiatives .header {
        background: #ffffff !important;
        border-top-left-radius: 16px !important;
        border-top-right-radius: 16px !important;
        color: #565656 !important;
      }

      .sub_initiatives .card .header .prob {
        text-align: center;
      }

      .sub_initiatives .card {
        border-radius: 16px !important;
      }

      .card .header .header-dropdown i {
        color: #565656 !important;
        font-size: 18px;
      }

      .dashboard-table thead tr th {
        border: 1px solid #1e252d !important;
        padding: 6px 4px 6px 4px;
        font-size: 12px !important;
        color: #ffffff;
        background: #383838;
        font-weight: 600;
      }

      .sub_initiatives .dashboard-table tbody tr td {
        border: 1px solid #1e252d !important;
        padding: 8px 4px 8px 4px !important;
        font-size: 12px !important;
        color: #4a4a4a;
        text-align:center !important;
      }

      .sub_initiatives .card .header .prob {
        font-size: 16px;
      }

      .paging-nav {
        text-align: right;
        padding-top: 2px;
      }

      .paging-nav a {
        margin: 6px 2px;
        text-decoration: none;
        display: inline-block;
        padding: 4px 10px;
        background: #71767a;
        color: #fff !important;
        border-radius: 3px;
      }

      .paging-nav .selected-page {
        background: #1e252d;
        font-weight: bold;
      }

      .chartPeriodCustom {
        position: initial !important;
      }

      .ddPeriodCustom {
        position: initial !important;
      }

      .dtPeriodCustom {
        position: initial !important;
      }

      #mapdiv {
        width: 100%;
        height: 322px;
      }

      .apexcharts-menu-item.exportSVG {
        display: none;
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
		<jsp:include page="modal/dashboardTextModal.jsp"></jsp:include>
		<jsp:include page="modal/dashboardChartModal.jsp"></jsp:include>
		<jsp:include page="modal/dashboardTableModal.jsp"></jsp:include>
		
		<div id="deleteModaldashboard" class="modal fade">
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
							<input type="hidden" id="deleterecordid"/>
							<button type="button" class="btn-default1 btn" data-dismiss="modal" aria-label="Close">Cancel</button>
							<button type="button" class="btn btn-danger confirm-modal-deleteBtn" onclick="handleeventdelete()">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<aside id="initiative_sidebar" class="initiative_sidebar">
        <div class="sub_initiatives" id="sub_initiatives" style="height: 100%;">
          <div class="card" style="height: 100%;">
            <div class="header d-flex flex-row initiate_sidebar" style="margin-top: 5%;">
              <h5 class="prob flex-fill" style="text-align: center;">
                <strong style="color: #333; font-size: 16px;">Settings</strong>
              </h5>
            </div>
			<div class="d-flex flex-column" id="initiate_sidebar">
              <div class="d-flex flex-column sub_initiative_sidebar_details side_border_p" style="cursor: auto;">
                <div class="d-flex flex-row">
                  <div class="d-flex flex-column profile_content" style="border-bottom: 1px solid #ececec;">
                    <span style="font-size: 13px;font-weight: 600;color: #1e252d;margin: 8px 0 6px 0px;">Page Layout</span>
                  </div>
                </div>
                <div class="row" style="padding: 8px 28px;">
                  <div class="col-12 custom-control custom-radio" onclick="twoColumn()">
                    <input type="radio" class="custom-control-input" id="defaultChecked1" name="pagelayouttype" checked/>
                    <label class="custom-control-label" for="defaultChecked1" style="padding-left: 8px;">
                      Two Column
                    </label>
                  </div>

                  <div class="col-12 custom-control custom-radio" onclick="threeColumn()">
                    <input type="radio" class="custom-control-input" id="defaultChecked2" name="pagelayouttype"/>
                    <label class="custom-control-label" for="defaultChecked2" style="padding-left: 8px;">
                      Three Column
                    </label>
                  </div>
                </div>
              </div>

              <div class="d-flex flex-column sub_initiative_sidebar_details side_border_p" style="cursor: auto;">
                <div class="d-flex flex-row p-b-5">
                  <div class="d-flex flex-column profile_content" style="border-bottom: 1px solid #ececec;">
                    <span style="font-size: 13px;font-weight: 600;color: #1e252d;margin: 8px 0 6px 0px;">Widget Type</span>
                  </div>
                </div>
                <div class="row" style="padding-top: 8px;">
                  <div class="form-group browser-default col-12">
                    <select id="widget_type" name="widget_type" class="form-control valid" aria-invalid="false">
                      <option value="Chart">Chart</option>
                      <option value="Text">Text</option>
                      <option value="Table">Table</option>
                      <option value="Map">Map</option>
                    </select>
                  </div>
                </div>

                <div class="row widget Chart" style="padding: 8px; display: none;">
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Bubble">
                      <img ondragstart="dragStart(event)" draggable="true" id="BubbleChart" src="images/widgets/Bubble.png" alt="Bubble Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Column">
						<img ondragstart="dragStart(event)" draggable="true" id="ColumnChart" src="images/widgets/Column.png" alt="Column Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Line">
						<img ondragstart="dragStart(event)" draggable="true" id="LineChart" src="images/widgets/Line.png" alt="Line Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Area">
						<img ondragstart="dragStart(event)" draggable="true" id="AreaChart" src="images/widgets/Area.png" alt="Area Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Pie">
						<img ondragstart="dragStart(event)" draggable="true" id="PieChart" src="images/widgets/Pie.png" alt="Pie Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Waterfall">
						<img ondragstart="dragStart(event)" draggable="true" id="WaterfallChart" src="images/widgets/Waterfall.png" alt="Waterfall Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Multi axis">
						<img ondragstart="dragStart(event)" draggable="true" id="MultiAxis" src="images/widgets/Multiaxis.png" alt="MultiAxis Chart"/>
                    </center>
                  </div>
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Stacked">
						<img ondragstart="dragStart(event)" draggable="true" id="StackedChart" src="images/widgets/Stacked.png" alt="StackedChart Chart"/>
                    </center>
                  </div>
                  
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Radial">
						<img ondragstart="dragStart(event)" draggable="true" id="RadialMulti" src="images/widgets/radial.png" alt="RadialMulti Chart"/>
                    </center>
                  </div>
				  
                  <div class="col-3 form-group chart-type">
                    <center data-toggle="tooltip" title="Heat Map">
										<img ondragstart="dragStart(event)" draggable="true"
											id="HeatMap" src="images/widgets/Heatmap.png"
											alt="HeatMap Chart" />
									</center>
                  </div>
                </div>

                <div
                  class="row widget Text"
                  style="padding: 2px; display: none; padding-top: 8px;"
                >
                  <div class="col-12 form-group">
                    <div
                      class="d-flex flex-row employe_content_border sub_initiative_details"
                      style="padding: 0; border-radius: 8px;"
                    >
                      <div
                        class="flex-column flex-fill profile_content"
                        style="padding: 0;"
                      >
                        <div
                          class="text-type-card-mini bg-blue"
                          ondragstart="dragStart(event)"
                          draggable="true"
                          id="normalTextType1"
                        >
                          <div class="row">
                            <div class="col-12">
                              <span class="text-type-period">
                                --
                              </span>
                            </div>
                            <div
                              class="col-12"
                              style="margin-bottom: 6%; margin-top: -2%;"
                            >
                              <h4>--</h4>
                              <strong>--</strong>
                            </div>
                            <div class="col-12">
                              <span>
                                <img
                                  src="images/icon/up.png"
                                  alt="Trend Low"
                                />
                              </span>
                              <span class="text-type-trend">--</span>
                            </div>
                            <div
                              class="col-12"
                              style="
                                position: absolute;
                                margin-top: 10%;
                                left: 60%;
                              "
                            >
                              <div class="card-icon">
                                <i
                                  class="fas fa-dollar-sign"
                                  style="color: #10316b;"
                                ></i>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                                        <div
                      class="d-flex flex-row employe_content_border sub_initiative_details"
                      style="padding: 0; border-radius: 8px;"
                    >
                      <div
                        class="flex-column flex-fill profile_content"
                        style="padding: 0;"
                      >
                        <div
                          class="text-type-card-mini bg-green"
                          ondragstart="dragStart(event)"
                          draggable="true"
                          id="normalTextType2"
                        >
                          <div class="row">
                            <div class="col-12">
                              <span class="text-type-period">
                                --
                              </span>
                            </div>
                            <div
                              class="col-12"
                              style="margin-bottom: 6%; margin-top: -2%;"
                            >
                              <h4>--</h4>
                              <strong>--</strong>
                            </div>
                            <div class="col-12">
                              <span>
                                <img
                                  src="images/icon/up.png"
                                  alt="Trend Low"
                                />
                              </span>
                              <span class="text-type-trend">--</span>
                            </div>
                            <div
                              class="col-12"
                              style="
                                position: absolute;
                                margin-top: 10%;
                                left: 60%;
                              "
                            >
                              <div class="card-icon">
                                <i
                                  class="fas fa-dollar-sign"
                                  style="color: #10316b;"
                                ></i>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div
                      class="d-flex flex-row employe_content_border sub_initiative_details"
                      style="padding: 0; border-radius: 8px;"
                    >
                      <div
                        class="flex-column flex-fill profile_content"
                        style="padding: 0;"
                      >
                        <div
                          class="text-type-card-mini bg-purple"
                          ondragstart="dragStart(event)"
                          draggable="true"
                          id="normalTextType3"
                        >
                          <div class="row">
                            <div class="col-12">
                              <span class="text-type-period">
                                --
                              </span>
                            </div>
                            <div
                              class="col-12"
                              style="margin-bottom: 6%; margin-top: -2%;"
                            >
                              <h4>--</h4>
                              <strong>--</strong>
                            </div>
                            <div class="col-12">
                              <span>
                                <img
                                  src="images/icon/up.png"
                                  alt="Trend Low"
                                />
                              </span>
                              <span class="text-type-trend">--</span>
                            </div>
                            <div
                              class="col-12"
                              style="
                                position: absolute;
                                margin-top: 10%;
                                left: 60%;
                              "
                            >
                              <div class="card-icon">
                                <i
                                  class="fas fa-dollar-sign"
                                  style="color: #10316b;"
                                ></i>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                                        <div
                      class="d-flex flex-row employe_content_border sub_initiative_details"
                      style="padding: 0; border-radius: 8px;"
                    >
                      <div
                        class="flex-column flex-fill profile_content"
                        style="padding: 0;"
                      >
                        <div
                          class="text-type-card-mini bg-pink"
                          ondragstart="dragStart(event)"
                          draggable="true"
                          id="normalTextType4"
                        >
                          <div class="row">
                            <div class="col-12">
                              <span class="text-type-period">
                                --
                              </span>
                            </div>
                            <div
                              class="col-12"
                              style="margin-bottom: 6%; margin-top: -2%;"
                            >
                              <h4>--</h4>
                              <strong>--</strong>
                            </div>
                            <div class="col-12">
                              <span>
                                <img
                                  src="images/icon/up.png"
                                  alt="Trend Low"
                                />
                              </span>
                              <span class="text-type-trend">--</span>
                            </div>
                            <div
                              class="col-12"
                              style="
                                position: absolute;
                                margin-top: 10%;
                                left: 60%;
                              "
                            >
                              <div class="card-icon">
                                <i
                                  class="fas fa-dollar-sign"
                                  style="color: #10316b;"
                                ></i>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row widget Table" style="padding: 8px 16px; display: none;">
                  <label for="drilldown">Drill Down Table</label>
                  <div class="col-12 form-group chart-type employe_content_border sub_initiative_details">
					<img ondragstart="dragStart(event)" draggable="true" id="drilldownDragDiv" src="images/widgets/Drilldown.png" alt="Drilldown"/>
                  </div>

                  <label for="data" style="padding-top: 6%;">Data Table</label>
                  <div class="col-12 form-group chart-type employe_content_border sub_initiative_details">
					<img ondragstart="dragStart(event)" draggable="true" id="dataDragDiv" src="images/widgets/Data.png" alt="Data"/>
                  </div>
                </div>

                <div class="row widget Map" style="padding: 8px; display: none;">
                  <div class="col-12 form-group">
                    <div class="col-12 form-group employe_content_border sub_initiative_details" >
                      <img ondragstart="dragStart(event)" draggable="true" id="mapDragDiv" src="images/widgets/Map-img.png" alt="Map"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>
			
            
          </div>
        </div>
      </aside>
	</div>
	<!--#END View -->
	
	<!-- Text Setting -->
	<div
      class="modal fade"
      id="text_setting"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4>Text Settings</h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="form-group col-md-12">
                <label for="">Display Name</label>
                <input type="text" class="form-control browser-default" />
              </div>

              <div class="form-group col-md-6">
                <label for="">Card Type</label>
                <select
                  class="form-control browser-default"
                  id="card_type_select"
                >
                  <option value="Text">Icon</option>
                  <option value="Chart">Chart</option>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label for="">Select Icon</label>
                <select class="form-control browser-default" id="icon_select">
                  <option value="$ Dollar">$ Dollar</option>
                  <option value="% Percentage">% Percentage</option>
                  <option value="# Number"># Number</option>
                </select>
              </div>

              <div class="form-group col-md-6">
                <label for="">Data Field</label>
                <input
                  type="text"
                  class="form-control browser-default"
                  id="kpi_formula"
                  readonly
                  data-toggle="modal"
                  data-target="#kpi_formula_popup"
                  role="button"
                />
              </div>
              <div class="form-group col-md-6">
                <label for="">Period</label>
                <input
                  type="text"
                  class="form-control browser-default daterangepicker-field-period"
                />
              </div>

              <div class="form-group col-md-6">
                <label for="">Gap</label>
                <input
                  type="text"
                  class="form-control browser-default"
                  id="kpi_formula"
                  readonly
                  data-toggle="modal"
                  data-target="#kpi_formula_popup"
                  role="button"
                />
              </div>
              <div class="col-12">
                <hr />
              </div>
              <div class="col-12">
                <div class="form-line right">
                  <button
                    type="button"
                    class="btn-default1 btn"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    Cancel
                  </button>
                  <button class="initative_save_btn" value="Save">Save</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Text Setting -->
	
	<!-- Chart Period -->
    <div
      class="modal fade"
      id="chart_period"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4>Chart Period</h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-12">
                <div class="container">
                  <div
                    data-bind="
                    daterangepicker: dateRange,
                    daterangepickerOptions: {
                      standalone: true
                    }
                    "
                  ></div>
                </div>
              </div>

              <div class="col-12">
                <hr />
              </div>
              <div class="col-12">
                <div class="form-line right">
                  <button
                    type="button"
                    class="btn-default1 btn"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    Cancel
                  </button>
                  <button class="initative_save_btn" value="Save">Save</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Chart Period -->
        
    <!-- Drill Down Table View -->
    <div
      class="modal fade"
      id="drilldown_view"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4>Drill Down Table View</h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
            <table class="table dashboard-task-infos align-center dashboard-table" id="drilldownTableView" style="margin-bottom: 0px !important;">
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- END Drill Down Table View  -->

    <!-- Data Table Setting -->
    <div
      class="modal fade"
      id="datatable_setting"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4>Data Table Settings</h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="form-group col-md-12">
                <label for="">KPI Name</label>
                <input
                  type="text"
                  class="form-control browser-default"
                  id="kpi_formula"
                  readonly
                  data-toggle="modal"
                  data-target="#kpi_formula_popup"
                  role="button"
                />
              </div>
              <div class="form-group col-md-12 mt-2">
                <label for="kpi_fields">Data Fields</label>
                <ul class="d-flex flex-row flex-wrap ml-2">
                  <li>
                    <div class="form-check">
                      <div class="form-check">
                        <label class="form-check-label">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                          />
                          Actual
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <div class="form-check">
                        <label class="form-check-label">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                          />
                          Target
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <div class="form-check">
                        <label class="form-check-label">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                          />
                          Gap
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="form-check">
                      <div class="form-check">
                        <label class="form-check-label">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                          />
                          YTD
                          <span class="form-check-sign">
                            <span class="check"></span>
                          </span>
                        </label>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="col-12">
                <hr style="border: 1px solid #505050;" />
              </div>
              <div class="col-12">
                <div class="form-line right">
                  <button
                    type="button"
                    class="btn-default1 btn"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    Cancel
                  </button>
                  <button class="initative_save_btn" value="Save">
                    Save
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Data Table Setting -->

    <!-- Data Table View -->
    <div
      class="modal fade"
      id="datatable_view"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h4>Data Table View</h4>
            <button type="button" class="close pull-right" data-dismiss="modal">
              &times;
            </button>
          </div>
          <div class="modal-body">
            <table class="table dashboard-task-infos align-center dashboard-table" id="dataTableView" style="margin-bottom: 0px !important;">
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- END Data Table View  -->

	<!-- Chart View -->
    <div
      class="modal fade"
      id="viewchartsettings"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div class="chartviewsettingsclass" id=""></div>
            <div class="chartviewsettingslarge" id="" style="display:none;"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- Chart View -->

    <!-- Column Large -->
    <div
      class="modal fade"
      id="column-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Columnlarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Column Large -->

    <!-- Area Large -->
    <div
      class="modal fade"
      id="area-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Arealarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Area Large -->

    <!-- Multiaxis Large -->
    <div
      class="modal fade"
      id="multiaxis-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Multiaxislarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Multiaxis Large -->

    <!-- Bubble Large -->
    <div
      class="modal fade"
      id="bubble-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div class="largechart" id="Bubblelarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Bubble Large -->

    <!-- Line Large -->
    <div
      class="modal fade"
      id="line-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Linelarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Line Large -->

    <!-- Pie Large -->
    <div
      class="modal fade"
      id="pie-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Pielarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Pie Large -->

    <!-- Waterfall Large -->
    <div
      class="modal fade"
      id="waterfall-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Waterfalllarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Waterfall Large -->

    <!-- Stacked Large -->
    <div
      class="modal fade"
      id="stacked-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Stackedlarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Stacked Large -->

    <!-- Radial Large -->
    <div
      class="modal fade"
      id="radial-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="RadialMultilarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Column Large -->

    <!-- Heatmap Large -->
    <div
      class="modal fade"
      id="heatmap-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div id="Heatmaplarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Heatmap Large -->

    <!-- Heatmap Large -->
    <div
      class="modal fade"
      id="map-large"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myLargeModalLabel_1"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div style="height: 400px;" id="Maplarge"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- END Heatmap Large -->

    <!-- KPI Calculator -->
    <div
      class="modal fade" id="kpi_formula_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" modal-backdrop="false" data-backdrop="false">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title" id="myLargeModalLabel">KPI Calculator</h6>
            <button type="button" class="close" data-dismiss="modal" id="closePopupId" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body" style="padding: 0 25px;">
            <div class="col-md-8" style="padding: 0;">
              Field Name: &nbsp;
              <select class="form-control browser-default" id="fieldId">
                <option value="Actual">Actual</option>
                <option value="Target">Target</option>
                <option value="Budget">Budget</option>
                <option value="Forecast">Forecast</option>
                <option value="Gap">Gap</option>
              </select>
            </div>
            <div class="card">
              <ul class="nav nav-tabs" role="tablist" style="padding-bottom: 10px;">
                <li class="nav-item m-l-10" style="top: -4px; background: transparent;">
                  <a class="nav-link active" data-toggle="tab" style="max-width: 170px;" href="#formula_builder" >Formula Builder</a>
                </li>
                <li class="nav-item m-l-10" style="top: -4px; background: transparent;">
                  <a class="nav-link" data-toggle="tab" style="max-width: 170px;" href="#summary_calculation">Summary Calculation</a
                  >
                </li>
              </ul>
              <div class="tab-content" style="padding: 0;">
                <div class="tab-pane body active" id="formula_builder">
                  <div class="row col-md-12">
                    <textarea class="browser-default" name="formula" id="formula" placeholder="" cols="" rows="1" autocomplete="off"></textarea>
                    <!-- <textarea name="formula" id="formula"></textarea> -->
                  </div>
                     <div class="row col-md-12">
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('+')">+</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('-')">-</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('*')">*</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('/')">/</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('%')">%</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('(')">(</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula(')')">)</button>
                        <!--<button type="button" class="opr btn btn-secondary" onclick="updateFormula('[')">[</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula(']')">]</button>-->
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula(':')">:</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('AND')">AND</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('OR')">OR</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('NOT')">NOT</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('IN')">IN</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('==')">==</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('!=')">!=</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('>')">></button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('<')"><</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('>=')">>=</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updateFormula('<=')"><=</button>
                    </div>
                    
                  <div class="row">
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel">
                        <div class="panel-heading">
                          <h6 class="panel-title">Fields and measures:</h6>
                        </div>
                        <div class="panel-body" data-spy="scroll">
                        	<input type="text" class="form-control browser-default" onkeyup="fieldmeasurefilter()" id="fieldmeasurefilter" autocomplete="off">
                            <ul class="list-group" id="measureNames">
                            </ul>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel1">
                        <div class="panel-heading">
                          <h6 class="panel-title">Functions:</h6>
                        </div>
                        <div class="panel-body">
                          <ul class="list-group">
                            <li class="list-group-item" onclick="updateFormula('if')">If</li>
                            <li class="list-group-item" onclick="updateFormula('Max')">Max</li>
                            <li class="list-group-item" onclick="updateFormula('Min')">Min</li>
                            <li class="list-group-item" onclick="updateFormula('Median')">Median</li>
                            <li class="list-group-item" onclick="updateFormula('sum')">sum</li>
                            <li class="list-group-item" onclick="updateFormula('agg')">agg</li>
                            <li class="list-group-item" onclick="updateFormula('avg')">avg</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel1">
                        <div class="panel-heading">
                          <h6 class="panel-title">Function Description:</h6>
                        </div>
                        <div class="panel-body">
                          <h6>IF</h6>
                          <p>
                            Returns second argument if first argument is true;
                            Returns optional third argument if first argument is
                            false; IF('element', 'trueCalc', 'falseCalc')
                          </p>
                        </div>
                        <input type="checkbox" name="check" /> Show argumnets in
                        formula
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4" style="margin-bottom: 0px;">
                    	<input type="hidden" id="kpiformulaHandletype">
                      <button name="validate" id="validate" class="btn btn-secondary" onclick="handleFormulaValidate()">Validate</button>
                      <button name="add" id="add" class="btn btn-secondary" onclick="handleFormulaAdd()">Add</button>
                    </div>
                  </div>
                </div>
                <div class="tab-pane body" id="summary_calculation">
                  <div class="col-md-12">
                    <div class="panel panel-primary" id="final_panel">
                      <div class="panel-heading">
                        <h6 class="panel-title">Formula</h6>
                      </div>
                      <div class="panel-body">
                        <ul class="list-group formula-panel">
                          <li class="list-group-item">Elapsed Year</li>
                          <li class="list-group-item">Ends With</li>
                          <li class="list-group-item">If</li>
                          <li class="list-group-item">Is Null</li>
                          <li class="list-group-item">Max</li>
                          <li class="list-group-item">Min</li>
                          <li class="list-group-item">Median</li>
                          <li class="list-group-item">Mid</li>
                        </ul>
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
    <!-- END KPI Calculator -->
    
    <!-- chart KPI Calculator -->
    <div
      class="modal fade" id="chart_formula_popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" modal-backdrop="false" data-backdrop="false">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title" id="myLargeModalLabel">KPI Calculator</h6>
            <button type="button" class="close" data-dismiss="modal" id="chartclosePopupId" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body" style="padding: 0 25px;">
            <div class="col-md-8" style="padding: 0;">
              Field Name: &nbsp;
              <select class="form-control browser-default" id="chartfieldId">
                <option value="Actual">Actual</option>
                <option value="Target">Target</option>
                <option value="Budget">Budget</option>
                <option value="Forecast">Forecast</option>
                <option value="Gap">Gap</option>
              </select>
            </div>
            <div class="card">
              <ul class="nav nav-tabs" role="tablist" style="padding-bottom: 10px;">
                <li class="nav-item m-l-10" style="top: -4px; background: transparent;">
                  <a class="nav-link active" data-toggle="tab" style="max-width: 170px;" href="#formula_builder1" >Formula Builder</a>
                </li>
                <li class="nav-item m-l-10" style="top: -4px; background: transparent;">
                  <a class="nav-link" data-toggle="tab" style="max-width: 170px;" href="#summary_calculation1">Summary Calculation</a
                  >
                </li>
              </ul>
              <div class="tab-content" style="padding: 0;">
                <div class="tab-pane body active" id="formula_builder1">
                  <div class="row col-md-12">
                    <textarea class="browser-default" name="chartsettingformula" id="chartsettingformula" placeholder="" cols="" rows="1" autocomplete="off" style="font-size:11px !important;"></textarea>
                    <!-- <textarea name="formula" id="formula"></textarea> -->
                  </div>
                     <div class="row col-md-12">
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('+')">+</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('-')">-</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('*')">*</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('/')">/</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('%')">%</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('(')">(</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula(')')">)</button>
                        <!--<button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('[')">[</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula(']')">]</button>-->
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula(':')">:</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('AND')">AND</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('OR')">OR</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('NOT')">NOT</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('IN')">IN</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('==')">==</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('!=')">!=</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('>')">></button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('<')"><</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('>=')">>=</button>
                        <button type="button" class="opr btn btn-secondary" onclick="updatechartFormula('<=')"><=</button>
                    </div>
                    
                  <div class="row">
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel">
                        <div class="panel-heading">
                          <h6 class="panel-title">Fields and measures:</h6>
                        </div>
                        <div class="panel-body" data-spy="scroll">
                        	<input type="text" class="form-control browser-default" onkeyup="fieldchartmeasurefilter()" id="fieldchartmeasurefilter" autocomplete="off">
                            <ul class="list-group" id="chartmeasureNames">
                            </ul>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel1">
                        <div class="panel-heading">
                          <h6 class="panel-title">Functions:</h6>
                        </div>
                        <div class="panel-body">
                          <ul class="list-group">
                            <li class="list-group-item" onclick="updatechartFormula('if')">If</li>
                            <li class="list-group-item" onclick="updatechartFormula('Max')">Max</li>
                            <li class="list-group-item" onclick="updatechartFormula('Min')">Min</li>
                            <li class="list-group-item" onclick="updatechartFormula('Median')">Median</li>
                            <li class="list-group-item" onclick="updatechartFormula('sum')">sum</li>
                            <li class="list-group-item" onclick="updatechartFormula('agg')">agg</li>
                            <li class="list-group-item" onclick="updatechartFormula('avg')">avg</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="panel panel-primary" id="result_panel1">
                        <div class="panel-heading">
                          <h6 class="panel-title">Function Description:</h6>
                        </div>
                        <div class="panel-body">
                          <h6>IF</h6>
                          <p>
                            Returns second argument if first argument is true;
                            Returns optional third argument if first argument is
                            false; IF('element', 'trueCalc', 'falseCalc')
                          </p>
                        </div>
                        <input type="checkbox" name="check" /> Show argumnets in
                        formula
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4" style="margin-bottom: 0px;">
                    	<input type="hidden" id="chartormulaHandletype">
                      <button name="validate" id="validate" class="btn btn-secondary" onclick="handleChartFormulaValidate()">Validate</button>
                      <button name="add" id="add" class="btn btn-secondary" onclick="handleChartFormulaAdd()">Add</button>
                    </div>
                  </div>
                </div>
                <div class="tab-pane body" id="summary_calculation1">
                  <div class="col-md-12">
                    <div class="panel panel-primary" id="final_panel">
                      <div class="panel-heading">
                        <h6 class="panel-title">Formula</h6>
                      </div>
                      <div class="panel-body">
                        <ul class="list-group formula-panel">
                          <li class="list-group-item">Elapsed Year</li>
                          <li class="list-group-item">Ends With</li>
                          <li class="list-group-item">If</li>
                          <li class="list-group-item">Is Null</li>
                          <li class="list-group-item">Max</li>
                          <li class="list-group-item">Min</li>
                          <li class="list-group-item">Median</li>
                          <li class="list-group-item">Mid</li>
                        </ul>
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
    <!-- END CHART KPI Calculator -->
	
	<section class="content" id="section">
		<div class="page-header row no-gutters py-2 m-t-70">
			<div class="col-lg-6 col-md-6 text-center text-sm-left pt-2 mb-0 ml-4">
				<h5 class="page-title" style="font-weight: 600; text-transform: uppercase;">Dashboard</h5>
			</div>
		</div>
      <!-- End Page Header -->
		<div class="container-fluid" style="height: 600px;" ondrop="drop(event)" ondragover="allowDrop(event)">
        <!-- COl -->
			<div class="collapse_arrow_right" style="display: none;">
			  <i class="arrow_collapse_size fas fa-caret-right"></i>
			</div>
			<div class="collapse_arrow_left">
			  <i class="arrow_collapse_size fas fa-caret-left"></i>
			</div>
			
			<div class="row row-padding m-0" id="text-body"></div>
			<div class="row row-padding m-0" id="dashboard-body"></div>
		</div>
	</section>

	<!-- Plugins Js -->

	<script src="${contextroot}/js/app.min.js"></script>

	<!-- Custom Js -->
	<script src="${contextroot}/js/admin.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/core.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/maps.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/worldLow.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/usaLow.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/animated.js"></script>
	<script src="${contextroot}/js/bundles/amcharts4/charts.js"></script>
	
	<!-- Knob Js -->
	<script type="text/javascript" src="${contextroot}/js/knockout-3.5.0.js"></script>
	<script type="text/javascript" src="${contextroot}/js/daterangepicker.min.js"></script>

	<script src="${contextroot}/js/jquery-ui.min.js"></script>
	<script src="${contextroot}/js/moment.js"></script>
	<script src="${contextroot}/js/paging.js"></script>
	<!--<script src="js/pages/spiritedaway.js"></script>-->
	
	<script src="${contextroot}/js/jquery.editable.min.js"></script>
	<script src="${contextroot}/js/bootstrap.bundle.min.js"></script>
	<script src="${contextroot}/js/pickr.es5.min.js"></script>
	<script src="${contextroot}/js/datepickerair.js"></script>
	<script src="${contextroot}/js/datepicker.en.js"></script>
	<script src="${contextroot}/js/widgets.js"></script>
	<script src="${contextroot}/js/pages/widgets/chart-widget.js"></script>
	<script src="${contextroot}/js/colors.js"></script>
	<script src="${contextroot}/js/shards.min.js"></script>
	<script src="${contextroot}/js/jquery.sharrre.min.js"></script>
	<script src="${contextroot}/js/chosen.jquery.min.js"></script>
	<script src="${contextroot}/js/dashboardpreference.js"></script>
	<script src="${contextroot}/js/datepickerair.js"></script>
	<script src="${contextroot}/js/d3.v5.js"></script>
	<script src="${contextroot}/js/apexcharts.js"></script>
	<script src="${contextroot}/js/initial.js"></script>
	<script>
      

      
      function mapRender() {
        am4core.ready(function () {
          // Themes begin
          am4core.useTheme(am4themes_animated);
          // Themes end

          // Create map instance
          var chart = am4core.create("mapdiv", am4maps.MapChart);

          // Set map definition
          chart.geodata = am4geodata_worldLow;

          // Set projection
          chart.projection = new am4maps.projections.Miller();

          // Series for World map
          var worldSeries = chart.series.push(new am4maps.MapPolygonSeries());
          worldSeries.exclude = ["AQ"];
          worldSeries.useGeodata = true;

          var polygonTemplate = worldSeries.mapPolygons.template;
          polygonTemplate.tooltipText = "{name}";
          polygonTemplate.fill = chart.colors.getIndex(0);
          polygonTemplate.nonScalingStroke = true;

          // Hover state
          var hs = polygonTemplate.states.create("hover");
          hs.properties.fill = am4core.color("#565678");

          // Series for United States map
          var usaSeries = chart.series.push(new am4maps.MapPolygonSeries());
          usaSeries.geodata = am4geodata_usaLow;

          var usPolygonTemplate = usaSeries.mapPolygons.template;
          usPolygonTemplate.tooltipText = "{name}";
          usPolygonTemplate.fill = chart.colors.getIndex(1);
          usPolygonTemplate.nonScalingStroke = true;

          // Hover state
          var hs = usPolygonTemplate.states.create("hover");
          hs.properties.fill = am4core.color("#red");
          chart.logo.disabled = true;
        }); // end am4core.ready()
      }

      am4core.ready(function () {
        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create map instance
        var chart = am4core.create("Maplarge", am4maps.MapChart);

        // Set map definition
        chart.geodata = am4geodata_worldLow;

        // Set projection
        chart.projection = new am4maps.projections.Miller();

        // Series for World map
        var worldSeries = chart.series.push(new am4maps.MapPolygonSeries());
        worldSeries.exclude = ["AQ"];
        worldSeries.useGeodata = true;

        var polygonTemplate = worldSeries.mapPolygons.template;
        polygonTemplate.tooltipText = "{name}";
        polygonTemplate.fill = chart.colors.getIndex(0);
        polygonTemplate.nonScalingStroke = true;

        // Hover state
        var hs = polygonTemplate.states.create("hover");
        hs.properties.fill = am4core.color("#565678");

        // Series for United States map
        var usaSeries = chart.series.push(new am4maps.MapPolygonSeries());
        usaSeries.geodata = am4geodata_usaLow;

        var usPolygonTemplate = usaSeries.mapPolygons.template;
        usPolygonTemplate.tooltipText = "{name}";
        usPolygonTemplate.fill = chart.colors.getIndex(1);
        usPolygonTemplate.nonScalingStroke = true;

        // Hover state
        var hs = usPolygonTemplate.states.create("hover");
        hs.properties.fill = am4core.color("#red");
        chart.logo.disabled = true;
      }); // end am4core.ready()


      $(document).ready(function () {
        $("#card_type_select").change(function () {
          var value = $("#card_type_select").val();
          if (value == "Chart") {
            $("#icon_select").prop("disabled", true);
          } else {
            $("#icon_select").prop("disabled", false);
          }
        });
      });


      $(".daterangepicker-field-period").daterangepicker({
        forceUpdate: true,
        periods: ["month", "quarter", "year"],
        period: "month",
        ranges: {
          "Last 30 days": [moment().subtract(29, "days"), moment()],
          "Last 90 days": [moment().subtract(89, "days"), moment()],
          "Last Year": [moment().subtract(1, "year").add(1, "day"), moment()],
          // 'All Time': 'all-time' // [minDate, maxDate]
        },
        callback: function (startDate, endDate, period) {
          var title = startDate.format("L")+"-"+endDate.format("L");
          $(this).val(title);
        },
      });
	
	  $("#chart-setting").click(function(){
	  		var i	=	parseInt(parseInt($(".chartsettingsappend").length)-1);
	  		++i;
	  		var tablebody	=	`<div class="form-group col-md-10 chartsettingsappend">
                        <label for="">Display Name</label>
                        <input type="text" class="form-control browser-default multidisplayname"/>
                      </div>
                      <div class="form-group col-md-2 color_picks_1">
                        <label for="sub_initative_progress" style="text-align: left;">Color</label>
                        <div class="input-group" style="margin-bottom: 0;">
                          <div class="input-group-append">
                            <span class="input-group-text pickr" style="width: 90px;border-radius: 0px;height: 30px;"></span>
                          </div>
                        </div>
                      </div>

                      <div class="form-group col-md-12">
                        <label for="">Data Field</label>
                        <input type="text" class="form-control browser-default chart_formula chartsettingformula_`+i+`" id="chart_kpi_formula" readonly data-toggle="modal"
                          data-target="#chart_formula_popup" onclick="handleChartFormulaEvent('',this)"
                          role="button"
                        />
                        <a href="#" id="kpi_trigger1" data-toggle="modal" data-target=".chart_formula_popup"></a>
                      </div>

                      <div class="form-group col-md-6">
                        <label for="">Axis</label>
                        <select class="form-control browser-default multiaxis">
                          <option value="Y-axis">Y-axis</option>
                          <option value="Z-axis">Z-axis</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="">Type</label>
                        <select class="form-control browser-default multitypefield">
                          <option value="Actual">Actual</option>
                          <option value="Target">Target</option>
                          <option value="Budget">Budget</option>
                          <option value="Forecast">Forecast</option>
                          <option value="Gap">Gap</option>
                        </select>
                      </div>
                      <div>
                      <input type="hidden" class="chartsettingsfieldname" id="chartsettingsfieldname_`+i+`">
                      </div>
                      <div class="col-12">
                        <hr style="border: 1px solid #505050;" />
                      </div>
		`;
		$("#chart-setting-div").append(tablebody);
		var colorchangeElement = document.querySelectorAll('.pickr');
                colorchangeElement.forEach((inputElement) => {
                    const pickr = new Pickr({
                        el: inputElement,
                        useAsButton: true,
                        theme: 'classic',

                        swatches: [
                            'rgba(244, 67, 54, 1)',
                            'rgba(233, 30, 99, 0.95)',
                            'rgba(156, 39, 176, 0.9)',
                            'rgba(103, 58, 183, 0.85)',
                            'rgba(63, 81, 181, 0.8)',
                            'rgba(33, 150, 243, 0.75)',
                            'rgba(3, 169, 244, 0.7)',
                            'rgba(0, 188, 212, 0.7)',
                            'rgba(0, 150, 136, 0.75)',
                            'rgba(76, 175, 80, 0.8)',
                            'rgba(139, 195, 74, 0.85)',
                            'rgba(205, 220, 57, 0.9)',
                            'rgba(255, 235, 59, 0.95)',
                            'rgba(255, 193, 7, 1)'
                        ],

                        components: {
                            preview: true,
                            opacity: true,
                            hue: true,

                            interaction: {
                                hex: true,
                                rgba: true,
                                hsva: true,
                                input: true,
                                save: true
                            }
                        }
                    }).on('save', color => {
                        inputElement.style.background = color.toRGBA().toString(0);
                		pickr.hide();
                        var colorcode	=	$(inputElement).attr("id");
                        if(colorcode !=	"" && colorcode !=	undefined){
                        	var result =	colorcodesave(colorcode);
                        	if(typeof result === 'object' && result.status	==	false){
                        		$.notify(result.msg);
                        		return false;
                        	}
                        }
                    })
                });
	  });	
      /*document.getElementById("chart-setting").onclick = duplicateChart;

      var i = 0;
      var originalChart = document.getElementById("chart-setting-div");

      function duplicateChart() {
        var clone = originalChart.cloneNode(true); // "deep" clone
        clone.id = "chart" + ++i; // there can only be one element with an ID
        $(clone).find('.multidisplayname').val('');
        $(clone).find('.chart_formula').val('');
        $(clone).find('.multiaxis').val('');
        $(clone).find('.multitypefield').val('');
        originalChart.parentNode.appendChild(clone);
      }*/

        /*document.getElementById("chart-setting").onclick = duplicateChart;

        var i = 0;
        var originalChart = document.getElementById("chart-setting-div");

        function duplicateChart() {
          var clone = originalChart.cloneNode(true);
          clone.id = "chart" + ++i;
          originalChart.parentNode.appendChild(clone);
        }*/

        /*document.getElementById("drilldown-setting").onclick = duplicateDrilldown;

        var i = 0;
        var originalDrilldown = document.getElementById("drilldown-setting-div");

        function duplicateDrilldown() {
          var clone = originalDrilldown.cloneNode(true); // "deep" clone
          clone.id = "drilldown" + ++i; // there can only be one element with an ID
          originalDrilldown.parentNode.appendChild(clone);
        }

        document.getElementById("datatable-setting").onclick = duplicateDatatable;

        var i = 0;
        var originalDatatable = document.getElementById("datatable-setting-div");

        function duplicateDatatable() {
          var clone = originalDatatable.cloneNode(true); // "deep" clone
          clone.id = "datatable" + ++i; // there can only be one element with an ID
          originalDatatable.parentNode.appendChild(clone);
        }*/
      
      $('#chart_setting,#text_setting,#kpi_formula_popup').modal({
		show : false,
		backdrop : 'static',
		keyboard : false
	});
	
    </script>
</body>