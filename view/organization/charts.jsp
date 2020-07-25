<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<link href="css/app.min.css" rel="stylesheet">
<!-- Custom Css -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link href="css/startroom/wedgets.css" rel="stylesheet" />
<!-- You can choose a theme from css/styles instead of get all themes -->
<link href="css/charts.css" rel="stylesheet" />

<link href="css/styles/all-themes.css" rel="stylesheet" />
<link href="css/table-view.css" rel="stylesheet" />

<link rel="stylesheet" href="${contextroot}/css/datepickerair.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="${contextroot}/css/daterangepicker.min.css">

<script type="text/javascript" src="${contextroot}/js/jquery.min.js"></script>
<script type="text/javascript" src="${contextroot}/js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="${contextroot}/js/jquery/additional-methods.min.js"></script>
<script src='js/plotly-latest.min.js'></script>
        <link rel="stylesheet" href="css/nano.min.css">
        <link rel="stylesheet" href="css/monolith.min.css">
        <link rel="stylesheet" href="css/classic.min.css">
        <link href="css/select2.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/fonts/fontawesome_v_5/font-awesome.min.css">
		<link rel="stylesheet" href="css/fonts/fontawesome_v_5/all.css">
        <style>
        .pb-4, .py-4 {
		    padding-bottom: 0.0rem !important;
		}
		.pt-4, .py-4 {
		    padding-top: 0.5rem !important;
		}

        	.form_dropdown_text>option{
        		color:#444;
        	}
        	.form_dropdown_text{
        		color:#fff;
        	}
            .fa-cog,
            .fa-info-circle {
                color: #000;
            }
            
            .yAxisColor,
            .xAxisColor {
                background: #000;
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
            
            #formula_builder,
            #summary_calculation {
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
            
            .datepicker--nav {
                -webkit-box-shadow: none;
                -moz-box-shadow: none;
                -ms-box-shadow: none;
                box-shadow: none;
                background-color: #ffff;
                color: #9c9c9c;
                width: 100%;
                height: 36px;
            }
            
            .orientation-right {
                top: 60px !important;
                right: 0 !important;
                left: auto !important;
                position: fixed;
            }
            
            .chkbx {
                position: relative !important;
                opacity: 1 !important;
                margin: 6px !important;
                vertical-align: middle !important;
            }
            
            .select2-container {
                width: 240px !important;
            }
            
            .select2-container--default .select2-selection--multiple {
                border: none;
                border-bottom: 1px solid #9e9e9e !important;
                border-radius: 0 !important;
                height: 30px;
            }
            
            .select2-container--default.select2-container--focus .select2-selection--multiple {
                border: none;
                /* border-bottom: 1px solid #9e9e9e !important; */
            }
            .chart_kpi_box_size{
            height: 250px;
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
			<jsp:include page="templates/chartTemplate.jsp"></jsp:include>
			<jsp:include page="templates/chartDefaultTemplate.jsp"></jsp:include>
			<jsp:include page="templates/chartRowTemplate.jsp"></jsp:include> 
            <section class="content">
                <!-- Page Header -->
                <div class="page-header row no-gutters py-4 m-t--70">
                    <div class="col-lg-6 col-md-6 text-center text-sm-left pt-2 mb-0 ml-4">
                        <p class="page-title" style="font-weight: 600;text-transform: uppercase;">Charts</p>
                    </div>
                </div>
                <!-- End Page Header -->
                
                <div class="container-fluid" id="charttemplate">
                    

                </div>
            </section>
        </div>
        
                <!--#START Chart Popup -->
            	<div class="modal fade all_chart_popup" tabindex="-1" role="dialog" aria-labelledby="all_chart_popup" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" style="max-width: 100% !important;height:100%">
                    <div class="modal-content" style="height:100%">
                        <div class="modal-header chart_kpi_title modalheadercolor">
                            <div class="top-box">
                            </div>
                            <div class="span-text"></div>
                            <button type="button" class="close" id="kpiComments" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="kpi-box">
                                    </div>
                                    <div class="chart-box">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="chart_kpi_chart_box chart_kpi_box_size">
                                        <div id="chartdiv_init0" class="divResize" style="height:100%"></div>
                                        <div id="tag"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--#END Chart Popup -->
        <!-- Plugins Js -->
        <script src="js/app.min.js"></script>
                <script src="js/knockout-3.5.0.js"></script>
        <script src="js/daterangepicker.min.js"></script>
        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/bundles/amcharts4/core.js"></script>
        <script src="js/bundles/amcharts4/charts.js"></script>
        <script src="js/bundles/amcharts4/animated.js"></script>
        <!-- Knob Js -->
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/moment.js"></script>
        <!-- <script src="daterangepicker.min.js"></script> -->
        <script src="js/d3.v3.min.js"></script>
        <!-- <script src="d3.v4.js"></script> -->
        <script src="js/d3pie.min.js"></script>
        <script src="js/pages/todo/todo.js"></script>
        <script src="js/bundles/datamaps/d3.min.js"></script>
        <script src="js/bundles/datamaps/topojson.min.js"></script>
        <script src="js/bundles/datamaps/datamaps.world.min.js"></script>
        <script src="js/pages/maps/datamap.js"></script>
        <script src="js/moment.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.editable.min.js"></script>
        <script src="js/pickr.es5.min.js"></script>
        <script src="js/datepickerair.js"></script>
        <script src="js/datepicker.en.js"></script>
        <script src="js/widgets.js"></script>

        <script src="js/jquery-resize.js"></script>
        <script src="js/RadarChart.js"></script>
        <script src="js/plotly-latest.min.js"></script>
        <script src="js/suncalc.js"></script>
        <script src="js/chart-utils.js"></script>
        <script src="js/bar3d.js"></script>
        <script src="js/lodash.min.js"></script>
        <script src="js/loader.js"></script>
        <!-- <script src="js/pages/widgets/chart-widget.js"></script> -->
        <script src="js/select2.min.js"></script>
        <script>     
        $('.all_chart_popup').modal({show: false, backdrop: 'static',keyboard: false});
        var kpiList = {};
        var kpichartDataList	=	[];
        var xaxisChartField		=	{"1":"actual","2":"target","3":"budget","4":"forecast","5":"gap","6":"period"};
        var axixnameChartField		=	["actual","target","budget","forecast","gap","period"];
        var $chartElement	=	"#chartdiv_init";
        var ownerid	=	$("#userPrincipal").val();
        var viewchartObj = {};
 
            function getHeight(divId) {
                var innerHeight = $('#chartdiv_init' + divId).innerHeight();
                return innerHeight;
            }

            function getWidth(divId) {
                var innerWidth = $('#chartdiv_init' + divId).innerWidth();
                if (innerWidth <= 0)
                    innerWidth = 430;
                return innerWidth;
            }

            function drawChart(divId, xColor, yColor, xAxisfield, yAxisfield, chartField, defaultVal,typechart) {
            	var value;
            	value	=	(typechart	==	"chartpopupview"?defaultVal:$('#' + divId).val());
                if ((value == undefined || value == '') && (defaultVal != undefined || defaultVal != '')) {
                    value = defaultVal;
                }
                
                if (value == '1') {
                    $('#chartdiv_init' + divId).empty();
                    drawStandard(divId, xColor, yColor, xAxisfield, yAxisfield, chartField);
                }else if (value == '2') {
                    $('#chartdiv_init' + divId).empty();
                    drawBar(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '3') {
                    $('#chartdiv_init' + divId).empty();
                    drawLine(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '4') {
                    $('#chartdiv_init' + divId).empty();
                    drawBox(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '5') {
                    $('#chartdiv_init' + divId).empty();
                    drawPie(divId,xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '6') {
                    $('#chartdiv_init' + divId).empty();
                    drawBubble(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '7') {
                    $('#chartdiv_init' + divId).empty();
                    drawRadar(divId);
                }else if (value == '8') {
                    $('#chartdiv_init' + divId).empty();
                    drawPolar(divId);
                }else if (value == '9') {
                    $('#chartdiv_init' + divId).empty();
                    drawWaterFall(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '10') {
                    $('#chartdiv_init' + divId).empty();
                    drawRisk(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
                }else if (value == '11') {
                    $('#chartdiv_init' + divId).empty();
                    drawGantt(divId);
                }else if (value == '13') {
			        $('#chartdiv_init' + divId).empty();
			        drawSctter(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField);
			    }
            }

            function drawGantt(divId) {
                google.charts.load('current', {
                    'packages': ['gantt']
                });
                google.charts.setOnLoadCallback(drawChart1);

                function drawChart1() {

                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Task ID');
                    data.addColumn('string', 'Task Name');
                    data.addColumn('string', 'Resource');
                    data.addColumn('date', 'Start Date');
                    data.addColumn('date', 'End Date');
                    data.addColumn('number', 'Duration');
                    data.addColumn('number', 'Percent Complete');
                    data.addColumn('string', 'Dependencies');

                    data.addRows([
                        ['2014Spring', 'Spring 2014', 'spring',
                            new Date(2014, 2, 22), new Date(2014, 5, 20), null, 100, null
                        ],
                        ['2014Summer', 'Summer 2014', 'summer',
                            new Date(2014, 5, 21), new Date(2014, 8, 20), null, 100, null
                        ],
                        ['2014Autumn', 'Autumn 2014', 'autumn',
                            new Date(2014, 8, 21), new Date(2014, 11, 20), null, 100, null
                        ],
                        ['2014Winter', 'Winter 2014', 'winter',
                            new Date(2014, 11, 21), new Date(2015, 2, 21), null, 100, null
                        ],
                        ['2015Spring', 'Spring 2015', 'spring',
                            new Date(2015, 2, 22), new Date(2015, 5, 20), null, 50, null
                        ],
                        ['2015Summer', 'Summer 2015', 'summer',
                            new Date(2015, 5, 21), new Date(2015, 8, 20), null, 0, null
                        ],
                        ['2015Autumn', 'Autumn 2015', 'autumn',
                            new Date(2015, 8, 21), new Date(2015, 11, 20), null, 0, null
                        ],
                        ['2015Winter', 'Winter 2015', 'winter',
                            new Date(2015, 11, 21), new Date(2016, 2, 21), null, 0, null
                        ],
                        ['Football', 'Football Season', 'sports',
                            new Date(2014, 8, 4), new Date(2015, 1, 1), null, 100, null
                        ],
                        ['Baseball', 'Baseball Season', 'sports',
                            new Date(2015, 2, 31), new Date(2015, 9, 20), null, 14, null
                        ],
                        ['Basketball', 'Basketball Season', 'sports',
                            new Date(2014, 9, 28), new Date(2015, 5, 20), null, 86, null
                        ],
                        ['Hockey', 'Hockey Season', 'sports',
                            new Date(2014, 9, 8), new Date(2015, 5, 21), null, 89, null
                        ]
                    ]);

                    var options = {
                        height: getHeight(divId),
                        gantt: {
                            trackHeight: 30
                        }
                    };

                    var chart = new google.visualization.Gantt(document.getElementById('chartdiv_init' + divId));

                    chart.draw(data, options);

                }

            }

            function drawRisk(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
                var margin = {
                        top: 40,
                        right: 20,
                        bottom: 30,
                        left: 40
                    },
                    width = getWidth(divId) - margin.left - margin.right,
                    height = getHeight(divId) - margin.top - margin.bottom;

                var now = new Date(),
                    start = d3.time.year.floor(now),
                    end = d3.time.year.ceil(now);
                var x = d3.time.scale()
                    .range([0, width])
                    .domain([start, end]);
                var y = d3.scale.linear()
                    .range([height, 0])
                    .domain([-90, 90]);
                var color = d3.scale.linear()
                    .domain([90, 60, 30, 0])
                    .range(['#D7191C', '#FDAE61', '#ABD9E9', '#2C7BB6']);
                var xAxis = d3.svg.axis()
                    .scale(x)
                    .orient('bottom');
                var yAxis = d3.svg.axis()
                    .scale(y)
                    .orient('left');
                var svg = d3.select('#chartdiv_init' + divId).append('svg')
                    .attr('width', width + margin.left + margin.right)
                    .attr('height', height + margin.top + margin.bottom)
                    .append('g')
                    .attr('transform', 'translate(' + margin.left + ',' + margin.top + ')');
                // console.log(svg);
                var data = [],
                    latitudes = y.ticks(90),
                    days = d3.range(0, 365, 2).map(function(i) {
                        return d3.time.day.offset(start, i);
                    });
                for (var i = 0, len = latitudes.length - 1; i < len; i++) {
                    for (var j = 0, len2 = days.length - 1; j < len2; j++) {
                        var day1 = days[j],
                            day2 = days[j + 1],
                            lat1 = latitudes[i],
                            lat2 = latitudes[i + 1],
                            day = new Date((day1.valueOf() + day2.valueOf()) / 2),
                            lat = (lat1 + lat2) / 2;
                        var solarNoon = SunCalc.getTimes(day, lat, 0).solarNoon;
                        var altitude = SunCalc.getPosition(solarNoon, lat, 0).altitude * 180 / Math.PI;
                        data.push({
                            day1: day1,
                            day2: day2,
                            lat1: lat1,
                            lat2: lat2,
                            altitude: altitude
                        });
                    }
                }
                svg.selectAll('.cell')
                    .data(data)
                    .enter().append('rect')
                    .attr('x', function(d) {
                        return x(d.day1);
                    })
                    .attr('y', function(d) {
                        return y(d.lat2);
                    })
                    .attr('width', function(d) {
                        return x(d.day2) - x(d.day1);
                    })
                    .attr('height', function(d) {
                        return y(d.lat1) - y(d.lat2);
                    })
                    .attr('fill', function(d) {
                        return color(d.altitude);
                    });
                svg.append("g")
                    .attr("class", "x axis")
                    .attr("transform", "translate(0," + height + ")")
                    .attr('fill', xColor)
                    .call(xAxis);
                svg.append("g")
                    .attr("class", "y axis")
                    .attr('fill', yColor)
                    .call(yAxis);
            }

            function drawPolar(divId) {

                var margin = {
                        top: 10,
                        right: 10,
                        bottom: 10,
                        left: 10
                    },
                    width = getWidth(divId) - margin.left - margin.right,
                    height = getHeight(divId) - margin.top - margin.bottom;

                data = [{
                    type: "scatterpolar",
                    mode: "lines",
                    r: [0, 1.5, 1.5, 0, 2.5, 2.5, 0],
                    theta: [0, 10, 25, 0, 205, 215, 0],
                    fill: "toself",
                    fillcolor: '#709BFF',
                    line: {
                        color: 'black'
                    }
                }, {
                    type: "scatterpolar",
                    mode: "lines",
                    r: [0, 3.5, 3.5, 0],
                    theta: [0, 55, 75, 0],
                    fill: "toself",
                    fillcolor: '#E4FF87',
                    line: {
                        color: 'black'
                    }
                }, {
                    type: "scatterpolar",
                    mode: "lines",
                    r: [0, 4.5, 4.5, 0, 4.5, 4.5, 0],
                    theta: [0, 100, 120, 0, 305, 320, 0],
                    fill: "toself",
                    fillcolor: '#FFAA70',
                    line: {
                        color: 'black'
                    }
                }, {
                    type: "scatterpolar",
                    mode: "lines",
                    r: [0, 4, 4, 0],
                    theta: [0, 165, 195, 0],
                    fill: "toself",
                    fillcolor: '#FFDF70',
                    line: {
                        color: 'black'
                    }
                }, {
                    type: "scatterpolar",
                    mode: "lines",
                    r: [0, 3, 3, 0],
                    theta: [0, 262.5, 277.5, 0],
                    fill: "toself",
                    fillcolor: '#B6FFB4',
                    line: {
                        color: 'black'
                    }
                }]
                
                var data	=	kpichartDataList;

                layout = {
                    autosize: false,
                    width: width,
                    height: height,
                    polar: {
                        radialaxis: {
                            visible: true,
                            range: [0, 5]
                        }
                    },
                    showlegend: false
                }


                Plotly.newPlot('chartdiv_init' + divId, data, layout, {
                    modeBarButtonsToRemove: ['sendDataToCloud', 'autoScale2d', 'hoverClosestCartesian', 'hoverCompareCartesian', 'lasso2d', 'select2d'],
                    displaylogo: false,
                    showTips: true
                })
                $('.modebar-container').hide();
            }

            function drawArea(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
                var margin = {
                        top: 50,
                        right: 50,
                        bottom: 50,
                        left: 55
                    },
                    width = getWidth(divId)+50 - margin.left - margin.right,
                    height = getHeight(divId)+100 - margin.top - margin.bottom;

                var parseDate = d3.time.format("%b").parse;
                //formatPercent = d3.format(".0%");

                var x = d3.time.scale()
                    .range([0, width]);

                var y = d3.scale.linear()
                    .range([height, 0]);

                var color = d3.scale.category20();

                var xAxis = d3.svg.axis()
                    .scale(x)
                    .orient("bottom");

                var yAxis = d3.svg.axis()
                    .scale(y)
                    .orient("left")
                    //.tickFormat(formatPercent);

                var area = d3.svg.area()
                    .x(function(d) {
                        return x(d[xAxisfield]);
                    })
                    .y0(function(d) {
                        return y(d.y0);
                    })
                    .y1(function(d) {
                        return y(d.y0 + d.y);
                    });

                var stack = d3.layout.stack()
                    .values(function(d) {
                        return d.values;
                    });

                var svg = d3.select("#chartdiv_init" + divId).append("svg")
                    .attr("width", width + margin.left + margin.right)
                    .attr("height", height + margin.top + margin.bottom)
                    .append("g")
                    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

                /*var data = [{
                    "date": "Oct",
                    "Kermit": 113.44,
                    "piggy": 435.15,
                    "Gonzo": 19.57,
                    "fuzzy": 60.55,
                    "hogthrob": 53.02,
                    "animal": 268.28,
                    "floyd": 87.34,
                    "sam": 11.31
                }, {
                    "date": "Nov",
                    "Kermit": 109.86,
                    "piggy": 506.85,
                    "Gonzo": 18.97,
                    "fuzzy": 58.77,
                    "hogthrob": 388.37,
                    "animal": 131.48,
                    "floyd": 85.34,
                    "sam": 11.31
                }, {
                    "date": "Dec",
                    "Kermit": 113.46,
                    "piggy": 644.88,
                    "Gonzo": 19.57,
                    "fuzzy": 60.57,
                    "hogthrob": 669.47,
                    "animal": 0,
                    "floyd": 87.46,
                    "sam": 11.43
                }];
                var data	=	[{"date":"1","actual":10000,"target":"10000","gap":1000},{"date":"3","actual":5000,"target":3000,"gap":7000},
					{"date":"5","actual":3000,"target":4000,"gap":6000},{"date":"10","actual":7000,"target":9000,"gap":3000},
					{"date":"7","actual":7000,"target":9000,"gap":3000},{"date":"8","actual":7000,"target":9000,"gap":3000}];*/
				var data	=	kpichartDataList;					
                color.domain(d3.keys(data[0]).filter(function(key) {
                    return key !== xAxisfield;
                }));
                data.forEach(function(d) {
                    d[xAxisfield] = d[xAxisfield];
                });

                var browsers = stack(color.domain().map(function(name) {
                    return {
                        name: name,
                        values: data.map(function(d) {
                            return {
                                date: d[xAxisfield],
                                y: d[name] * 1
                            };
                        })
                    };
                }));

                // Find the value of the day with highest total value
                var maxDateVal = d3.max(data, function(d) {
                    var vals = d3.keys(d).map(function(key) {
                        return key !== xAxisfield ? d[key] : 0
                    });
                    return d3.sum(vals);
                });

                // Set domains for axes
                x.domain(d3.extent(data, function(d) {
                    return d[xAxisfield];
                }));
                y.domain([0, maxDateVal])

                var browser = svg.selectAll(".browser")
                    .data(browsers)
                    .enter().append("g")
                    .attr("class", "browser");

                browser.append("path")
                    .attr("class", "area")
                    .attr("d", function(d) {
                        return area(d.values);
                    })
                    .style("fill", function(d) {
                        return color(d.name);
                    });

                browser.append("text")
                    .datum(function(d) {
                        return {
                            name: d.name,
                            value: d.values[d.values.length - 1]
                        };
                    })
                    .attr("transform", function(d) {
                    	var convertedscale	=	convertInttoStringAndStringtoInt(d.value[xAxisfield]);
                        return "translate(" + x(convertedscale) + "," + y(d.value.y0 + d.value.y / 2) + ")";
                    })
                    .attr("x", -6)
                    .attr("dy", ".35em")
                    .text(function(d) {
                        return d.name;
                    });

                svg.append("g")
                    .attr("class", "x axis")
                    .attr("transform", "translate(0," + height + ")")
                    .attr('fill', xColor)
                    .call(xAxis);

                svg.append("g")
                    .attr("class", "y axis")
                    .attr('fill', yColor)
                    .call(yAxis);

}

function drawBubble(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var sizeshow 	=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		sizeshow.push(50);
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  			mode: "markers",
			x:xaxis,         
            y: yaxis,
			marker: {
    			size: sizeshow,
    			color: xColor
  			}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawBox(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		type: "box",
		boxpoints: 'all',         
        y: yaxis,
		jitter: "",
		pointpos: "",
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawSctter(divId,xColor, yColor ,xAxisfield, yAxisfield, chartField) {
   	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		x: xaxis,
  		y: yaxis,
  		mode: 'markers',
  		type: 'scatter',
  		text: yaxis,
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawLine(divId,xColor, yColor ,xAxisfield, yAxisfield, chartField) {
   	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
					
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		x: xaxis,
  		y: yaxis,
  		type: 'scatter',
  		text: yaxis,
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}
            
function drawRadar(divId,xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: '',
						yaxis:{
							tickformat:'',
							range:''	
						}
					};
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		x: xaxis,
  		y: yaxis,
  		mode: 'markers',
  		type: 'scatter',
  		text: yaxis,
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawWaterFall(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var showcolor	=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		showcolor.push(xColor);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								type:'linear',
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							type:'linear',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}

	var data = [
        {
            name: xAxisfield,
            type: "waterfall",
            orientation: "v",
            measure: [],
            x:xaxis,
            textposition: "outside",
            text: [],         
            y: yaxis,
            marker: {
    				colors: showcolor
  				}
        }
    ];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
		layout.showlegend	=	true;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
		layout.showlegend	=	true;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawBar(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
   	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		x: xaxis,
  		y: yaxis,
  		type: 'bar',
  		text: yaxis,
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
}

function drawPie(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	var showcolor	=	[];
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		showcolor.push(xColor);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
					title: '',
					xaxis:{
						color:xColor,
						type:'linear'	
					},
					yaxis:{
						tickformat:'',
						range:'',
						color:yColor,
						type:'linear'	
					}
				};
				
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}

	var data 	= 	[{
  				values: yaxis,
  				labels: xaxis,
  				type: 'pie',
  				marker: {
		    		colors: showcolor
		  		}
			}];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});
	//                $("#chartdiv_init" + divId+" svg").find("g.arc").attr('fill',xColor);
      //          $("#chartdiv_init" + divId+" svg").find("g.arc path").css('fill',yColor);
}

function drawStandard(divId, xColor, yColor ,xAxisfield, yAxisfield, chartField) {
	if(kpichartDataList.length	==	0){
		$('#chartdiv_init' + divId).empty();
		return false;
	}
            	
    var xaxis 	=	[];
	var yaxis 	=	[];
	var showtext=	[];
	var percentage	=	false;
	var checkdecimalornot	=	false;
	
	$.each(kpichartDataList,function(key,value){
		var xaxisvalue 	=	"";
		var yaxisvalue 	=	"";
		if(xAxisfield 	==	"period"){
			xaxisvalue 	=	value.period;
		}else if(xAxisfield 	==	"target"){
			xaxisvalue 	=	value.target;
		}else if(xAxisfield 	==	"gap"){
			xaxisvalue 	=	value.gap;
		}else if(xAxisfield 	==	"actual"){
			xaxisvalue 	=	value.actual;
		}else{
			xaxisvalue 	=	value.period;
		}
		
		if(yAxisfield 	==	"period"){
			yaxisvalue 	=	value.period;
		}else if(yAxisfield 	==	"target"){
			yaxisvalue 	=	value.target;
		}else if(yAxisfield 	==	"gap"){
			yaxisvalue 	=	value.gap;
		}else if(yAxisfield 	==	"actual"){
			yaxisvalue 	=	value.actual;
		}else{
			yaxisvalue 	=	value.period;
		}
		
		var numberformat 	=	(typeof yaxisvalue === "number"?convertInttoStringAndStringtoInt(yaxisvalue):yaxisvalue);	
		if (numberformat.indexOf("%") >= 0 && numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
			percentage			=	true;
		}else if (numberformat.indexOf("%") >= 0) {
			percentage			=	true;
		}else if (numberformat.indexOf(".") >= 0) {
			checkdecimalornot	=	true;
		}
		xaxis.push(xaxisvalue);
		yaxis.push(yaxisvalue);
		
		//showtext.push(value.target+' below the target');
	});
	
	var layout = 	{
    					title: 'Kpi Chart',
						xaxis:{
								color:xColor,
								title:{
										text:capitalizefisrt(xAxisfield),
										font: {
									        family: 'initial'
									    }
									}
							},
						yaxis:{
							tickformat:'',
							range:'',
							color:yColor,
							title:{
								text:capitalizefisrt(yAxisfield),
								font: {
							        family: 'initial'
							      }
								}	
						}
					};
	
	
	var max = yaxis.reduce(function(a, b) {
    	return Math.max(a, b);
	});
	
	if(checkdecimalornot	==	true && percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
		
	}else if(percentage	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}else if(checkdecimalornot	==	true){
		var roundvalue 			=	Math.round(max)+1;
		var rangevalue 			=	Math.round(roundvalue/100);
		rangevalue 				=	(rangevalue == 0?1:rangevalue);
		layout.yaxis.tickformat	=	',.0%';
		layout.yaxis.range		=	[0,rangevalue];
	}
	
	var trace1 = {
  		x: xaxis,
  		y: yaxis,
  		type: (checkdecimalornot == true || percentage == true ?'scatter':'bar'),
  		text: yaxis,
  		marker: {
    		color: (xColor == ""?'rgb(142,124,195)':xColor)
  		}
	};

	var data = [trace1];

	if(divId ==	0){
		layout.autosize	=	false;
		layout.width	=	1200;
		layout.height	=	550;
	}else{
		layout.autosize	=	true;
		layout.width	=	330;
		layout.height	=	265;
	}
	
	Plotly.newPlot('chartdiv_init'+divId, data, layout,{displayModeBar: false});

                /*var margin = {
                        top: 50,
                        right: 50,
                        bottom: 50,
                        left: 55,
                        front: 0,
                        back: 0
                    },
                    width = getWidth(divId)+50 - margin.left - margin.right,
                    height = getHeight(divId)+100 - margin.top - margin.bottom,
                    depth = 100 - margin.front - margin.back;

                var xScale = d3.scale.ordinal()
                    .rangeRoundBands([0, width], .2);

                var yScale = d3.scale.linear()
                    .range([height, 0]);

                var zScale = d3.scale.ordinal()
                    .domain([0, 1, 2])
                    .rangeRoundBands([0, depth], .4);

                var xAxis = d3.svg.axis()
                    .scale(xScale)
                    // .attr('fill', '#412563')
                    .orient('bottom');

                var yAxis = d3.svg.axis()
                    .scale(yScale)
                    .orient('left');
                    //.ticks(10, '%');

                var chart = d3.select('#chartdiv_init' + divId)
                    .append('svg')
                    .attr('width', width + margin.left + margin.right)
                    .attr('height', height + margin.top + margin.bottom)
                    .append('g')
                    .attr('transform', svgHelp.translate(margin.left, margin.right));
                var data	=	kpichartDataList;
                 //xAxisfield, yAxisfield, chartField
                xScale.domain(_.sortBy(_.uniq(_.map(data, xAxisfield))));
                
                var maximum = d3.max(data, function(d) { return d[yAxisfield]; });
                yScale.domain([0, maximum]);
                

                function x(d) {
                    return xScale(d[xAxisfield]);
                }

                function y(d) {
                    return yScale(d[yAxisfield]);
                }
				
                var camera = [width / 2, height / 2, -1000];
                var barGen = bar3d()
                    .camera(camera)
                    .x(x)
                    .y(y)
                    .z(zScale(0))
                    .width(xScale.rangeBand())
                    .height(function(d) {
                        return height - y(d);
                    })
                    .depth(xScale.rangeBand());

                chart.append('g')
                    .attr('class', 'x axis')
                    .attr('transform', svgHelp.translate(0, height))
                    .call(xAxis)

                chart.append('g')
                    .attr('class', 'y axis')
                    .call(yAxis)
                    .append('text')
                    .attr('transform', svgHelp.rotate(-90))
                    .attr('y', 6)
                    .attr('dy', '.71em')
                    .style('text-anchor', 'end')
                    .text(yAxisfield);
                
                var extent = xScale.rangeExtent();
                var middle = (extent[1] - extent[0]) / 2;
                chart.selectAll('g.bar').data(data)
                    .enter().append('g')
                    .attr('class', 'bar')
                    .attr('fill', yColor)
                    // sort based on distance from center, so we draw outermost
                    // bars first. otherwise, bars drawn later might overlap bars drawn first
                    .sort(function(a, b) {
                        return Math.abs(x(b) - middle) - Math.abs(x(a) - middle);
                    })
                    .call(barGen);
                $("#chartdiv_init"+divId+" svg").find("g.bar .face.front").attr("fill",yColor);
                $("#chartdiv_init"+divId+" svg").find("g.bar .face.right").attr("fill",xColor);*/

            }
            /*$('body').on('change', '.chart-selection', function() {
                var id = $(this).attr('id');
                var xColor = $(this).parents().eq(3).find('.xAxisColor').css('background');
                if(xColor !=	"" && xColor !=	undefined){
                	var colorstartposition	=	xColor.indexOf("rgb");
                	var colorendposition	=	xColor.indexOf(")")+1;
                	if(colorstartposition !=	-1 && colorendposition !=	-1){
                		xColor	=	xColor.substr(colorstartposition,colorendposition);
                	}
                	
                }
                var yColor = $(this).parents().eq(3).find('.yAxisColor').css('background');
                if(yColor !=	"" && yColor !=	undefined){
                	var colorstartposition	=	yColor.indexOf("rgb");
                	var colorendposition	=	yColor.indexOf(")")+1;
                	if(colorstartposition !=	-1 && colorendposition !=	-1){
                		yColor	=	yColor.substr(colorstartposition,colorendposition);
                	}
                }
                
                $(this).parents().eq(9).find('.selectVal').val($(this).val());
                drawChart(id, xColor, yColor);
            });*/
			
            function drawchartxyAxixfield(value){
            	var valueset	=	"";
            	if(typeof value	===	"string"){
            		valueset	=	axixnameChartField[value];
        		}else{
        			valueset	=	xaxisChartField[value];
        		}
            	return valueset;
            }
            
            function drawchartAxixfieldName(value){
            	var valueset	=	value;
            	if(typeof value	===	"number"){
            		valueset	=	xaxisChartField[value];
        		}
            	return valueset;
            }
            
            function chartParameterformation(element,elementID,event){
            	var charttype	=	"";
            	var xaxis		=	"";
            	var yaxis		=	"";
            	var kpiId		=	"";
            	var chartfield	=	"";
            	var xaxiscolor	=	"";
            	var yaxiscolor	=	"";
            	if(event.target.name	==	"chartstype"){//jQuery.isNumeric(element)	==	true &&
            		charttype	=	element;
            		xaxis		=	$("#chart-selection-x"+elementID).val();
            		yaxis		=	$("#chart-selection-y"+elementID).val();
            		kpiId		=	$("#attachment"+elementID).val();
            		xaxiscolor	=	colorcodevalue($("#xAxisColor"+elementID).css('background'));
            		yaxiscolor	=	colorcodevalue($("#yAxisColor"+elementID).css('background'));
            		var chartarray	=	$("#chartdatafield"+elementID).val();
            		if(Array.isArray(chartarray) == true){
            			chartfield	=	$("#chartdatafield"+elementID).val().join(",");	
            		}
            	}
            	else if(event.target.name	==	"chartsxaxis"){
            		var $currentid	=	event.target.id.match(/\d+/g);
            		elementID	=	$currentid[0];	
            		kpiId		=	$("#attachment"+elementID).val();
            		//$("option:selected", "#chart-selection-x"+elementID).removeAttr('selected');
            		$("#chart-selection-x"+elementID).find("option[value='"+element+"']").attr("selected","selected");
            		xaxis		=	element;
            		yaxis		=	$("#chart-selection-y"+elementID).val();
            		charttype	=	$(".chartcategory"+elementID).val();
            		xaxiscolor	=	colorcodevalue($("#xAxisColor"+elementID).css('background'));
            		yaxiscolor	=	colorcodevalue($("#yAxisColor"+elementID).css('background'));
            		var chartarray	=	$("#chartdatafield"+elementID).val();
            		if(Array.isArray(chartarray) == true){
            			chartfield	=	$("#chartdatafield"+elementID).val().join(",");	
            		}
            	}else if(event.target.name	==	"chartsyaxis"){
            		var $currentid	=	event.target.id.match(/\d+/g);
            		elementID	=	$currentid[0];
            		kpiId		=	$("#attachment"+elementID).val();
            		xaxis		=	$("#chart-selection-x"+elementID).val();
            		//$("option:selected", "#chart-selection-y"+elementID).removeAttr('selected');
            		$("#chart-selection-y"+elementID).find('option[value="'+element+'"]').attr("selected","selected");
            		yaxis		=	element;
            		charttype	=	$(".chartcategory"+elementID).val();
            		xaxiscolor	=	colorcodevalue($("#xAxisColor"+elementID).css('background'));
            		yaxiscolor	=	colorcodevalue($("#yAxisColor"+elementID).css('background'));
            		var chartarray	=	$("#chartdatafield"+elementID).val();
            		if(Array.isArray(chartarray) == true){
            			chartfield	=	$("#chartdatafield"+elementID).val().join(",");	
            		}
            	}else if(elementID !=	undefined && elementID !=	"" && elementID.search('chartdatafield') != -1){
            		var $currentid	=	elementID.match(/\d+/g);
            		elementID	=	$currentid[0];
            		kpiId		=	$("#attachment"+elementID).val();
            		xaxis		=	$("#chart-selection-x"+elementID).val();
            		yaxis		=	$("#chart-selection-y"+elementID).val();
            		charttype	=	$(".chartcategory"+elementID).val();
            		xaxiscolor	=	colorcodevalue($("#xAxisColor"+elementID).css('background'));
            		yaxiscolor	=	colorcodevalue($("#yAxisColor"+elementID).css('background'));
            		var chartarray	=	$("#chartdatafield"+elementID).val();
            		if(Array.isArray(chartarray) == true){
            			chartfield	=	$("#chartdatafield"+elementID).val().join(",");	
            		}
            	}
            	
            	var chartObjvalue	=	{"chartValue": {
            		    "kpiId": kpiId,
            		    "charttype": charttype,
            		    "xaxis": xaxis,
            		    "yaxis": yaxis,
            		    "elementID":elementID,
            		    "xaxiscolor":xaxiscolor,
            		    "yaxiscolor":yaxiscolor,
            		    "chartfield": chartfield}
            		  };
            	return chartObjvalue;
            }
            
            function colorcodevalue(colorvalue){
            	var color	=	"#000000";
            	if(colorvalue !=	"" && colorvalue !=	undefined){
   	             	var colorstartposition	=	colorvalue.indexOf("rgb");
   	             	var colorendposition	=	colorvalue.indexOf(")")+1;
   	             	if(colorstartposition !=	-1 && colorendposition !=	-1){
   	             		color	=	colorvalue.substr(colorstartposition,colorendposition);
   	             	}else{
   	             		color	=	colorvalue;
   	             	}
   	             }
            	return color;
            }
            
			$(document).on("change",".chartchange",function(event){
	           	var $elment	=	$(this).val();
	           	var $elmid  = 	$(this).attr('id');
	           	var charttype	=	"";
	           	var Xaxis		=	"";
	           	var Yaxis		=	"";
	           	var xColor		=	"";
	           	var yColor		=	"";
	           	var chartField	=	"";
	           	var validationflag	=	true;
	           	var chartObjvalue	=	chartParameterformation($elment,$elmid,event);
	           	if(event.target.name	==	"chartstype" &&	($elment ==	"" || $elment	==	undefined)){
	           		$.notify("Kindly select charttype");
	           		validationflag	=	false;
	           	}
	           	if(validationflag	==	false){
	           		return false;
	           	}
	           	if(chartObjvalue.chartValue.kpiId	==	"" || chartObjvalue.chartValue.kpiId	==	undefined){
	           		$.notify("Kindly select KPI");
	           		validationflag	=	false;
	           	}else if(chartObjvalue.chartValue.charttype	==	"" || chartObjvalue.chartValue.charttype	==	undefined){
	           		$.notify("Kindly select charttype");
	           		validationflag	=	false;
	           	}
	           	if(validationflag	==	false){
	           		return false;
	           	}
	           	var $identifierElement	=	$("#identifier"+chartObjvalue.chartValue.elementID);	
	           	var identifierval		=	$identifierElement.attr("data-chartidentifier");
	           	var methodType	=	"";
	           	var responsemsg	=	"";
	           	if(identifierval	==	"" || identifierval	==	undefined){
	           		methodType	=	"post";
	           		responsemsg	=	"Added Successfully";
	           	}else{
	           		methodType	=	"put";
	           		chartObjvalue.id	=	identifierval;
	           		responsemsg	=	"Updated Successfully";
	           	}
            	
            	chartObjvalue.owner	=	ownerid;
            	xColor	=	chartObjvalue.chartValue.xaxiscolor;
            	yColor	=	chartObjvalue.chartValue.yaxiscolor;
            	Xaxis	=	chartObjvalue.chartValue.xaxis;
            	Yaxis	=	chartObjvalue.chartValue.yaxis;
            	chartField	=	chartObjvalue.chartValue.chartfield;
            	var chartElementid	=	chartObjvalue['chartValue']['elementID'];
       			var $currentchartDiv	=	"#chartdiv_init"+chartElementid;
				$.ajax({
        			url : "/stratroom/kpiDetailList/" + chartObjvalue.chartValue.kpiId+"?period="+$("#datePeriod").val(),
        			contentType : "application/json",
        			async :false,
        			success : function(data, status) {
        				chartSuccessCallback(data,chartObjvalue.chartValue.kpiId,$currentchartDiv,chartElementid,event);
        			},
        			error:readErrorMsg
       			});
				
	             	drawChart(chartElementid, xColor, yColor,Xaxis,Yaxis,chartField);
	             	chartObjvalue.chartValue.chart	=	$("div#chartdiv_init"+chartElementid).html();
            		delete chartObjvalue['chartValue']['elementID']; 
            	$.ajax({
        			url : "/stratroom/charts",
        			type : methodType,
        			contentType : "application/json",
        			data : JSON.stringify(chartObjvalue),
        			success : function(data, status) {
        				if(data.id	!=	"" && data.id !=	undefined){
        					$identifierElement.attr("data-chartidentifier",data.id);	
        				}
        				$.notify(responsemsg);
        			},
        			error:readErrorMsg
        		});
            	
            });
            
            var counter = 1;

            $(document).on('click', '.dropdown-menu, .pcr-app, .select2-selection__choice__remove', function(e) {
                e.stopPropagation();
            });
            
            $(document).on('click', '.add-block', function(e) {
                //call the duplicate function here (increment the counter and pass it to the duplicate function)
                counter	=	$(this).attr("data-lastid");
                addNewBlock();
            });

            function addNewBlock() {
                counter++;

                var $parEl = $('.blockContainer');
                var $el = $('#template').clone();
                var $last = $('.blockContainer > div:last');
                //console.log($last);
				
                $el.removeAttr('id');
                $el.removeAttr('style');
                $el.find('.chart-selection').attr('id', counter);
                $el.find('.chartidentifier').attr('id', "identifier"+counter);
                $el.find('.form_dropdown_text').attr('id', "attachment"+counter);
                $el.find('.chartsettings').attr('id', "chartsettings"+counter);
                $el.find('select[name="chartstype"]').addClass('chartcategory'+counter);
                $el.find('select[name="chartsxaxis"]').attr('id', "chart-selection-x"+counter);
                $el.find('select[name="chartsyaxis"]').attr('id', "chart-selection-y"+counter);
                $el.find('.xAxisColor').attr('id', "xAxisColor"+counter);
                $el.find('.yAxisColor').attr('id', "yAxisColor"+counter);
                $el.find('.paramList').attr('id', "chartdatafield"+counter);
                $el.find('.chart-area').attr('id', 'chartdiv_init' + counter);
                $el.find('.selectVal').val();
                $el.find("#chartdatafield"+counter).select2();
                $el.insertBefore($last);
                populateKPIList('#attachment'+counter);
                //console.log($el);
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
            }

            $(document).ready(function() {
                chartloadtemplate();
                populateKPIList();
            });
  	          
            function chartloadtemplate(){
            	$.ajax({
            		url : "/stratroom/retrieveChartsList/"+ownerid,
            		contentType : "application/json",
            		success : function(data, status) {
            			charttemplateSuccessCallback(data,ownerid);
            		},
            		error:readErrorMsg
            	});
            }
            
            function addOptionwithselect(id, text, value) {
            	$(id).append(`<option value="${value}">${text}</option>`);
            }
            
            function charttemplateSuccessCallback(data, ownerid){
            	var bodyRows	=	"";
            	if(data.length !=	0){
            		var lastid	=	"";
            		var chartrowtemplate	=	$('#chartRowTemplate').html();
            		$.each(data,function(key,value){
            			
            			$.each(kpiList, function(index, kpiselect) {
            				if(kpiselect.id	==	value.chartValue.kpiId){
            					kpiList[index]['selected']	=	true;
            				}else{
            					delete kpiList[index]['selected'];
            				}
        				});
            			
            			lastid	=	parseInt(key+1);
            			
            				 var chartrowobj	=	Mustache.render(chartrowtemplate,{
            					autoid : value.id,
            					key:lastid,
            					kpiId : value.chartValue.kpiId,
            					kpiList:kpiList,
            					charttype : value.chartValue.charttype,
            					chartdesign : value.chartValue.chart,
            					xaxis : value.chartValue.xaxis,
            					yaxis : value.chartValue.yaxis,
            					xaxiscolor : value.chartValue.xaxiscolor,
            					yaxiscolor : value.chartValue.yaxiscolor,
            					chartfield : value.chartValue.chartfield
            				});
            			bodyRows = bodyRows +chartrowobj;
            		});
            		
            		var headerTemplate = $('#chartContentTemplate').html();
            		var headerDetails = Mustache.render(headerTemplate, {
            			lastid:lastid+1,
            			bodyRows:bodyRows
            		});
            		$('#charttemplate').html(headerDetails);
            		var autoid	=	"";
					$.each(data,function(key,value){
						autoid	=	parseInt(key+1);
						
          				var findChartDiv	=	$chartElement+autoid;
        				$.ajax({
                			url : "/stratroom/kpiDetailList/" + value.chartValue.kpiId+"?period="+$("#datePeriod").val(),
                			contentType : "application/json",
                			async :false,
                			success : function(data, status) {
                				chartSuccessCallback(data,value.chartValue.kpiId,findChartDiv,autoid,'');
                			},
                			error:readErrorMsg
               			});
          	            
        				drawChart(autoid, value.chartValue.xaxiscolor, value.chartValue.yaxiscolor,value.chartValue.xaxis,value.chartValue.yaxis,value.chartValue.chartfield,value.chartValue.charttype);
              	             	
                  			
                    	$('#'+autoid).val(value.chartValue.charttype).attr("selected", "selected");
                    	$('#chart-selection-x'+autoid).find("option[value='"+value.chartValue.xaxis+"']").attr("selected", "selected");
                    	$('#chart-selection-y'+autoid).find("option[value='"+value.chartValue.yaxis+"']").attr("selected", "selected");
                    	if(value.chartValue.chartfield !=	"" && value.chartValue.chartfield !=	undefined){
                    		$('#chartdatafield'+autoid).val(value.chartValue.chartfield.split(','));	
                    	}
                    	$('#chartdatafield'+autoid).select2();
                    	
            		});
            		
            		/*$('#charttemplate').html($('#chartDefaultTemplate').html());
            		populateKPIList('#attachment1');*/
            	}else{
            		$('#charttemplate').html($('#chartDefaultTemplate').html());
            		populateKPIList('#attachment1');
            	}
            	
            	$('.paramList').select2();
                $('.param-actual').hide();
                $('.param-budget').hide();
                $('.param-target').hide();
                $('.param-forecast').hide();
                $('.param-gap').hide();
                $('.param-period').hide();


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

            	/*var chartflagenable	=	false;
            	kpichartDataList	=	[];
            	$.each(data,function(key,value){
            		var kpiobj	=	{};
            		$.each(value,function(index,objval){
            			chartflagenable	=	true;
            			kpiobj	=	{
            				period : index,
            				actual : objval.actual,
            				target : objval.target,
            				gap : objval.gap
            			};
            			kpichartDataList.push(kpiobj);
            		});
            	});
            	
            	if(chartflagenable	==	false){
            		kpichartDataList	=	[];
            	}*/
            }
        
        function colorcodesave(element){
        	var $currentid	=	element.match(/\d+/g);
        	if($currentid[0] !=	"" && $currentid[0] !=	undefined){
	    		var elementID	=	$currentid[0];	
	    		var kpiId		=	$("#attachment"+elementID).val();
	    		var xaxis		=	$("#chart-selection-x"+elementID).val();
	    		var yaxis		=	$("#chart-selection-y"+elementID).val();
	    		var charttype	=	$(".chartcategory"+elementID).val();
	    		var xaxiscolor	=	colorcodevalue($("#xAxisColor"+elementID).css('background'));
	    		var yaxiscolor	=	colorcodevalue($("#yAxisColor"+elementID).css('background'));
	    		var chartarray	=	$("#chartdatafield"+elementID).val();
	    		if(Array.isArray(chartarray) == true){
	    			chartfield	=	$("#chartdatafield"+elementID).val().join(",");	
	    		}
	          	var chartObjvalue	=	{"chartValue": {
        		    "kpiId": kpiId,
        		    "charttype": charttype,
        		    "xaxis": xaxis,
        		    "yaxis": yaxis,
        		    "xaxiscolor":xaxiscolor,
        		    "yaxiscolor":yaxiscolor,
        		    "chartfield": chartfield}
        		  };
	          	
	           	var validationflag	=	true;
	           	if(chartObjvalue.chartValue.kpiId	==	"" || chartObjvalue.chartValue.kpiId	==	undefined){
	           		var errorresult	=	{"status":false,"msg":"Kindly select KPI"};
	           		return errorresult;
	           	}else if(chartObjvalue.chartValue.charttype	==	"" || chartObjvalue.chartValue.charttype	==	undefined){
	           		var errorresult	=	{"status":false,"msg":"Kindly select charttype"};
	           		return errorresult;
	           	}
	           	
	           	var $identifierElement	=	$("#identifier"+elementID);	
	           	var identifierval		=	$identifierElement.attr("data-chartidentifier");
	           	var methodType	=	"";
	           	var responsemsg	=	"";
	           	if(identifierval	==	"" || identifierval	==	undefined){
	           		methodType	=	"post";
	           		responsemsg	=	"Added Successfully";
	           	}else{
	           		methodType	=	"put";
	           		chartObjvalue.id	=	identifierval;
	           		responsemsg	=	"Updated Successfully";
	           	}
	        	
	        	chartObjvalue.owner	=	ownerid;
	        	var Xaxis	=	chartObjvalue.chartValue.xaxis;
	        	var Yaxis	=	chartObjvalue.chartValue.yaxis;
	        	var chartField	=	chartObjvalue.chartValue.chartfield;
	        	
	        	var chartElementid	=	elementID;
            	var $currentchartDiv	=	"#chartdiv_init"+chartElementid;
            	//Xaxis	=	drawchartAxixfieldName(Xaxis);
  				//Yaxis	=	drawchartAxixfieldName(Yaxis);
  				$.ajax({
        			url : "/stratroom/kpiDetailList/" + chartObjvalue.chartValue.kpiId+"?period="+$("#datePeriod").val(),
        			contentType : "application/json",
        			async :false,
        			success : function(data, status) {
        				chartSuccessCallback(data,chartObjvalue.chartValue.kpiId,$currentchartDiv,chartElementid,event);
        			},
        			error:readErrorMsg
       			});
  				
	            drawChart(elementID, xaxiscolor, yaxiscolor,Xaxis,Yaxis,chartField);
	            chartObjvalue.chartValue.chart	=	$("div#chartdiv_init"+elementID).html();
	             
	        	$.ajax({
	    			url : "/stratroom/charts",
	    			type : methodType,
	    			contentType : "application/json",
	    			data : JSON.stringify(chartObjvalue),
	    			success : function(data, status) {
	    				if(data.id	!=	"" && data.id !=	undefined){
	    					$identifierElement.attr("data-chartidentifier",data.id);	
	    				}
	    				$.notify(responsemsg);
	    			},
	    			error:readErrorMsg
	    		});
        	}
        }    
            
		$(document).on("change",".form_dropdown_text",function(e){
			var $elment	=	$(this).attr("id");
			var $elmentvalue	=	$(this).val();
			var $currentid	=	$elment.match(/\d+/g);
			$(".chartcategory"+$currentid[0]).val('');
			var $currentchartDiv	=	"#chartdiv_init"+$currentid[0];
			var $chartsettingselement	=	$("#chartsettings"+$currentid[0]);
			if($elmentvalue !=	undefined && $elmentvalue !=	"" && $elmentvalue != " "){
				$chartsettingselement.addClass("dropdown-toggle");
				$chartsettingselement.attr("data-toggle","dropdown");
				$.ajax({
        			url : "/stratroom/kpiDetailList/" + $elmentvalue+"?period="+$("#datePeriod").val(),
        			contentType : "application/json",
        			success : function(data, status) {
        				chartSuccessCallback(data,$elmentvalue,$currentchartDiv,$currentid[0],e);
        			},
        			error:readErrorMsg
       			});	
			}else{
				$($currentchartDiv).empty();
				$chartsettingselement.removeClass("dropdown-toggle").css("border","none");
				$chartsettingselement.attr("data-toggle","");

				$chartsettingselement.children('.dropdown-menu').toggle();
				$chartsettingselement.next().find(".dropdown-menu").removeClass("show");
			}
		});

        function readErrorMsg(msg,status){
        	if(!jQuery.isEmptyObject(msg.responseText)){
        		$.each(JSON.parse(msg.responseText),function(key,value){
        			if(key 	==	"exception"){
        				$.notify("Error:"+value, "error");
        			}
        			if(key 	==	"error"){
        				$.notify("Error:"+value, "error");
        			}
        		});
        		
        	}
        }

        function chartSuccessCallback(data, kpiId,currentchartDiv,ElementID,event){
        	$(currentchartDiv).empty();
        	var chartflagenable	=	false;
        	kpichartDataList	=	[];
        	var xyaxistypeAttribute	=	axixnameChartField;
        	$.each(data,function(key,value){
        		var kpiobj	=	{};
        		$.each(value,function(index,objval){
        			chartflagenable	=	true;
        			kpiobj	=	{
        				period : index,
        				actual : trimvalueremovesoecialchars(objval.actual),
        				target : trimvalueremovesoecialchars(objval.target),
        				badget : trimvalueremovesoecialchars(objval.gap),
        				forecast : trimvalueremovesoecialchars(objval.gap),
        				gap : trimvalueremovesoecialchars(objval.gap)
        			};
        			if(index ==		"" || index ==	undefined){
        				var index = xyaxistypeAttribute.indexOf("period");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['period'];		
					}
        			if(objval.actual !=		0 && (objval.actual ==		"" || objval.actual ==	undefined)){
        				var index = xyaxistypeAttribute.indexOf("actual");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['actual'];		
					}
        			if(objval.target !=		0 && (objval.target ==		"" || objval.target ==	undefined)){
        				var index = xyaxistypeAttribute.indexOf("target");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['target'];		
					}
        			if(objval.gap !=		0 && (objval.gap ==		"" || objval.gap ==	undefined)){
        				var index = xyaxistypeAttribute.indexOf("gap");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['gap'];		
					}
        			if(objval.forecast !=		0 && (objval.forecast ==		"" || objval.forecast ==	undefined)){
        				var index = xyaxistypeAttribute.indexOf("forecast");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['forecast'];		
					}
        			if(objval.badget !=		0 && (objval.badget ==		"" || objval.badget ==	undefined)){
        				var index = xyaxistypeAttribute.indexOf("budget");
    					if (index > -1) {
    						xyaxistypeAttribute.splice(index, 1);
    					}
						delete kpiobj['budget'];		
					}
        			kpichartDataList.push(kpiobj);
        		});
        	});
        	
        	if(event 	==	""){// it will call initial load screen
        		xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-x"+ElementID),"append");
				xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-y"+ElementID),"append");
				xyaxisOptionAttribute(xyaxistypeAttribute,$("#chartdatafield"+ElementID),"append");
        	}
			
        	if(chartflagenable	==	true && event !=	""){
        		if(event.target.name	!=	"chartsxaxis" && event.target.name	!=	"chartsyaxis" && event.target.name	!=	undefined){
            		xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-x"+ElementID),"append");
        			xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-y"+ElementID),"append");	
        			xyaxisOptionAttribute(xyaxistypeAttribute,$("#chartdatafield"+ElementID),"append");
        		}
        	}
        	/*if(chartflagenable	==	false && event !=	""){
        		kpichartDataList	=	[];
        		if(event.target.name	!=	"chartsxaxis" && event.target.name	!=	"chartsyaxis"){
            		xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-x"+ElementID),"remove");
        			xyaxisOptionAttribute(xyaxistypeAttribute,$("#chart-selection-y"+ElementID),"remove");
        			//xyaxisOptionAttribute(xyaxistypeAttribute,$("#chartdatafield"+ElementID),"remove");
        		}
        	}*/
        }
        
        function xyaxisOptionAttribute(xyaxistypeAttribute,Element,type){
        	if(type	==	"remove"){
        		$(Element).removeAttr("selected");
        		$(Element).find("option").remove().end();
        	}else{
        		$(Element).empty();
        		//$(Element).find("option").remove().end();
        		$.each(xyaxistypeAttribute, function(index, kpiObj) {
        			$(Element).append($('<option>').val(kpiObj).text(kpiObj));
        		});	
        	}
        }
        
        function trimvalueremovesoecialchars(stringvalue){
        	if(typeof stringvalue	===	"number"){
				stringvalue	=	stringvalue.toString();
				stringvalue	=	stringvalue.trim();
        		stringvalue = 	stringvalue.replace(/[%,$]/g, "");
        		stringvalue	=	stringvalue.trim();
			}else{
        		stringvalue	=	stringvalue.trim();
        		stringvalue = 	stringvalue.replace(/[%,$]/g, "");
        		stringvalue	=	stringvalue.trim();
			}
        	return stringvalue;
        }
        
            function populateKPIList(elementId) {
            	var numberOfOptions = $(elementId + ' > option').length;
            	if (jQuery.isEmptyObject(kpiList)) {
            		$.ajax({
            			url : "/stratroom/kpiList",
            			async:false,
            			success : function(kpiListValue) {
            				kpiList = kpiListValue;
            				$.each(kpiList, function(index, kpiObj) {
            				addOption(elementId, kpiObj.kpiValue.name, kpiObj.id)
            				});
            			}
            		});
            	} else if (numberOfOptions < 2) {
            		$.each(kpiList, function(index, kpiObj) {
            			addOption(elementId, kpiObj.kpiValue.name, kpiObj.id)
            		});
            	}
            }
            
            function addOption(id, text, value) {
            	$(id).append($('<option>').val(value).text(text));
            }
            
            function getKpiResult(kpiId){
            	$.ajax({
        			url : "/stratroom/kpiDetailList/" + kpiId+"?period="+$("#datePeriod").val(),
        			contentType : "application/json",
        			async :false,
        			success : function(data, status) {
        				chartFullViewSuccessCallback(data);
        			},
        			error:readErrorMsg
       			});
            }
            
            function chartFullViewSuccessCallback(data){
            	kpichartDataList	=	[];
            	$.each(data,function(key,value){
            		var kpiobj	=	{};
            		$.each(value,function(index,objval){
            			kpiobj	=	{
            				period : index,
            				actual : trimvalueremovesoecialchars(objval.actual),
            				target : trimvalueremovesoecialchars(objval.target),
            				badget : trimvalueremovesoecialchars(objval.gap),
            				forecast : trimvalueremovesoecialchars(objval.gap),
            				gap : trimvalueremovesoecialchars(objval.gap)
            			};
            			kpichartDataList.push(kpiobj);
            		});
            	});
            }
            
            function getchartResult(id){
	            $.ajax({
	    			url : "/stratroom/charts/"+id,
	    			type : 'get',
	    			async :false,
	    			contentType : "application/json",
	    			success : function(data, status) {
	    				viewchartObj 	=	data;
	    			},
	    			error:readErrorMsg
	    		});
            }
            
            $(document.body).on("change", ".paramList", function() {
                $(this).parents().eq(9).find('.param-forecast, .param-target, .param-budget, .param-actual, .param-gap').hide();
                if (jQuery.inArray('1', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-actual').show();
                if (jQuery.inArray('3', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-budget').show();
                if (jQuery.inArray('2', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-target').show();
                if (jQuery.inArray('4', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-forecast').show();
                if (jQuery.inArray('5', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-gap').show();
                if (jQuery.inArray('6', $(this).val()) != -1)
                    $(this).parents().eq(9).find('.param-period').show();

                var $elment	=	$(this).val();
	           	var $elmid  = 	$(this).attr('id');
	           	var charttype	=	"";
	           	var Xaxis		=	"";
	           	var Yaxis		=	"";
	           	var xColor		=	"";
	           	var yColor		=	"";
	           	var chartField	=	"";
	           	var validationflag	=	true;
	           	var chartObjvalue	=	chartParameterformation($elment,$elmid,event);
	           	if(event.target.name	==	"chartstype" &&	($elment ==	"" || $elment	==	undefined)){
	           		$.notify("Kindly select charttype");
	           		validationflag	=	false;
	           	}
	           	if(validationflag	==	false){
	           		return false;
	           	}
	           	if(chartObjvalue.chartValue.kpiId	==	"" || chartObjvalue.chartValue.kpiId	==	undefined){
	           		$.notify("Kindly select KPI");
	           		validationflag	=	false;
	           	}else if(chartObjvalue.chartValue.charttype	==	"" || chartObjvalue.chartValue.charttype	==	undefined){
	           		$.notify("Kindly select charttype");
	           		validationflag	=	false;
	           	}
	           	if(validationflag	==	false){
	           		return false;
	           	}
	           	var $identifierElement	=	$("#identifier"+chartObjvalue.chartValue.elementID);	
	           	var identifierval		=	$identifierElement.attr("data-chartidentifier");
	           	var methodType	=	"";
	           	var responsemsg	=	"";
	           	if(identifierval	==	"" || identifierval	==	undefined){
	           		methodType	=	"post";
	           		responsemsg	=	"Added Successfully";
	           	}else{
	           		methodType	=	"put";
	           		chartObjvalue.id	=	identifierval;
	           		responsemsg	=	"Updated Successfully";
	           	}
            	
            	chartObjvalue.owner	=	ownerid;
            	Xaxis	=	chartObjvalue.chartValue.xaxis;
            	Yaxis	=	chartObjvalue.chartValue.yaxis;
            	chartField	=	chartObjvalue.chartValue.chartfield;
            	var chartElementid	=	chartObjvalue['chartValue']['elementID'];
            	var $currentchartDiv	=	"#chartdiv_init"+chartElementid;
            	//Xaxis	=	drawchartAxixfieldName(Xaxis);
  				//Yaxis	=	drawchartAxixfieldName(Yaxis);
  				$.ajax({
        			url : "/stratroom/kpiDetailList/" + chartObjvalue.chartValue.kpiId+"?period="+$("#datePeriod").val(),
        			contentType : "application/json",
        			async :false,
        			success : function(data, status) {
        				chartSuccessCallback(data,chartObjvalue.chartValue.kpiId,$currentchartDiv,chartElementid,event);
        			},
        			error:readErrorMsg
       			});
  				
	            drawChart(chartElementid, xColor, yColor,Xaxis,Yaxis,chartField);
	            chartObjvalue.chartValue.chart	=	$("div#chartdiv_init"+chartElementid).html();
            	delete chartObjvalue['chartValue']['elementID'];

            	$.ajax({
        			url : "/stratroom/charts",
        			type : methodType,
        			contentType : "application/json",
        			data : JSON.stringify(chartObjvalue),
        			success : function(data, status) {
        				if(data.id	!=	"" && data.id !=	undefined){
        					$identifierElement.attr("data-chartidentifier",data.id);	
        				}
        				$.notify(responsemsg);
        			},
        			error:readErrorMsg
        		});
            });


            // $('#viewModal').on('show.bs.modal', function(event) {
            //     var button = $(event.relatedTarget);
            //     var curEl = $(button).parents().eq(4).clone();
            //     var selId = $(curEl).find('.chart-selection').val();

            //     $(curEl).find('.divResize').removeAttr('id');
            //     $(curEl).find('.form_kpi').prop('disabled', true);
            //     $(curEl).find('.fa-info-circle').hide();
            //     $(curEl).find('.fa-cog').hide();
            //     $(this).find('.modal-body').html(curEl);

            // });

            $('.all_chart_popup').on('show.bs.modal', function(event) {
          		var chartIdentifierElement	=	$(event.relatedTarget).children().attr("id");
          		if(chartIdentifierElement !=	undefined){
          			var elementID 	=	chartIdentifierElement.match(/\d+/g);
          			if(elementID[0] !=	undefined){
          				elementID 	=	elementID[0];
          				var charttype 	=	$("#"+elementID).val();
          				var kpiId 		=	$("#attachment"+elementID).val();
		                var kpiBox = $(event.relatedTarget).parent().find('.chart_kpi_boxs').clone();
		                //var chartBox = $(event.relatedTarget).parent().find('.divResize').clone();
		                var topBox = $(event.relatedTarget).parent().find('.chart_top_menu_left').clone();
		                var spanText = $(event.relatedTarget).parent().find('.form_dropdown_text option:selected').text();
		                var selectVal = $(event.relatedTarget).parent().find('.selectVal').val();
		                $(topBox).find('.chart_top_menu_right').empty();
		                // console.log($(event.relatedTarget).parent().find('.selectVal'));
		                $(this).find('.top-box').html(topBox);
		                $(this).find('.span-text').html(spanText);
		                $(this).find('.kpi-box').html(kpiBox);
		                $('#chartdiv_init0').empty();
		                getKpiResult(selectVal);
		                var $identifierElement	=	$("#identifier"+elementID);
		                getchartResult($identifierElement.attr("data-chartidentifier"));
		    	    	if(viewchartObj !=	undefined && viewchartObj.id !=	undefined && viewchartObj.chartValue.kpiId !=	undefined){
		                	drawChart(0, viewchartObj.chartValue.xaxiscolor, viewchartObj.chartValue.yaxiscolor,viewchartObj.chartValue.xaxis,viewchartObj.chartValue.yaxis,viewchartObj.chartValue.chartfield, charttype,'chartpopupview');
		                }
          			}
          		}
            });
			
			/*$(document).on("click",".chart_kpi_chart_box",function(){
				var chartdesign	=	$(this).find('svg').html();
				$('.all_chart_popup').modal('show');
				$('#chartdiv_init999').empty();
				$('#chartdiv_init999').html(chartdesign);
			});*/
			
            $('body').on('click', '.removeBlock', function() {
                $(this).parents().eq(7).remove();
                counter--;
            });
                        
        </script>
	</body>