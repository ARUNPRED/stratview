<script id="activities-row-template" type="x-tmpl-mustache">
<div
	class="d-flex flex-row employe_content_border sub_initiative_details">
	<div class="d-flex flex-column flex-fill profile_content">
		<div class="d-flex flex-row">
			<div class="d-flex flex-column init_flex_profile">
				<p class="formattextreader">{{activityName}}</p>
			</div>
			<div class="d-flex flex-column">
				{{{activitieUserSlecteditem}}}
				<ul class="list-unstyled order-list d-flex" id="initiativeactivitieUser_{{id}}">
					{{{activitieUser}}}
				</ul>
			</div>
		</div>
		<div class="d-flex flex-row">
			<div class="d-flex flex-column flex-fill">
				<div class="d-flex flex-row">
					<div class="icon">
						<div id="onechartpie" class="{{chartprocesstempname}}"></div>
					</div>
					<div class="pie-progress">{{activityProgress}}</div>
				</div>
			</div>
			<div class="d-flex flex-column">
				<div>
					<strong>{{startenddate}}</strong>
				</div>
			</div>
			</div>
		</div>


		<div class="flex-column">
			<ul class="header-dropdown m-r--2 d-flex">
				<li class="dropdown"><a href="#" onclick="return false;"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="true"> <i
						class="material-icons">more_vert</i>
				</a>
					<ul class="dropdown-menu pull-right" x-placement="bottom-start"
						style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
						<li><a href="#" data-toggle="modal"
							data-target=".sub_activities_popup"
							onclick="handleActivitiesEvent('{{initiativeId}}',{{id}}, 'edit')">Edit</a>
						</li>
						<li><a href="#"
							onclick="handleActivitiesEvent('{{initiativeId}}',{{id}}, 'delete')"
							class="delete-row">Delete</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</script>