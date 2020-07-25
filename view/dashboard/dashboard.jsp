<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<head>
	<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet" href="${contextroot}/css/datepickerair.css">
<style>
.top_datepicker {
	border-bottom: 1px solid #ece9ef !important;
	color: #7f7886 !important;
}

.top_datepicker {
	background-color: transparent;
	border: 0;
	border-bottom: 1px solid #9e9e9e;
	border-radius: 0;
	outline: 0;
	height: 3rem;
	width: 100%;
	font-size: 16px;
	margin: 0 0 8px 0;
	padding: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	-webkit-transition: border .3s, -webkit-box-shadow .3s;
	transition: border .3s, -webkit-box-shadow .3s;
	transition: box-shadow .3s, border .3s;
	transition: box-shadow .3s, border .3s, -webkit-box-shadow .3s;
}

.top_datepicker {
	font-size: 12px !important;
	padding: 0 !important;
	text-align: center;
	margin-left: 5px !important;
}

.orientation-right {
	top: 70px !important;
	right: 0 !important;
	left: auto !important;
	position: fixed;
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
</style>
</head>
<body class="light">
	<jsp:include page="../common/top-navigation.jsp"></jsp:include>
	<div>
		<jsp:include page="../common/left-navigation.jsp"></jsp:include>
		<jsp:include page="../common/right-navigation.jsp"></jsp:include>
	</div>
	<div id=loadpage>
	<div class="droppable" style="width: 1000px;height:1000px;"></div>
	</div>
	<input type="hidden" id="ischeckinitiativeurlornot" value="INITIATIVE">	
  	<c:if test="${dashboardId != null}">
		<input id="pagenumber" type="hidden" name="pagenumber" value ="<c:out value="${dashboardId}" />">
	</c:if>
	  	<c:if test="${pageEmpId != null}">
		<input id="pageEmpId" type="hidden" name="pageEmpId" value ="<c:out value="${pageEmpId}" />">
	</c:if>
	<!-- #END# Page level body content -->

	
</body>

<jsp:include page="../common/footer.jsp"></jsp:include>

<script type="text/javascript">

	$(document).ready(function() {
		/* 
			todo: Get the list of widgets 
		*/
	    setTimeout(function() { $('.page-loader-wrapper').fadeOut(); }, 50);

		$('.droppable').droppable({
		    accept: '.draggable',
		    drop: on_element_drop
		});
		
		var pagename="";
		var page="";
		$.ajax({
			url : "/stratroom/pages/" + $('#pagenumber').val(),
			success : loadpages 
		});

		function loadpages(data, status) {
			//var templatesArr = ['Standard_View'];//, 'Initiative_View'];
			//templatesArr.forEach(function (template, idx){ 
				if (data.pageType == 'Standard_View') {
					$('#loadpage').load('/stratroom/standardViewtemplate');
				} else if (data.pageType == 'Initiative_View') {
					$('#loadpage').load('/stratroom/initiativestemplate');
				} else if (data.pageType == 'Swot') {
					$('#loadpage').load('/stratroom/dashboardSwotanalysis');
				} else if (data.pageType == 'Pestel') {
					$('#loadpage').load('/stratroom/dashboardPestelanalysis');
				} else if (data.pageType == 'Meeting') {
					$('#loadpage').load('/stratroom/dashboardMeeting');
				} else if (data.pageType == 'Employee') {
					$('#loadpage').load('/stratroom/employeeView');
				} else if (data.pageType == 'Risk') {
					$('#loadpage').load('/stratroom/dashboardRisks?pageId='+$('#pagenumber').val());
				} 																										
			//});
			pagename = data.pageName
			page= data.pageType ;
		}
		
		function on_element_drop(event, ui){
		  var template = ui.draggable.find("a").first().text();
		  console.log(template);
		//  $('.droppable').load("${pageContext.request.contextPath}/"+template)
		var pagetype = 'Standard_View';
		if(template == 'Standard BSC View')
			{
			$('#loadpage').load('/stratroom/standardViewtemplate');
			pagetype = 'Standard_View';
			}
		else if (template.trim() == 'Initiative Management')
			{
			console.log("Initiative Matched");
			$('#loadpage').load('/stratroom/initiativestemplate');
			pagetype = 'Initiative_View';
			}
		
		
		
		var pageobj = {
				"active":0,
				"id": $('#pagenumber').val(),
				"createdBy": $("#userPrincipal").val(),
				"pageName" : pagename,
				"pageType": pagetype
			}
		

		$.ajax({
			url : "/stratroom/pages",
			type : 'put',
			contentType : "application/json",
			data : JSON.stringify(pageobj),
			success : function(data, status) {
				console.log("page updated..");
			}
		});
		}

		$(".draggable").draggable({
		    revert: "invalid",
		    stack: ".draggable",
		    helper: 'clone',
		    refreshPositions: true
		});
		
	});	
	</script>
<script src="${contextroot}/js/select2.min.js"></script>