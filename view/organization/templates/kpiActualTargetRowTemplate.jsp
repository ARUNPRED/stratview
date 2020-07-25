<script id="kpiActualTargetRowTemplate" type="text/x-handlebars-template">
	<tr>
		<td style="font-family:'Poppins', sans-serif !important;text-align:center !important;">{{period}}</td>
		<td style="font-family:'Poppins', sans-serif !important;text-align:right !important;" class="{{actualcheckispositiveornot}}">{{currency}}{{actual}}</td>
		<td style="font-family:'Poppins', sans-serif !important;" class="{{targetcheckispositiveornot}}">{{currency}}{{target}}</td>
		<td style="font-family:'Poppins', sans-serif !important;" class="{{atargetcheckispositiveornot}}">{{annualCurrency}} {{annualTarget}}</td>
		<td style="font-family:'Poppins', sans-serif !important;" class="{{gapcheckispositiveornot}}">{{currency}}{{gap}}</td>
		<td style="font-family:'Poppins', sans-serif !important;" class="{{ytdcheckispositiveornot}}">{{currency}}{{ytd}}</td>
	</tr>
</script>