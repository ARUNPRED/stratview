<script id="perspective-template" type="x-tmpl-mustache">
<div class="col-lg-6 col-md-6 select-toggle {{showhidetitle}}" style="display:{{displayblock}}">
    <div class="card">
        <div class="header {{scorecardStatuslight}}">
            <h2 class="prob">
                <strong class="perspective">{{title}}</strong>
			</h2>
			<input type="hidden" name="defaultscr" value="{{defaultscr}}" />
            <ul class="header-dropdown m-r--5">
                <li class="dropdown m-t--10">
                    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="material-icons">more_vert</i>
                    </a>
                    <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                        <li>
                            <a href="#" data-toggle="modal" data-target=".objective_description_popup" class="objectivedescription" onclick="handleObjectiveEvent('0', 'add', {{Scrid}})">Add</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target=".perspectives_description_popup" class="perspectivedescription" onclick="handlePerspectiveEvent('{{Scrid}}', 'edit')">Edit</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target=".perspectives_description_popup" class="perspectivedescription" onclick="handlePerspectiveEvent('{{Scrid}}', 'view')">View</a>
                        </li>
                        <li>
                            <a href="#" onclick="handlePerspectiveEvent('{{Scrid}}', 'delete')">Delete</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="tableBody">
            <div class="table-responsive">
                <table class="treetable table table-striped dashboard-task-infos align-center" id="table1">                    
                    {{{headerRow}}}
                    
					{{{bodyRows}}}
                </table>
            </div>
        </div>
    </div>
</div>
</script>