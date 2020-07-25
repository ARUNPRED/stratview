<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />


<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
	<!-- Menu -->
	<div class="menu">
		<ul class="list">
			<li class="active"><a
				href="<c:out value='${contextroot}'/>/organizationHome" class="">
					<i class="fas fa-project-diagram"></i><span style="line-height: 18px;
                margin-top: 4px;">Organisation</span>
			</a></li>

			<li><a href="#" onClick="return false;" class="menu-toggle">
					<i class="fas fa-th-large"></i> <span>Dashboards</span>
			</a>
				<ul class="ml-menu" id="custompage">
					<li><a class="addnewpagehover waves-effect waves-block" data-toggle="modal"
						data-target=".page_description_popup" value="add" 
						style="
                      background-color: #4c4c4c;
                      padding-left: 0;
                      text-align: center;
                      color: #fff !important;"
                    ><strong>Add New Board</strong></a>
					</li>
				</ul></li>
				            <li class="">
              <a href="#" onClick="return false;" class="menu-toggle">
                <i class="fas fa-chalkboard"></i>
                <span>Whiteboard</span>
              </a>
              <ul class="ml-menu">
                <li>
                  <a
                    class="addnewpagehover waves-effect waves-block"
                    data-toggle="modal"
                    data-target="#whiteboard_add_popup"
                    value="add"
                    style="
                      background-color: #4c4c4c;
                      padding-left: 0;
                      text-align: center;
                      color: #fff !important;
                    "
                    ><strong>Add New Board</strong></a
                  >
                </li>
                <li>
                  <a href="#">Cockpit</a>
                </li>
              </ul>
            </li>
			<!-- li class=""><a href="<c:out value='${contextroot}'/>/charts"
				class=""> <i class="menu-icon ti-bar-chart"></i> <span>Charts</span>
			</a></li-->

			<li class=""><a href="#" onClick="return false;" class=""> <i
					class="fas fa-user-lock"></i> <span>Access Control</span>
			</a></li>

			<li class=""><a href="#" onClick="return false;" class=""> <i
					class="fas fa-briefcase"></i> <span>Workflows</span>
			</a></li>

			<li class=""><a href="#" onClick="return false;" class=""> <i
					class="fas fa-bell"></i> <span>Notifications</span>
			</a></li>
			            <li class="">
              <a href="#" class="menu-toggle">
                <i class="fas fa-database"></i>
                <span>Data Sources</span>
              </a>
              <ul class="ml-menu">
                <li>
                  <a href="#">Manual</a>
                </li>
                <li>
                  <a href="#">Excel</a>
                </li>
                <li>
                  <a href="${userPrincipal.dataManagementUrl}">Others</a>
                </li>
              </ul>
            </li>
			<!-- li class=""><a href="${userPrincipal.dataManagementUrl}"
				target="_blank"> <i class="menu-icon ti-server"></i> <span>Data
						Management</span>
			</a></li-->
   <li>
              <a href="#" onClick="return false;" class="menu-toggle">
                <i class="fas fa-copy"></i>
                <span>Template</span>
              </a>
              <ul class="ml-menu">
                <li class="draggable">
                  <a href="#">Standard Scorecard</a>
                </li>
                <li>
                  <a href="#">Custom Scorecard</a>
                </li>
                <li>
                  <a href="#">Portfolio Program & Project (P3M)</a>
                </li>
                <li>
                  <a href="#">Appraisal (360 Degree Feedback)</a>
                </li>
                <li>
                  <a href="#">Custom Page</a>
                </li>
              </ul>
            </li>

            <li class="">
              <a href="#" onClick="return false;" class="">
                <i class="fas fa-sliders-h"></i>
                <span>Control Panel</span>
              </a>
              <c:if test="${userPrincipal != null}">
					<input id="userPrincipal" type="hidden" name="userPrincipal"
						value="<c:out value="${userPrincipal.profile.empId}" />">
				</c:if>
            </li>
			<!-- li><a href="#" onClick="return false;" class="menu-toggle">
					<i class="menu-icon ti-layout-media-right-alt"></i> <span>Template
						Management</span>
			</a>
				<ul class="ml-menu">

					<li><a href="#" id="sub-menu" onClick="return false;"
						class="menu-toggle"> Scorecard Layouts </a>
						<ul class="ml-menu">
							<li class="draggable"><a href="#">Standard BSC View</a></li>
							<li><a href="#">Dashboard View</a></li>
						</ul></li>

					<li><a href="#" id="sub-menu" onClick="return false;"
						class="menu-toggle"> Initiative</a>
						<ul class="ml-menu">
							<li><a href="#">Sub Initiatives</a></li>
							<li><a href="#">Tasks</a></li>
							<li><a href="#">Activities</a></li>
							<li><a href="#">Milestones</a></li>
						</ul></li>
					<li><a href="#">Reports Table</a></li>
					<li><a href="#" id="sub-menu" onClick="return false;"
						class="menu-toggle"> Comments </a>
						<ul class="ml-menu">
							<li><a href="#">Comments & Observations</a></li>
							<li><a href="#">Proof of Evidence</a></li>
						</ul></li>
					<li><a href="#">Employee Layout</a></li>
					<li><a href="#">Appraisal</a></li>
					<li><a href="#" data-toggle="modal"
						data-target=".data_collection_form">Data Collection Form</a></li>


					<%-- <li><a href="<c:out value='${contextroot}'/>/meeting">Meeting</a></li>
					<li><a href="<c:out value='${contextroot}'/>/swotanalysis">SWOT
							Analysis</a></li>
					<li><a href="<c:out value='${contextroot}'/>/pestelanalysis">Pestel
							Analysis</a></li>
					<li><a
						href="<c:out value='${contextroot}'/>/strategyformulation">Strategy
							Formulation</a></li> 
					<li class="draggable"><a href="#">BSC - Standard View</a></li>
					<li class="draggable"><a href="#">Initiative Management </a></li>
					<li><a
						href="<c:out value='${contextroot}'/>/dashboardPreference">Dashboard
							Preference</a></li>
					<li><a href="<c:out value='${contextroot}'/>/risks">Risk
							Management</a></li>
					<li><a href="<c:out value='${contextroot}'/>/employeeView">Employee
							Performance</a></li> --%>
				</ul>
			<li class=""><a href="#" onClick="return false;" class=""> <i
					class="menu-icon ti-home"></i> <span>Widget Management</span>
			</a></li>

			<li class=""><a href="#" onClick="return false;" class=""> <i
					class="menu-icon ti-pie-chart"></i> <span>Reports</span>
			</a> </li-->

		</ul>
	</div>
	<!-- #Menu -->
