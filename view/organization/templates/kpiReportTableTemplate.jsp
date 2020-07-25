<script id="kpireportTabletemplate" type="x-tmpl-mustache">
<div class="card">
                            <div class="header d-flex flex-row">
                                <h5 class="prob d-flex flex-fill">
<strong class="editableTxt2" onkeypress="return (this.innerText.length <= 25)" contenteditable="true" data-oldreporttableHeader="{{reporttableHeader}}" id="reporttableHeader" editable="true">{{reporttableHeader}}</strong> 
</h5>
                                <ul class="header-dropdown m-r--2 d-flex">
                                    <!-- <li class="m-t--10">
                                        <select id="objective_owner" name="" class="form-control" style="width: 120px;">
                                            <option value="monthly">Month</option>
                                            <option value="quarter">Quarter Year</option>
                                            <option value="half year">Half Year</option>
                                            <option value="annual">Annual</option>
                                        </select>
                                    </li> -->
                                    <li class="dropdown m-t--10">
                                        <a href="#" onclick="return false;" class="dropdown-toggle"
                                            data-toggle="dropdown" role="button" aria-haspopup="true"
                                            aria-expanded="true">
                                            <i class="material-icons">more_vert</i>
                                        </a>
                                        <ul class="dropdown-menu pull-right" x-placement="bottom-start"
                                            style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 24px, 0px);">
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#bigTable"
                                                    onclick="reporttableview({{id}},{{periodtype}});">View</a>
                                            </li>
                                            <li>
                                                <a href="#" onclick="return false;" class="delete-row">Delete</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body table-responsive sub-ini-box">
                                <div class="col-lg-12 col-md-12">
                                    <div class="card" style="margin-right:-10px !important">
                                        <div class="tableBody">
                                            <div class="table-responsive box" id="monthlyclass" style="display: none;">
                                                <table class="table dashboard-task-infos align-center dashboard-table monthlyclassTable"
                                                    id="table1" style="margin-bottom: 0px !important;white-space: nowrap;">
                                                    <tr>
                                                        <th rowspan="2">
                                                            <i class="fas fa-arrow-up"></i>
                                                            <i class="fas fa-arrow-down"></i>
                                                        </th>
                                                        <th rowspan="2" style="padding: 0 10px;">Name/Period
                                                        </th>
                                                        {{{quaterheader}}}
                                                    </tr>
                                                    <tr>
                                                        {{{quaterheaderrow}}}
                                                    </tr>
                                                    {{{quaterheaderbody}}}                                                
                                                </table>
                                            </div>
                                            <div class="table-responsive box" id="QuarterYear" style="display: none;">
                                                <table class="table dashboard-task-infos align-center dashboard-table QuarterYearTable"
                                                    id="table1" style="margin-bottom: 0px !important;white-space: nowrap;">
                                                    <tr>
                                                        <th rowspan="2">
                                                            <i class="fas fa-arrow-up"></i>
                                                            <i class="fas fa-arrow-down"></i>
                                                        </th>
                                                        <th rowspan="2" style="padding: 0 10px;">Name/Period
                                                        </th>
                                                        {{{quaterheader}}}
                                                    </tr>
                                                    <tr>
                                                        {{{quaterheaderrow}}}
                                                    </tr>
                                                    {{{quaterheaderbody}}}
                                                </table>
                                            </div>
                                            <div class="table-responsive box" id="HalfYear" style="display: none;">
                                                <table class="table dashboard-task-infos align-center dashboard-table HalfYearTable"
                                                    id="table1" style="margin-bottom: 0px !important;white-space: nowrap;">
                                                    <tr>
                                                        <th rowspan="2">
                                                            <i class="fas fa-arrow-up"></i>
                                                            <i class="fas fa-arrow-down"></i>
                                                        </th>
                                                        <th rowspan="2" style="padding: 0 10px;">Name/Period
                                                        </th>
                                                        {{{quaterheader}}}
                                                    </tr>
                                                    <tr>
                                                        {{{quaterheaderrow}}}
                                                    </tr>
                                                    {{{quaterheaderbody}}}
                                                </table>
                                            </div>
                                            <div class="table-responsive box" id="Annual" style="display:none;">
                                                <table class="table dashboard-task-infos align-center dashboard-table AnnualTable"
                                                    id="table1" style="margin-bottom: 0px !important;white-space: nowrap;">
                                                    <tr>
                                                        <th rowspan="2">
                                                            <i class="fas fa-arrow-up"></i>
                                                            <i class="fas fa-arrow-down"></i>
                                                        </th>
                                                        <th rowspan="2" style="padding: 0 10px;">Name/Period
                                                        </th>
                                                        {{{quaterheader}}}
                                                    </tr>
                                                    <tr>
                                                        {{{quaterheaderrow}}}
                                                    </tr>
                                                    {{{quaterheaderbody}}}
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </script>