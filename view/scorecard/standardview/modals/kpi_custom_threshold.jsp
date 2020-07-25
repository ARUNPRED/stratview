 <div class="modal fade kpi_custom_threshold_popup" id="kpi_custom_threshold_popup" tabindex="-1" role="dialog"
                aria-labelledby="myLargeModalLabel" aria-hidden="true" modal-backdrop="false" data-backdrop="false">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title" id="myLargeModalLabel">Threshold Formula Calculator</h6>
                            <button type="button" id="threClosePopupId" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="padding: 0 25px">
                            <div class="card">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item m-l-10">
                                        <a class="nav-link active" data-toggle="tab" href="#formula_builder">Formula Builder</a>
                                    </li>
                                </ul>
                                <div class="tab-content" style="padding: 10px">
                                    <div class="tab-pane body active" id="formula_builder">
                                        <div class="row col-md-12">
                                            <textarea class="browser-default" name="thresholdformula" id="thresholdformula" placeholder="" cols="" rows="1" autocomplete="off"></textarea>
                                            <!-- <textarea name="formula" id="formula"></textarea> -->
                                        </div>
                                        <div class="row col-md-12">
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('+')">+</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('-')">-</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('*')">*</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('/')">/</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('%')">%</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('(')">(</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula(')')">)</button>
                                            <!--<button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('[')">[</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula(']')">]</button>-->
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula(':')">:</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('AND')">AND</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('OR')">OR</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('NOT')">NOT</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('IN')">IN</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('==')">==</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('!=')">!=</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('>')">></button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('<')"><</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('>=')">>=</button>
                                            <button type="button" class="opr btn btn-secondary" onclick="updateThresholdFormula('<=')"><=</button>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="panel panel-primary" id="result_panel1">
                                                    <div class="panel-heading">
                                                        <h6 class="panel-title">Functions:</h6>
                                                    </div>
                                                    <div class="panel-body">
                                                        <ul class="list-group">
                                                            <li class="list-group-item" onclick="updateThresholdFormula('if')">If</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('Max')">Max</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('Min')">Min</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('Median')">Median</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('sum')">sum</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('agg')">agg</li>
                                                            <li class="list-group-item" onclick="updateThresholdFormula('avg')">avg</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="panel panel-primary" id="result_panel1">
                                                    <div class="panel-heading">
                                                        <h6 class="panel-title">Function Description:</h6>
                                                    </div>
                                                    <div class="panel-body">
                                                        <h6>IF</h6>
                                                        <p>
                                                            Returns second argument if first argument is true; Returns optional third argument if first argument is false; IF('element', 'trueCalc', 'falseCalc')
                                                        </p>
                                                    </div>
                                                    <input type="checkbox" name="check" /> Show argumnets in formula
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                           <div class="col-md-4" style="margin-bottom: 0px">
                                                <button name="validate" id="validate" class="btn btn-secondary" onclick="handleFormulaValidate('THRESSHOLD')">Validate</button>
                                                <button name="add" id="add" class="btn btn-secondary" onclick="handleFormulaAdd('THRESSHOLD')">Add</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane body" id="summary_calculation">
                                        <div class="col-md-12">
                                            <div class="panel panel-primary" id="final_panel">
                                                <div class="panel-heading">
                                                    <h6 class="panel-title">Formula</h6>
                                                </div>
                                                <div class="panel-body">
                                                    <ul class="list-group formula-panel">
                                                            <li class="list-group-item">Elapsed Year</li>
                                                            <li class="list-group-item">Ends With</li>
                                                            <li class="list-group-item">If</li>
                                                            <li class="list-group-item">Is Null</li>
                                                            <li class="list-group-item">Max</li>
                                                            <li class="list-group-item">Min</li>
                                                            <li class="list-group-item">Median</li>
                                                            <li class="list-group-item">Mid</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>