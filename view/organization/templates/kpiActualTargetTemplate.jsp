<script id="kpiActualTargetTemplate" type="x-tmpl-mustache">
<div class="card">
	<div class="header d-flex flex-row">
		<h5 class="prob d-flex flex-fill">
			<strong class="editableTxt2" contenteditable="true" onkeypress="return (this.innerText.length <= 25)" data-oldactualvstargetHeader="{{actualvstargetHeader}}" id="actualvstargetHeader" editable="true">{{actualvstargetHeader}}</strong> 
		</h5>
		<ul class="header-dropdown m-r--2">
			<li class="dropdown m-t--10"><a href="#" onclick="return false;"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="true"> <i
					class="material-icons">more_vert</i>
			</a>
				<ul class="dropdown-menu pull-right" x-placement="bottom-start"
					style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
					<li><a href="#" data-toggle="modal"
						data-target=".sub_initative_view_popup" onclick="kpiActualtargetviewdetails()">View</a>
					</li>
					<li><a href="#" onclick="return false;" class="delete-row">Delete</a>
					</li>
				</ul></li>
		</ul>
	</div>
	<div class="tableBody">
		<div class="table-responsive">
			<div class="table-responsive sub-ini-box" id="actualtargetrow">
				<table class="table dashboard-task-infos align-center dashboard-table" style="width:100%;overflow-x:scroll !important;">
					<thead>
						<tr>
							<th style="font-family:'Poppins;', sans-serif !important;text-align:center !important;width:15%;">Period</th>
							<th style="font-family:'Poppins', sans-serif !important;text-align:right !important;width:17%;">Actual</th>
							<th style="font-family:'Poppins', sans-serif !important;width:17%;">Target</th>
							<th style="font-family:'Poppins', sans-serif !important;width:17%;">Annual Target</th>
							<th style="font-family:'Poppins', sans-serif !important;width:17%;">Gap</th>
							<th style="font-family:'Poppins', sans-serif !important;width:17%;">YTD</th>
						</tr>
					</thead>
					<tbody>
					{{{bodyRows}}}
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</script>