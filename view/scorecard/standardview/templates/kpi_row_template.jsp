<script id="kpi-row-template" type="x-tmpl-mustache">
<thead>
    <tr>
        <th><i class="{{statusLight}}" style="font-size:10px !important"></i></th>
        <th><a style="font-weight: 900;color: #313030 !important;" href="/stratroom/kpiView?kpiId={{kpiId}}&scoreCardId={{scoreCardId}}&objectiveId={{objectiveId}}&pageId={{pageId}}">{{kpiDisplayId}}</a></th>
        <th style="text-align: left" colspan="3">{{kpiName}}</th>
        <th>{{kpiMeasure}}</th>
        <th  style="white-space: nowrap;">{{kpiActual}}</th>
        <th  style="white-space: nowrap;">{{kpiTarget}}</th>
        <!--th>{{kpiTarget}}</th-->

		{{{trendValue}}}
        <th><a href="/stratroom/risks?kpiId={{kpiId}}&kpiRiskView=true"><i class="{{riskStatusLight}}" style="font-size:10px !important"></i></a></th>
        <th>
            <ul class="header-dropdown" style="margin: 0px;">
                <li class="dropdown">
                    <a href="#" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        <i class="material-icons">more_vert</i>
                    </a>
                    <ul class="dropdown-menu pull-right" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                        <li>
                            <a href="#" data-toggle="modal" data-target=".kpi_description_popup" class="kpidescription" onclick="handleKpiEvent('{{kpiId}}', 'edit', '{{objectiveId}}')">Edit</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target=".kpi_description_popup" class="kpidescription" onclick="handleKpiEvent('{{kpiId}}', 'view', '{{objectiveId}}')">View</a>
                        </li>
                        <li>
                            <a href="#" onclick="handleKpiEvent('{{kpiId}}', 'delete', '{{objectiveId}}')">Delete</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </th>
    </tr>
</thead>
</script>