</aside>

<div class="modal fade page_description_popup" tabindex="-1"
	role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h6 class="modal-title" id="myLargeModalLabel" style="color: white;">Page
					Name</h6>
				<button type="button" class="close" id="pagePopUpId"
					data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="pageForm">
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="page_name">Name</label> <input type="text"
								class="form-control browser-default" name="pagename"
								id="pagename" placeholder="">
						</div>

						<div class="form-group col-md-12">
							<select id="category" name="category"
								class="form-control browser-default" required>
								<option value="">Choose</option>
								<option value="ScoreCard">ScoreCard</option>
								<option value="Initiative_View">Initiative</option>
								<option value="Swot">Swot Analysis</option>
								<option value="Pestel">Pestel Analysis</option>
								<option value="Meeting">Meeting Management</option>
								<option value="Employee">Employee Performance</option>
								<option value="Risk">Risk Management</option>
							</select> <span id="categoryerrorshow" style="color: red; display: none"></span>
						</div>
					</div>

				</form>
				<div class="form-line right">
					<button type="button" class="btn-default1 btn" data-dismiss="modal"
						aria-label="Close">Cancel</button>
					<button type="submit" class="initative_save_btn"
						onClick="addpage()" value="Save">Save</button>
				</div>

			</div>
		</div>
	</div>
</div>
<!-- #END# Left Sidebar -->
<script>
	$(document).ready(function() {
						var empId = $("#userPrincipal").val();

						$.ajax({
									url : "/stratroom/pageList/" + empId,
									success : function(pagelist, status) {
										console.log(pagelist);
										$.each(pagelist,function(index, page) {																																		
												pagefunction = "pagecustom("+ page.id + ")";
												var pageUrl = "/stratroom/dashboard/"+ empId+"?pageId="+page.id
												//$('#custompage').append('<li><a href="#" onclick='+pagefunction+'>'+page.pageName+'</a></li>')
												$('#custompage').append('<a href="'+pageUrl+'">'+ page.pageName+ '</a>')
										})
									}
								});

					});


	function addpage() {	
		
		var pagename = $('#pageForm #pagename').val()
		if(pagename	==	undefined || pagename == "" || pagename	==	0){
			return false;
		}	
	
		var pagetype = $('#pageForm #category').val()
		if(pagetype	== null || pagetype == "" || pagetype == undefined){
			return false;
		}	
		
		var pageobj = {
			"active" : 0,
			"createdBy" : $("#userPrincipal").val(),
			"pageName" : pagename,
			"pageType" : pagetype
		}

		$.ajax({
				url : "/stratroom/pages",
				type : 'post',
				contentType : "application/json",
				data : JSON.stringify(pageobj),
				success : function(data, status) {
					console.log("New page  created..");
						$.ajax({
							url : "/stratroom/pages/" + data.pageDTO.id,
							success : function(page, status) {
								/* var pageUrl ='';								
									pageUrl = "<c:out value='${contextroot}'/>/dashboard/"+ page.pageName+ "/"+ $("#userPrincipal").val();
								 */
								 
								var pageUrl = "<c:out value='${contextroot}'/>/dashboard/"+$("#userPrincipal").val()+"?pageId="+ page.id;
									console.log(pageUrl)
									//$('#custompage').append('<li><a href="#" onclick='+pagefunction+'>'+page.pageName+'</a></li>')
									$('#custompage').append('<a href="'+pageUrl+'">'+ page.pageName+ '</a>')
									$('.page_description_popup').css('display', 'none');
									$("#pagePopUpId").click();
								}
							});
					     }
				});

	};
	
	
	
	function pagecustom(pageno) {
		$("body").load("/stratroom/custompage/" + pageno);
	}
</script>
<script src="${contextroot}/js/mustache.min.js"></script>
<script type="text/javascript" src="${contextroot}/js/stratroom.js"></script>
