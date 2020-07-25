<script id="kpiViewTemplate" type="text/x-handlebars-template">
                            <div class="d-flex flex-column kpi_initiative_sidebar_details {{kpistatusLight}}" id="kpiliststatus_{{id}}" onclick="populateKpiDetails({{id}})">
                                <div class="d-flex flex-row p-b-5">
                                    <div class="d-flex flex-column kpi_side_depart_bar">
                                        <p class="formattextreader">{{name}}</p>
                                    </div>
                                    <div class="d-flex flex-column pull-right">
                                        <p style="padding-left:20px; text-align: right"   class="formattextreader">{{period}}</p>
                                    </div>
                                </div>
                                <div class="d-flex flex-row justify-content-between m-t--10">
                                    <div class="flex-column ini_side_depart_bar">
                                        <div class="flex-row" style="font-weight: bold" padding-left:10px"><span class="employee_info" >Actual</span> </div>
										<div class="flex-row"><span class="{{actualpositive}}">{{actual}}</span></div>
                                    </div>
                                    <div class="d-flex flex-column">
                                        <div class="flex-row" style="font-weight: bold; padding-left:10px; text-align: right"><span class="employee_info">Target</span> </div>
										<div class="flex-row" style="padding-left:10px; text-align: right"><span class="{{targetpositive}}">{{target}}</span></div>
                                    </div>
                                </div>
                            </div>
    
</script>