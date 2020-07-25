<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />

<!-- Page Loader -->
<div class="page-loader-wrapper">
	<div class="loader">
		<div class="m-t-30">
			<img width="100"
				src="<c:out value="${contextroot}"/>/images/logo_1.gif" alt="admin">
		</div>
		<p>Please wait...</p>
	</div>
</div>

<!-- #END# Page Loader -->
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- #END# Overlay For Sidebars -->

<!-- Top Bar -->
<nav class="navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" onClick="return false;" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse"
				aria-expanded="false"></a> <a href="#" onClick="return false;"
				class="bars"></a> <a href="#" onClick="return false;"
				class="bar_nav sidemenu-collapse"><i class="nav-hdr-btn ti-menu"
				style="color: #000"></i></a> <a class="navbar-brand nav_float" href="#">
				<img
				src="<c:out value="${contextroot}"/>/images/Startroom_Final logo-01_1.png"
				alt=""> <!-- span class="logo-name">StratRoom</span-->
			</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="fullscreen profile_content" style="padding: 4px; left: -14px;">
					<ul class="list-unstyled order-list">
						<c:if test="${userPrincipal.profile.parentEmployeeList != null}">
							<c:forEach items="${userPrincipal.profile.parentEmployeeList}"
								var="parentEmployee">
								<li class="avatar avatar-sm"><img class="rounded-circle"
									src="<c:out value="${parentEmployee.profileImage}"/>"
									alt="user"></li>
							</c:forEach>
						</c:if>
						<c:if test="${userPrincipal.profile.reporteeList != null}">
							<c:set value="${userPrincipal.profile.reporteeList.size()}"
								var="reporteeCount" scope="session" />
							<li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span
								_ngcontent-hhc-c5="" class="badge" style="height:28px;line-height:28px;width:28px;">+${reporteeCount}</span></li>
						</c:if>
					</ul>
				</li>
				<li class="fullscreen">
					<form class="form-header" onsubmit="return false;" action="" method="GET">
						<input class="au-input au-input--xl" style="min-width: 20%"
							type="text" name="search" placeholder="Search">
						<button class="au-btn--submit" type="submit">
							<i class="fa fa-search" style="color: gray"></i>
						</button>
					</form>
				</li>
				<li class="fullscreen">
					<!--  <a href="" class=""> --> <!-- <i class="nav-hdr-btn ti-calendar" style="color: gray"></i> -->
					<!-- <input id="e4" name="e4"> --> <input
					class="daterangepicker-field top_datepicker" id="datePeriod"
					name="daterangepickerperiod"></input> <c:if test="${startdatePeriod != null}">

						<input type="hidden" id="sessionstartPeriodID"
							value="<c:out value="${startdatePeriod}" />" />
					</c:if> <c:if test="${enddatePeriod != null}">

						<input type="hidden" id="sessionendPeriodID"
							value="<c:out value="${enddatePeriod}" />" />
					</c:if> <!-- </a> -->
				</li>
				<!--<li class="fullscreen"><a href="#" class=""> <i
						class="nav-hdr-btn ti-calendar" style="color: gray"
						></i>
				</a></li>-->
				<!-- #END# Full Screen Button -->
				<!-- #START# Notifications-->
				<li class="dropdown"><a href="#" onClick="return false;"
					class="dropdown-toggle" data-toggle="dropdown" role="button"> <i
						class="nav-hdr-btn ti-bell" style="color: gray"></i> <span
						class="notify"></span> <span class="heartbeat"></span>
				</a></li>
				<li class="dropdown"><a href="#" onClick="return false;"
					class="dropdown-toggle" data-toggle="dropdown" role="button"> <i
						class="nav-hdr-btn ti-settings" style="color: gray"></i> <span
						class="notify"></span> <span class="heartbeat"></span>
				</a></li>
				<!-- #END# Notifications-->
				<li class=""><a href="#" onclick="return false;"
					class="dropdown-toggle js-right-sidebar" data-close="true"> <i
						class="fa fa-user-circle"></i>
				</a></li>
			</ul>
		</div>
	</div>
</nav>
<script type="text/javascript">
	function apply() {
		console.log($("#datePeriod").val())
		var datePeriod = $("#datePeriod").val();
		var methodType = 'get';
		$.ajax({
			url : "/stratroom/updateDatePeriod?datePeriod=" + datePeriod,
			type : methodType,
			contentType : "application/json",
			success : function(data, status) {
			}
		});
	}
</script>
