 <script id="chart-template" type="x-tmpl-mustache">
<div class="card">
	<div class="header d-flex flex-row">
		<h5 class="prob d-flex flex-fill">
			<strong class="editableTxt1"
				onkeypress="return (this.innerText.length <= 25)" id="chartHeader" data-oldchartHeader="{{chartHeader}}" editable="true">{{chartHeader}}</strong>
		</h5>
		<ul class="header-dropdown m-r--2">
			<li class="dropdown m-t--10"><a href="#" onclick="return false;"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="true"> <i
					class="material-icons">more_vert</i>
			</a>
				<ul class="dropdown-menu pull-right" x-placement="bottom-start"
								style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
								<li><a href="#" data-toggle="modal" data-target=".chart_view_popup" onclick="initiativechartviewdetails();">View</a></li>
								<li><a href="#" onclick="return false;">Delete</a></li>
							</ul></li>
		</ul>
	</div>
	<div>
		<div id="chartdiv" class="charttemplatediv"></div>
	</div>
</div>
</script>