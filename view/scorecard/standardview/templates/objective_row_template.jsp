<script id="objective-row-template" type="x-tmpl-mustache">
<tbody>
    <tr data-node="treetable-1">
        <td><i id="objectivestatuslight" class="{{statusLight}}" style="font-size:10px !important"></i></td>
        <td>{{objectiveDisplayId}}</td>
        <td style="text-align: left" colspan="6"><strong>{{objectiveName}}</strong></td>
        <td></td>
        <td></td>
		<td></td>
        <td>
            <ul class="header-dropdown m-r--5">
                <li class="dropdown">
                    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <i class="material-icons">more_vert</i>
                    </a>
                    <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-104px, 24px, 0px);">
                        <li>
                            <a href="#" data-toggle="modal" data-target=".kpi_description_popup" class="kpidescription" onclick="handleKpiEvent('0', 'add', '{{objectiveId}}')">Add</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target=".objective_description_popup" class="objectivedescription" onclick="handleObjectiveEvent('{{objectiveId}}', 'edit', '{{scoreCardId}}')">Edit</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target=".objective_description_popup" class="objectivedescription" onclick="handleObjectiveEvent('{{objectiveId}}', 'view', '{{scoreCardId}}')">View</a>
                        </li>
                        <li>
                            <a href="#" onclick="handleObjectiveEvent('{{objectiveId}}', 'delete', '{{scoreCardId}}')">Delete</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </td>
    </tr>
</tbody>     
</script>