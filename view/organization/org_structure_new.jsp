<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextroot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>StratRoom</title>
<link href="css/app.min.css" rel="stylesheet">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="css/shards-dashboards.1.1.0.min.css">
<link href="css/style.css" rel="stylesheet" />
<link href="css/startroom/org.css" rel="stylesheet" />
<link href="css/fonts/fontawesome_v_5/font-awesome.min.css"
	rel="stylesheet" />
<link href="css/fonts/fontawesome_v_5/all.css" " rel=" stylesheet" />
<link href="css/startroom/wedgets.css" rel="stylesheet">
<link href="css/styles/all-themes.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.treegrid.css">
<link rel="stylesheet" href="css/bootstrap-treefy.css">
<link href="css/jquery-ui.min.css" rel="stylesheet">
<link href="css/jquery.orgchart.css" rel="stylesheet">
<link href="css/daterangepicker.min.css" rel="stylesheet">
<link href="css/file-upload.css" rel="stylesheet">

<style>
html, body {
	font-family: poppins;
	color: #333333;
	background-image:
		url(http://dabeng.github.io/OrgChart/img/background.jpg);
}

.orientation-right {
	top: 60px !important;
	right: 0 !important;
	left: auto !important;
	position: fixed;
}

.primaryheader {
	background-color: #3a6596 !important;
}

.btn-danger:hover {
	background-color: #fb483a !important;
	color: #fff !important;
	font-size: 1rem;
}

.modal-header .close:hover {
	color: white;
}

.btn {
	font-weight: 400 !important;
	font-family: "Poppins", sans-serif !important;
	border: 1px solid transparent !important;
	padding: 0.375rem 0.75rem !important;
	font-size: 14px !important;
	line-height: 1.5 !important;
	border-radius: .25rem !important;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
}

.confirmbtn {
	-webkit-tap-highlight-color: transparent;
	text-decoration: none;
	background: #f7f5f4;
	outline: none !important;
	text-transform: none;
	letter-spacing: 0.5px;
	font-family: "Poppins", sans-serif !important;
	display: inline-block;
	font-weight: 400;
	color: #212529;
	text-align: center;
	vertical-align: middle;
	user-select: none;
	background-color: transparent;
	border: 1px solid transparent;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	line-height: 1.5;
	border-radius: 0.25rem;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
}

.confirmalert {
	color: #777777 !important;
	text-align: center;
	font-size: 1.25rem !important;
	margin: 1.0933333333rem 0 0.656rem 0;
	line-height: 1.2;
	font-family: "Poppins", sans-serif !important;
	margin-bottom: 0.5rem;
	margin-top: 0;
}

.checkbuttoncolor {
	background-color: aliceblue;
}
</style>
<script type="text/javascript" src="${contextroot}/js/jquery.min.js"></script>

</head>


<body class="light">

	<jsp:include page="../common/top-navigation.jsp"></jsp:include>
	<!-- #Top Bar -->
	<div>
		<jsp:include page="../common/left-navigation.jsp"></jsp:include>
		<jsp:include page="../common/right-navigation.jsp"></jsp:include>

		<!-- Right Sidebar -->
		<!-- #END# Right Sidebar -->
		<!-- Right Sidebar -->
		<aside id="rightsidebar" class="right-sidebar">
			<ul class="nav nav-tabs tab-nav-right" role="tablist">
				<li role="presentation"><a href="#skins" data-toggle="tab"
					class="active">SKINS</a></li>
				<li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a>
				</li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel"
					class="tab-pane in active in active stretchLeft" id="skins">
					<div class="demo-skin">
						<div class="rightSetting">
							<p>GENERAL SETTINGS</p>
							<ul class="setting-list list-unstyled m-t-20">
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Save History <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Show Status <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Auto Submit Issue <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
								<li>
									<div class="form-check">
										<div class="form-check m-l-10">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" checked>
												Show Status To All <span class="form-check-sign"> <span
													class="check"></span>
											</span>
											</label>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="rightSetting">
							<p>SIDEBAR MENU COLORS</p>
							<button type="button"
								class="btn btn-sidebar-light btn-border-radius p-l-20 p-r-20">Light</button>
							<button type="button"
								class="btn btn-sidebar-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
						</div>
						<div class="rightSetting">
							<p>THEME COLORS</p>
							<button type="button"
								class="btn btn-theme-light btn-border-radius p-l-20 p-r-20">Light</button>
							<button type="button"
								class="btn btn-theme-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
						</div>
						<div class="rightSetting">
							<p>SKINS</p>
							<ul class="demo-choose-skin choose-theme list-unstyled">
								<li data-theme="black" class="actived">
									<div class="black-theme"></div>
								</li>
								<li data-theme="white">
									<div class="white-theme white-theme-border"></div>
								</li>
								<li data-theme="purple">
									<div class="purple-theme"></div>
								</li>
								<li data-theme="blue">
									<div class="blue-theme"></div>
								</li>
								<li data-theme="cyan">
									<div class="cyan-theme"></div>
								</li>
								<li data-theme="green">
									<div class="green-theme"></div>
								</li>
								<li data-theme="orange">
									<div class="orange-theme"></div>
								</li>
							</ul>
						</div>
						<div class="rightSetting">
							<p>Disk Space</p>
							<div class="sidebar-progress">
								<div class="progress m-t-20">
									<div class="progress-bar l-bg-cyan shadow-style width-per-45"
										role="progressbar" aria-valuenow="45" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<span class="progress-description"> <small>26%
										remaining</small>
								</span>
							</div>
						</div>
						<div class="rightSetting m-b-15">
							<p>Server Load</p>
							<div class="sidebar-progress">
								<div class="progress m-t-20">
									<div class="progress-bar l-bg-orange shadow-style width-per-63"
										role="progressbar" aria-valuenow="63" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
								<span class="progress-description"> <small>Highly
										Loaded</small>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane stretchRight" id="settings">
					<div class="demo-settings">
						<p>GENERAL SETTINGS</p>
						<ul class="setting-list">
							<li><span>Report Panel Usage</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-green"></span>
									</label>
								</div></li>
							<li><span>Email Redirect</span>
								<div class="switch">
									<label> <input type="checkbox"> <span
										class="lever switch-col-blue"></span>
									</label>
								</div></li>
						</ul>
						<p>SYSTEM SETTINGS</p>
						<ul class="setting-list">
							<li><span>Notifications</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-purple"></span>
									</label>
								</div></li>
							<li><span>Auto Updates</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-cyan"></span>
									</label>
								</div></li>
						</ul>
						<p>ACCOUNT SETTINGS</p>
						<ul class="setting-list">
							<li><span>Offline</span>
								<div class="switch">
									<label> <input type="checkbox" checked> <span
										class="lever switch-col-red"></span>
									</label>
								</div></li>
							<li><span>Location Permission</span>
								<div class="switch">
									<label> <input type="checkbox"> <span
										class="lever switch-col-lime"></span>
									</label>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</aside>
		<!-- #END# Right Sidebar -->

		<!-- START Add Org Structure Sidebar -->
		<aside id="Add_Org_Structure" class="add_org_structure-sidebar">
			<form id="add_org_structure_form">
				<div class="form-group">
					<div class="form-line center profile-pic">
						<img width="110" height="110" class="rounded-circle"
							id="upload_link2" src="images/media.png" alt=""> <input
							id="upload2" type="file" style="display: none" />
						<div class="edit1">
							<a href="#"><i class="fa fa-pencil-alt"></i></a>
						</div>
					</div>
					<input type="hidden" name="org_new_id1" id="org_new_id1" />

					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Name</label> <input type="text"
							name="name1" id="name_add1"
							class="form-control browser-default required" />
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Email</label> <input type="text"
							name="email_add1" id="email_add1"
							class="form-control browser-default"> <span
							id="emailerrorshow1" style="color: red; display: none"></span>
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">Location</label>
						<textarea class="form-control browser-default"
							name="location_add1" id="location_add1" placeholder="" cols=""
							rows="3"></textarea>
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Designation</label> <input
							type="text" name="desg1" id="desg_add1"
							class="form-control browser-default required">
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Dept</label> <input type="text"
							name="dept1" id="dept_add1"
							class="form-control browser-default required">
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">KPI Name</label> <input
							type="text" name="kpi_name1" id="kpi_name_add1"
							class="form-control browser-default">
					</div>

					<div class="form-line p-l-10 p-t-5 center">
						<input type="button" role="button" class="btn canceladdReporting"
							id="close-org-aside1" value="Cancel" /> <input type="button"
							role="button" class="org_struct_add_btn" id="add-org-object"
							value="Add" onclick="return createEmployee()" />
					</div>
				</div>
			</form>
		</aside>
		<!-- #END# Add Org Structure Sidebar -->


		<!-- START Edit Org Structure Sidebar -->
		<aside id="Edit_Org_Structure" class="edit_org_structure-sidebar">
			<form id="edit_org_structure_form">
				<div class="form-group">
					<div class="form-line center profile-pic">
						<img width="110" height="110" class="rounded-circle"
							id="upload_link1" src="" alt=""> <input id="upload1"
							type="file" style="display: none" />
						<div class="edit1">
							<a href="#"><i class="fa fa-pencil-alt"></i></a>
						</div>
					</div>
					<input type="hidden" name="org_new_id" id="org_new_id" /> <input
						type="hidden" name="currentimgdivid" id="currentimgdivid" />
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Name</label> <input type="text"
							name="name" id="name_add"
							class="form-control browser-default required" />
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Employee ID</label> <input
							type="text" name="name" disabled id="emp_show_id"
							class="form-control browser-default" />
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Designation</label> <input
							type="text" name="desg" id="desg_add"
							class="form-control browser-default required">
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Dept</label> <input type="text"
							name="dept" id="dept_add"
							class="form-control browser-default required">
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">KPI Name</label> <input
							type="text" name="org_kpiname" id="org_kpiname"
							class="form-control browser-default">
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="name" class="left">Email</label> <input type="text"
							name="email" id="email_add" class="form-control browser-default">
						<span id="emailerrorshow" style="color: red; display: none"></span>
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">Phone Number</label> <input
							type="tel" name="org_phone" id="org_phone"
							class="form-control browser-default required"
							pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"
							onkeypress="return event.charCode >= 48 && event.charCode <= 57"
							required>
					</div>
					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">Location</label>
						<textarea class="form-control browser-default" name="location_add"
							id="location_add" placeholder="" cols="" rows="3"></textarea>
					</div>

					<div class="form-line p-l-10 p-t-5 p-r-5 mb-2">
						<label for="title" class="left">Currency</label> <select
							id="currency" name="currency"
							class="form-control browser-default mt-1">
							<option value="">Select currency</option>
							<option data-currency="$" value="USD">America (United
								States) Dollars - USD</option>
							<option data-currency="AFN" value="AFN">Afghanistan
								Afghanis - AFN</option>
							<option data-currency="XOF" value="XOF">CFA BCEAO Francs
								- XOF</option>
							<option data-currency="XAF" value="XAF">CFA BEAC Francs
								- XAF</option>
							<option data-currency="ALL" value="ALL">Albania Leke -
								ALL</option>
							<option data-currency="DZD" value="DZD">Algeria Dinars -
								DZD</option>
							<option data-currency="ARS" value="ARS">Argentina Pesos
								- ARS</option>
							<option data-currency="AUD" value="AUD">Australia
								Dollars - AUD</option>
							<option data-currency="&#8371;" value="ATS">Austria
								Schillings - ATS</option>
							<option data-currency="BSD" value="BSD">Bahamas Dollars
								- BSD</option>
							<option data-currency="BHD" value="BHD">Bahrain Dinars -
								BHD</option>
							<option data-currency="&#x9F3;" value="BDT">Bangladesh
								Taka - BDT</option>
							<option data-currency="BBD" value="BBD">Barbados Dollars
								- BBD</option>
							<option data-currency="BEF" value="BEF">Belgium Francs -
								BEF</option>
							<option data-currency="BMD" value="BMD">Bermuda Dollars
								- BMD</option>
							<option data-currency="R$" value="BRL">Brazil Reais -
								BRL</option>
							<option data-currency="лв" value="BGN">Bulgaria Leva -
								BGN</option>
							<option data-currency="$" value="CAD">Canada Dollars -
								CAD</option>
							<option data-currency="$" value="CLP">Chile Pesos - CLP</option>
							<option data-currency="&#x5143;" value="CNY">China Yuan
								Renminbi - CNY</option>
							<option data-currency="RMB" value="RMB">RMB (China Yuan
								Renminbi) - CNY</option>
							<option data-currency="$" value="COP">Colombia Pesos -
								COP</option>
							<option data-currency="XPF" value="XPF">CFP Francs - XPF</option>
							<option data-currency="CRC" value="CRC">Costa Rica
								Colones - CRC</option>
							<option data-currency="kn" value="HRK">Croatia Kuna -
								HRK</option>
							<option data-currency="CYP" value="CYP">Cyprus Pounds -
								CYP</option>
							<option data-currency="CZK" value="CZK">Czech Republic
								Koruny - CZK</option>
							<option data-currency="kr" value="DKK">Denmark Kroner -
								DKK</option>
							<option data-currency="DEM" value="DEM">Deutsche
								(Germany) Marks - DEM</option>
							<option data-currency="DOP" value="DOP">Dominican
								Republic Pesos - DOP</option>
							<option data-currency="NLG" value="NLG">Dutch
								(Netherlands) Guilders - NLG</option>
							<option data-currency="XCD" value="XCD">Eastern
								Caribbean Dollars - XCD</option>
							<option data-currency="EGP" value="EGP">Egypt Pounds -
								EGP</option>
							<option data-currency="EEK" value="EEK">Estonia Krooni -
								EEK</option>
							<option data-currency="&#x20AC;" value="EUR">Euro - EUR</option>
							<option data-currency="FJD" value="FJD">Fiji Dollars -
								FJD</option>
							<option data-currency="FIM" value="FIM">Finland Markkaa
								- FIM</option>
							<option data-currency="FRF" value="FRF">France Francs -
								FRF</option>
							<option data-currency="&#8368;" value="DEM">Germany
								Deutsche Marks - DEM</option>
							<option data-currency="XAU" value="XAU">Gold Ounces -
								XAU</option>
							<option data-currency="GRD" value="GRD">Greece Drachmae
								- GRD</option>
							<option data-currency="GTQ" value="GTQ">Guatemalan
								Quetzal - GTQ</option>
							<option data-currency="NLG" value="NLG">Holland
								(Netherlands) Guilders - NLG</option>
							<option data-currency="HKD" value="HKD">Hong Kong
								Dollars - HKD</option>
							<option data-currency="ft" value="HUF">Hungary Forint -
								HUF</option>
							<option data-currency="ISK" value="ISK">Iceland Kronur -
								ISK</option>
							<option data-currency="XDR" value="XDR">IMF Special
								Drawing Right - XDR</option>
							<option data-currency="&#8377;" value="INR">India Rupees
								- INR</option>
							<option data-currency="Rp" value="IDR">Indonesia Rupiahs
								- IDR</option>
							<option data-currency="IRR" value="IRR">Iran Rials - IRR</option>
							<option data-currency="IQD" value="IQD">Iraq Dinars -
								IQD</option>
							<option data-currency="IEP" value="IEP">Ireland Pounds -
								IEP</option>
							<option data-currency="&#x20AA;" value="ILS">Israel New
								Shekels - ILS</option>
							<option data-currency="ITL" value="ITL">Italy Lire - ITL</option>
							<option data-currency="JMD" value="JMD">Jamaica Dollars
								- JMD</option>
							<option data-currency="&#xa5;" value="JPY">Japan Yen -
								JPY</option>
							<option data-currency="JOD" value="JOD">Jordan Dinars -
								JOD</option>
							<option data-currency="Ksh" value="KES">Kenya Shillings
								- KES</option>
							<option data-currency="&#x20A9;" value="KRW">Korea
								(South) Won - KRW</option>
							<option data-currency="KWD" value="KWD">Kuwait Dinars -
								KWD</option>
							<option data-currency="LBP" value="LBP">Lebanon Pounds -
								LBP</option>
							<option data-currency="LUF" value="LUF">Luxembourg
								Francs - LUF</option>
							<option data-currency="RM" value="MYR">Malaysia Ringgits
								- MYR</option>
							<option data-currency="MTL" value="MTL">Malta Liri - MTL</option>
							<option data-currency="MUR" value="MUR">Mauritius Rupees
								- MUR</option>
							<option data-currency="$" value="MXN">Mexico Pesos - MXN</option>
							<option data-currency="MAD" value="MAD">Morocco Dirhams
								- MAD</option>
							<option data-currency="NLG" value="NLG">Netherlands
								Guilders - NLG</option>
							<option data-currency="$" value="NZD">New Zealand
								Dollars - NZD</option>
							<option data-currency="kr" value="NOK">Norway Kroner -
								NOK</option>
							<option data-currency="OMR" value="OMR">Oman Rials - OMR</option>
							<option data-currency="Rs" value="PKR">Pakistan Rupees -
								PKR</option>
							<option data-currency="XPD" value="XPD">Palladium Ounces
								- XPD</option>
							<option data-currency="PEN" value="PEN">Peru Nuevos
								Soles - PEN</option>
							<option data-currency="&#x20B1;" value="PHP">Philippines
								Pesos - PHP</option>
							<option data-currency="XPT" value="XPT">Platinum Ounces
								- XPT</option>
							<option data-currency="PLN" value="PLN">Poland Zlotych -
								PLN</option>
							<option data-currency="PTE" value="PTE">Portugal Escudos
								- PTE</option>
							<option data-currency="QAR" value="QAR">Qatar Riyals -
								QAR</option>
							<option data-currency="lei" value="RON">Romania New Lei
								- RON</option>
							<option data-currency="ROL" value="ROL">Romania Lei -
								ROL</option>
							<option data-currency="&#x20BD;" value="RUB">Russia
								Rubles - RUB</option>
							<option data-currency="SAR" value="SAR">Saudi Arabia
								Riyals - SAR</option>
							<option data-currency="XAG" value="XAG">Silver Ounces -
								XAG</option>
							<option data-currency="$" value="SGD">Singapore Dollars
								- SGD</option>
							<option data-currency="SKK" value="SKK">Slovakia Koruny
								- SKK</option>
							<option data-currency="SIT" value="SIT">Slovenia Tolars
								- SIT</option>
							<option data-currency="R" value="ZAR">South Africa Rand
								- ZAR</option>
							<option data-currency="&#x20A9;" value="KRW">South Korea
								Won - KRW</option>
							<option data-currency="ESP" value="ESP">Spain Pesetas -
								ESP</option>
							<option data-currency="XDR" value="XDR">Special Drawing
								Rights (IMF) - XDR</option>
							<option data-currency="Rs" value="LKR">Sri Lanka Rupees
								- LKR</option>
							<option data-currency="SDD" value="SDD">Sudan Dinars -
								SDD</option>
							<option data-currency="kr" value="SEK">Sweden Kronor -
								SEK</option>
							<option data-currency="CHF" value="CHF">Switzerland
								Francs - CHF</option>
							<option data-currency="&#22291;" value="TWD">Taiwan New
								Dollars - TWD</option>
							<option data-currency="&#xE3F;" value="THB">Thailand
								Baht - THB</option>
							<option data-currency="TTD" value="TTD">Trinidad and
								Tobago Dollars - TTD</option>
							<option data-currency="TND" value="TND">Tunisia Dinars -
								TND</option>
							<option data-currency="&#x20BA;" value="TRY">Turkey New
								Lira - TRY</option>
							<option data-currency="UAE" value="AED">United Arab
								Emirates Dirhams - AED</option>
							<option data-currency="&#xA3;" value="GBP">United
								Kingdom Pounds - GBP</option>
							<option data-currency="$" value="USD">United States
								Dollars - USD</option>
							<option data-currency="VEB" value="VEB">Venezuela
								Bolivares - VEB</option>
							<option data-currency="&#x20AB;" value="VND">Vietnam
								Dong - VND</option>
							<option data-currency="ZMK" value="ZMK">Zambia Kwacha -
								ZMK</option>
						</select>
					</div>

					<div class="form-line p-l-10 p-t-5 p-r-5 center">
						<input type="button" role="button" class="btn canceladdReporting"
							id="close-org-aside" value="Cancel" /> <input type="button"
							role="button" class="org_struct_save_btn" id="edit-org-object"
							value="Save" onclick="updateEmployee()" />
					</div>

				</div>
			</form>
		</aside>
		<!-- #END# Edit Org Structure Sidebar -->

		<!-- <button class="btn pull-right" style="font-size:1rem;margin-top: -4%; margin-right: 9%; background-color: #1e252d; color: #fff;">save</button>-->
		<a href="#"
			style="float: right; font-size: 1rem; margin-top: -4%; margin-right: 2%; position: relative; overflow: hidden; display: inline-block;">
			<button class="btn btn-custom-secondary orgimportbtn pull-right"
				data-toggle="modal" data-target=".file_upload_popup"
				style="font-size: 1rem; background-color: #1e252d; color: #fff; overflow: hidden; display: inline-block;">
				<i style="font-size: 14px; color: #fff"
					class="fa fa-upload orgimporthover"></i>
			</button>
		</a>

		<div id="deleteModalorg" class="modal fade">
			<div class="modal-dialog modal-confirm">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title"
							style="font-size: 12px !important; font-family: 'Poppins', sans-serif; color: white !important;">
							Delete</h4>
						<button type="button" class="close"
							style="color: white !important;" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<h5 class="confirmalert"
							style="font-family: 'Poppins', sans-serif;">Do you really
							want to delete these records?</h5>
						<br>
						<div class="form-line right">
							<input type="hidden" id="deleterecordid" />
							<button type="button" class="btn-default1 btn"
								data-dismiss="modal" aria-label="Close"
								style="padding-top: 3px !important; line-height: 1.5;">Cancel</button>
							<button type="button"
								class="btn btn-danger confirm-modal-deleteBtn">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- File Validate Form -->

		<div class="modal fade file_upload_popup" id="file-validate-form"
			tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel_1"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h4 style="color: #e9f3f3;">File Upload</h4>
						<button type="button" class="close pull-right"
							data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<ul class="form-progressbar">
									<li>Upload</li>
									<li>Validation</li>
									<li>Import</li>
								</ul>
							</div>
							<div class="col-md-12">
								<hr />
							</div>
						</div>

						<div class="row" id="file-upload">
							<div class="col-md-12">
								<div class="form-group">
									<label class="control-label">Upload File</label>
									<div class="preview-zone hidden">
										<div class="box box-solid">
											<div class="box-body"></div>
										</div>
										<select id="category" name="category"
											class="form-control browser-default" required>
											<option value="">Choose</option>
											<option value="Organisation Import">Org chart</option>
											<option value="ETLUpload">ETL Upload</option>
											<option value="Scorecard Import">Scorecard</option>
											<option value="Initiative Import">Initiatives</option>
										</select>
										<span	id="categoryerrorshow" style="color: red; display: none"></span>
									</div>
									<div class="dropzone-wrapper">
										<div class="dropzone-desc">
											<i class="fas fa-file-upload" style="font-size: 20px;"></i>
											<p>Choose a file or drag it here.</p>
										</div>
										<input type="file" name="img_logo" class="dropzone"
											accept=".xlsx, .xls, .csv" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<hr />
							</div>
							<div class="col-md-12">
								<div class="form-line right">
									<button class="initative_save_btn" id="next-btn-1"
										style="font-weight: 600;">Next</button>
								</div>
							</div>
						</div>

						<div class="row" id="file-validate" style="display: none;">
							<div class="col-md-12 img-center">
								<img id="imagevalidate1" src="images/Not-Verified.png" alt="Not-Verified" />
								<div class="error-div">
									<table class="error-table">
										<thead>
											<tr>
												<th style="width: 200px; text-align: center;">Row-Number</th>
												<th style="width: 300px; text-align: center;">HighLighted
													CellName</th>
												<th style="width: 300px; text-align: center;">Error
													Reason</th>
											</tr>

										</thead>
										<tbody class="uploadvalidationSuccess">
											<!-- <tr>
										<td style="width: 150px;">1</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">3</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">5</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">8</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">10</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">19</td>
										<td>Contain Special Character</td>
									</tr> -->
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-md-12">
								<hr />
							</div>
							<div class="col-md-12">
								<div class="form-line" id="validateImportHide">
									<!-- <button type="button" class="btn-default1 btn" id="prev-btn1"
										style="font-weight: 600;">Previous</button>
									<button class="initative_save_btn pull-right" id="next-btn-2"
										style="font-weight: 600;">Next</button> -->
								</div>
							</div>
						</div>


						<div class="row" id="file-validate1" style="display: none;">
							<div class="col-md-12 img-center">
								<img id="imagevalidate" src="images/Not-Verified.png" alt="Not-Verified" />
								<div class="error-div">
									<table class="error-table">
										<thead>
											<tr>
												<th style="width: 150px; text-align: center;">SheetName</th>
												<th style="width: 150px; text-align: center;">Row-Number</th>
												<th style="width: 150px; text-align: center;">CellName</th>
												<th style="width: 250px; text-align: center;">Reason</th>
											</tr>
										</thead>
										<tbody class="uploadvalidationSuccess">
											<!-- <tr>
										<td style="width: 150px;">1</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">3</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">5</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">8</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">10</td>
										<td>Contain Special Character</td>
									</tr>
									<tr>
										<td style="width: 150px;">19</td>
										<td>Contain Special Character</td>
									</tr> -->
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-md-12">
								<hr />
							</div>
							<div class="col-md-12">
								<div class="form-line" id="validatescoreCardImportHide">
									<!-- <button type="button" class="btn-default1 btn" id="prev-btn1"
										style="font-weight: 600;">Previous</button>
									<button class="initative_save_btn pull-right" id="next-btn-2"
										style="font-weight: 600;">Next</button> -->
								</div>
							</div>
						</div>

						<div class="row" id="file-save" style="display: none;">
							<div class="col-md-12">
								<div class="col-md-12 img-center">
									<img src="images/Success.png" alt="Verified" />
								</div>
							</div>
							<div class="col-md-12">
								<hr />
							</div>
							<div class="col-md-12">
								<div class="form-line">
									<button type="button" class="btn-default1 btn" id="prev-btn2"
										style="font-weight: 600;">Previous</button>
									<button class="initative_save_btn pull-right" id="done-btn"
										style="font-weight: 600;" data-dismiss="modal"
										aria-label="Close">Done</button>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- END File Validate Form -->


		<!-- File Upload PopUp -->
		<div class="modal fade file_upload_popup" tabindex="-1" role="dialog"
			aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h6 class="modal-title" id="myLargeModalLabel"
							style="color: #fff; font-size: 12px; font-family: 'Poppins', sans-serif;">File
							Upload</h6>
						<button type="button" class="close fileuploadclose"
							style="color: white !important;" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<form action="" method="post" enctype="multipart/form-data">
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="risk_rating"
											style="font-size: 14px; font-weight: 600;">Import
											Category</label> <select id="category" name="category"
											class="form-control browser-default">
											<option value="">Choose</option>
											<option value="Organisation Import">Org chart</option>
											<option value="Scorecard Import">Scorecard</option>
											<option value="Initiative Import">Initiatives</option>
										</select><span id="categoryerror" style="color: red; display: none;">Kindly
											select category to upload a file</span>
									</div>
									<div class="col-md-6">
										<label for="risk_rating"
											style="font-size: 14px; font-weight: 600;">File</label> <input
											type="file" accept=".xlsx, .xls, .csv" class="form-control"
											id="importfile" name="importinitiative" /><span
											id="uploaderror" style="color: red; display: none;">Kindly
											upload a file</span>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- End of File Upload PopUp -->

		<section class="content">
			<div class="container-fluid">
				<div id="chart-container"></div>
			</div>
		</section>

		<!--#START NO LINK -->
		<div class="modal fade nolinkmodal" tabindex="-1" role="dialog"
			aria-labelledby="myLargeModalLabel_1" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header primaryheader">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-row">
							<h3>
								<center>No Link Avaiable</center>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--#END NO LINK -->
	</div>
	<!-- Plugins Js -->
	<script src="js/app.min.js"></script>
	<script src="js/widgets.js"></script>
	<script type="text/javascript"
		src="${contextroot}/js/knockout-3.5.0.js"></script>
	<script type="text/javascript"
		src="${contextroot}/js/daterangepicker.min.js"></script>

	<!-- Custom Js -->
	<script src="js/admin.js"></script>
	<script src="js/custom/jquery.orgchart.js"></script>
	<script src="js/custom/org_structure.js"></script>
	<!-- script>
		$(function(){
		  $('input[name="datePeriod"]').daterangepicker({
			    opens: 'left'
			    
			  }, function(start, end, label) {
			    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
			  });
		});
		</script-->

	<script type="text/javascript">
	
		$(document).on("keypress", ".required", function () {
			var elementVal = $(this).val();
			var currentElement = $(this);
			var spanerrorMsg = "This field is required";
			var attrID = $(currentElement).attr("id");
			var checkexistspan = $(currentElement).next().length;
			var minchar = 1;
			var maxchar = 200;
			if (attrID != undefined && attrID != "" && attrID == "email_add") {
				minchar = 6;
				maxchar = 200;
			}
			if (checkexistspan == 1) {
				$(currentElement).next().remove();
			}
			if (elementVal == undefined || elementVal == "" || elementVal == " " || elementVal == 0) {
				$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
			} else if (elementVal.length != 0 && elementVal != undefined && elementVal != "" && (elementVal.length < minchar || elementVal.length >= maxchar)) {
				spanerrorMsg = "This field length should be greater than " + minchar + " and less than " + maxchar;
				$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
			} else {
				if (checkexistspan == 1 && attrID != "email_add") {
					var currenttext = $(currentElement).next().text();
					$(currentElement).next().remove();
				}
			}

		}).on("keyup", ".required", function () {
			var elementVal = $(this).val();
			var currentElement = $(this);
			var spanerrorMsg = "This field is required";
			var attrID = $(currentElement).attr("id");
			var checkexistspan = $(currentElement).next().length;
			var minchar = 1;
			var maxchar = 200;
			if (attrID != undefined && attrID != "" && attrID == "email_add") {
				minchar = 6;
				maxchar = 200;
			}
			if (checkexistspan == 1) {
				$(currentElement).next().remove();
			}
			if (elementVal == undefined || elementVal == "" || elementVal == " " || elementVal == 0) {
				$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
			} else if (elementVal.length != 0 && elementVal != undefined && elementVal != "" && (elementVal.length < minchar || elementVal.length >= maxchar)) {
				spanerrorMsg = "This field length should be greater than " + minchar + " and less than " + maxchar;
				$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
			} else {
				if (checkexistspan == 1) {
					var currenttext = $(currentElement).next().text();
					$(currentElement).next().remove();
				}
			}
		});

		function getEmployeeObj() {
			var curr = $("#currency").find(':selected').attr('data-currency');
			var employeeObj = {
				"id": $("#org_new_id").val(),
				"name": $("#name_add").val(),
				"title": $('#desg_add').val(),
				"dept": $("#dept_add").val(),
				"email": $("#email_add").val(),
				"phoneNumber": $("#org_phone").val(),
				"kpiname": $("#org_kpiname").val(),
				"location": $("#location_add").val(),
				"currency": $("#currency").val(),
				"currencySymbol": curr,
				"image": $("#upload_link1").attr("src")
			}
			return employeeObj;
		}

		function getNewEmployeeObj() {
			var imagesrc = $("#upload_link2").attr("src");
			if (imagesrc == "images/media.png") {
				imagesrc = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABABAMAAABYR2ztAAAAIVBMVEXMzMyWlpbFxcWjo6O+vr63t7ecnJyqqqqbm5uxsbGampoKZyAaAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAAU0lEQVRIiWNgGAWjYBQMd8Bk7KCITGMAZqeAQgZ2zwAwjQ2wmYU6ArVDaGyA0aWTkYHBFEpjM0FpoaABUzGExqaAJdmBkYFdNQBMj4JRMAoGOwAAPNIL2qWeApgAAAAASUVORK5CYII=";
			}

			var employeeObj = {
				"name": $("#name_add1").val(),
				"title": $('#desg_add1').val(),
				"dept": $("#dept_add1").val(),
				"kpiname": $("#org_kpiname").val(),
				"email": $("#email_add1").val(),
				"location": $("#location_add1").val(),
				"image": imagesrc

			}
			return employeeObj;
		}

		function updateEmployee() {
			//console.log($("#upload_link1").attr("src"));
			var employeeObj = getEmployeeObj();
			var validationFlag = formvalidationorg("#edit_org_structure_form");
			var emailaddress = $("#email_add").val();
			if (emailaddress == "" || emailaddress == undefined || emailaddress == " " || emailaddress == 0) {
				$("#emailerrorshow").css('display', 'block').html("This field is required");
				validationFlag = true;
			} else {
				$("#emailerrorshow").css('display', 'none').html("");
			}

			if (validationFlag == true) {
				return false;
			}
			/*var drogdropid 	=	$("#currentimgdivid").val();
			if(drogdropid !=	undefined && drogdropid !=	""){
				$("div #"+drogdropid).find(".org_box_top img").attr('src',employeeObj.image);
			}*/
			var emailaddress = $("#email_add").val();
			if (emailaddress != "" && emailaddress != undefined && emailaddress != " " && emailaddress != 0) {
				if (!validateEmail(emailaddress)) {
					$("#emailerrorshow").css('display', 'block').html("Please enter valid emailAddress");
					return false;
				} else {
					$("#emailerrorshow").css('display', 'none').html("");
				}
			}

			var methodType = 'post';
			$.ajax({
				url: "/stratroom/editEmployee/",
				type: methodType,
				contentType: "application/json",
				data: JSON.stringify(employeeObj),
				success: function (data, status) {
					location.reload(true);
					//updateemployeeaftercall(employeeObj.image,employeeObj.id);
					$("#close-org-aside").click();
				},
				error: readErrorMsg
			});
		}


		$(document).on('keydown', function (e) {
			if (e.keyCode === 27) { // ESC
				$("#close-org-aside").click();
			}
		});

		$(document).on('blur', "#email_add", function () {
			var emailAddredd = $(this).val();
			var currentElement = $(this);
			var empId = $("#org_new_id").val();
			var checkexistspan = $(currentElement).next().length;
			if (checkexistspan == 1 && (emailAddredd == "" || emailAddredd == undefined || emailAddredd == " " || emailAddredd == 0)) {
				$(currentElement).next().text('');
			}

			if (emailAddredd != "" && emailAddredd != undefined) {
				var addBtn = $("#edit-org-object");
				$(addBtn).attr("disabled", true).css("cursor", "not-allowed");
				$("#emailerrorshow").css('display', 'block');
				$.ajax({
					url: "checkEmail?email=" + emailAddredd + "&empId=" + empId,
					contentType: "application/json",
					async: false,
					success: function (data) {
						if (data.success != undefined && data.success != "") {
							$(addBtn).removeAttr("disabled").css("cursor", "pointer");
							$("#emailerrorshow").css('display', 'none').html("");
						} else {
							$("#emailerrorshow").css('display', 'block').html("Email address is already taken");
						}
					}
				});
			}
		});

		$(document).on('blur', "#email_add1", function () {
			var emailAddredd = $(this).val();
			var currentElement = $(this);
			var empId = $("#org_new_id1").val();
			var checkexistspan = $(currentElement).next().length;
			if (checkexistspan == 1 && (emailAddredd == "" || emailAddredd == undefined || emailAddredd == " " || emailAddredd == 0)) {
				$(currentElement).next().text('');
			}

			if (emailAddredd != "" && emailAddredd != undefined) {
				var addBtn = $("#add-org-object");
				$(addBtn).attr("disabled", true).css("cursor", "not-allowed");
				$("#emailerrorshow1").css('display', 'block');
				$.ajax({
					url: "checkEmail?email=" + emailAddredd + "&empId=" + empId,
					contentType: "application/json",
					async: false,
					success: function (data) {
						if (data.success != undefined && data.success != "") {
							$(addBtn).removeAttr("disabled").css("cursor", "pointer");
							$("#emailerrorshow1").css('display', 'none').html("");
						} else {
							$("#emailerrorshow1").css('display', 'block').html("Email address is already taken");
						}
					}
				});
			}
		});


		$("#edit-org-object").mouseover(function () {
			if ($("#email_add").is(":focus")) {
				$("#email_add").trigger("blur");
			}
		});

		$("#add-org-object").mouseover(function () {
			if ($("#email_add1").is(":focus")) {
				$("#email_add1").trigger("blur");
			}
		});

		/*$("#email_add").blur(function(){
			if($("#email_add").val().length >= 6){
				if($("#email_add").is(":focus")){
					$("#email_add").trigger("blur");
				}
			}
		});*/

		function formvalidationorg(formElement) {
			var validationFlag = false;
			$(formElement + " .required").each(function (index, value) {
				var spanerrorMsg = "This field is required";
				var elementVal = $(this).val();
				var currentElement = $(this);
				var attrID = $(currentElement).attr("id");
				var checkexistspan = $(currentElement).next().length;
				var minchar = 3;
				var maxchar = 200;
				/*if(checkexistspan 	==	1){
					$(currentElement).next().remove();
				}*/

				if (attrID != undefined && attrID != "" && attrID == "email_add") {
					minchar = 6;
					maxchar = 200;
				}

				if (elementVal == undefined || elementVal == "" || elementVal == " " || elementVal == 0) {
					$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
					validationFlag = true;
				} else if (elementVal.length != 0 && elementVal != undefined && elementVal != "" && (elementVal.length < minchar || elementVal.length >= maxchar)) {
					spanerrorMsg = "This field length should be greater than " + minchar + " and less than " + maxchar;
					$(currentElement).after('<span style="color: red">' + spanerrorMsg + '</span>');
					validationFlag = true;
				} else {
					if (checkexistspan == 1 && attrID != "email_add") {
						$(currentElement).next().remove();
					}
				}

			});
			return validationFlag;
		}

		function createEmployee() {

			var validationFlag = formvalidationorg("#add_org_structure_form");
			var emailaddress = $("#email_add1").val();
			if (emailaddress == "" || emailaddress == undefined || emailaddress == " " || emailaddress == 0) {
				$("#emailerrorshow1").css('display', 'block').html("This field is required");
				validationFlag = true;
			} else {
				$("#emailerrorshow1").css('display', 'none').html("");
			}

			if (validationFlag == true) {
				return false;
			}

			var emailaddress = $("#email_add1").val();
			if (emailaddress != "" && emailaddress != undefined && emailaddress != " " && emailaddress != 0) {
				if (!validateEmail(emailaddress)) {
					$("#emailerrorshow1").css('display', 'block').html("Please enter valid emailAddress");
					return false;
				} else {
					$("#emailerrorshow1").css('display', 'none').html("");
				}
			}

			var employeeObj = getNewEmployeeObj();
			employeeObj.pid = $("#org_new_id").val();
			var methodType = 'post';
			$.ajax({
				url: "/stratroom/createEmployee/",
				type: methodType,
				contentType: "application/json",
				data: JSON.stringify(employeeObj),
				success: function (data, status) {
					console.log("employee hass been created..");
					callaftercreatedemployee(employeeObj.image, data.employeeId);
					$("#close-org-aside1").click();
				},
				error: readErrorMsg
			});
		}

		function validateEmail(email) {
			var regexPattern = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return regexPattern.test(String(email).toLowerCase());
		}

	</script>
	<script>
	
	
		$(document).on("change", "#importorgstructure", function (e) {
			e.preventDefault();
			var formdata = new FormData();
			if ($(this).prop('files').length > 0) {
				file = $(this).prop('files')[0];
				formdata.append("employeedata", file);
			}
			$(".page-loader-wrapper").css("display", "block");
			$.ajax({
				url: "/stratroom/createBulkEmployee",
				type: "POST",
				data: formdata,
				processData: false,
				contentType: false,
				success: function (data, status) {
					$(this).val('');
					location.reload(true);
					$(".page-loader-wrapper").css("display", "none");
					$.notify(data);
				},
				error: function (msg, status) {
					$(this).val('');
					$(".page-loader-wrapper").css("display", "none");
					if (!jQuery.isEmptyObject(msg.responseText)) {
						var errorparse = JSON.parse(msg.responseText);
						if (errorparse.status == "404") {
							$.notify("Error:" + errorparse.exception, "error");
						} else {
							$.notify("Error:" + errorparse.exception, "error");
						}
					}
				}
			});

		});
		$(document).on("change", "#importfile", function (e) {
			e.preventDefault();
			$("#categoryerror").css("display", "none");
			$("#uploaderror").css("display", "none");

			var category = $("#category").val();
			if (category == "") {
				$("#categoryerror").css("display", "block");
				return false;
			}
			var formdata = new FormData();
			var url = "";
			var element = $("#importfile");
			if (category == "Organisation Import") {
				url = "/stratroom/createBulkEmployee";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("employeedata", file);
				}
			} else if (category == "Initiative Import") {
				url = "/stratroom/importBulkInitiativesDetails";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("initiativeData", file);
				}
			} else if (category == "Scorecard Import") {
				url = "/stratroom/saveScoreCardDetails";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("scoreCardData", file);
				}
			}

			if (element.prop('files').length == 0) {
				$("#uploaderror").css("display", "block");
				return false;
			}
			$(".page-loader-wrapper").css("display", "block");
			$.ajax({
				url: url,
				type: "POST",
				data: formdata,
				processData: false,
				contentType: false,
				success: function (data, status) {
					$(".fileuploadclose").trigger('click');
					$(".page-loader-wrapper").css("display", "none");
					$.notify(data.result);
					setTimeout(function () {
						location.reload(true);
					}, 3000);

				},
				error: function (msg, status) {
					$(".fileuploadclose").trigger('click');
					$(".page-loader-wrapper").css("display", "none");
					if (!jQuery.isEmptyObject(msg.responseText)) {
						var errorparse = JSON.parse(msg.responseText);
						if (errorparse.status == "404") {
							$.notify("Error:" + errorparse.exception, "error");
						} else {
							$.notify("Error:" + errorparse.exception, "error");
						}
					}
				}
			});

		});

		$(document).on("change", "#category", function (e) {
			e.preventDefault();
			$("#categoryerror").css("display", "none");
			$("#uploaderror").css("display", "none");

			var category = $("#category").val();
			if (category == "") {
				$("#categoryerror").css("display", "block");
				return false;
			}
			var formdata = new FormData();
			var url = "";
			var element = $("#importfile");
			if (category == "Organisation Import") {
				url = "/stratroom/createBulkEmployee";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("employeedata", file);
				}
			} else if (category == "Initiative Import") {
				url = "/stratroom/importBulkInitiativesDetails";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("initiativeData", file);
				}
			} else if (category == "Scorecard Import") {
				url = "/stratroom/saveScoreCardDetails";
				if (element.prop('files').length > 0) {
					file = element.prop('files')[0];
					formdata.append("scoreCardData", file);
				}
			}

			if (element.prop('files').length == 0) {
				$("#uploaderror").css("display", "block");
				return false;
			}

			$(".page-loader-wrapper").css("display", "block");
			$.ajax({
				url: url,
				type: "POST",
				data: formdata,
				processData: false,
				contentType: false,
				success: function (data, status) {
					$(".fileuploadclose").trigger('click');
					$(".page-loader-wrapper").css("display", "none");
					$.notify(data);
					setTimeout(function () {
						location.reload(true);
					}, 3000);

				},
				error: function (msg, status) {
					$(".fileuploadclose").trigger('click');
					$(".page-loader-wrapper").css("display", "none");
					if (!jQuery.isEmptyObject(msg.responseText)) {
						var errorparse = JSON.parse(msg.responseText);
						if (errorparse.status == "404") {
							$.notify("Error:" + errorparse.exception, "error");
						} else {
							$.notify("Error:" + errorparse.exception, "error");
						}
					}
				}
			});

		});


		$(".orgimportbtn").click(function () {
			$("#importfile").val('');
			$("#category").val('');
		});

		$(".fileuploadclose").click(function () {
			$("#importfile").val('');
			$('.file_upload_popup').modal('toggle');
		});

		$('.file_upload_popup').modal({ show: false, backdrop: 'static', keyboard: false });




		var file;

		function readFile(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				file = input.files[0];
				reader.onload = function () {
					var htmlPreview =
						'<div class="box-body-border">' +
						'<img width="20" src="images/file-icon.png"/>' +
						"<span>" + input.files[0].name + "</span>" +
						"<span><i class='fa fa-times remove-preview'></i></span>" +
						"</div>";
					var wrapperZone = $(input).parent();
					var previewZone = $(input).parent().parent().find(".preview-zone");
					var boxZone = $(input)
						.parent()
						.parent()
						.find(".preview-zone")
						.find(".box")
						.find(".box-body");
					wrapperZone.removeClass("dragover");
					previewZone.removeClass("hidden");
					boxZone.empty();
					boxZone.append(htmlPreview);
					removeFile();
				};
				reader.readAsDataURL(input.files[0]);
			}
		}

		function reset(e) {
			e.wrap("<form>").closest("form").get(0).reset();
			e.unwrap();
		}

		$(".dropzone").change(function () {
			readFile(this);
		});

		$(".dropzone-wrapper").on("dragover", function (e) {
			e.preventDefault();
			e.stopPropagation();
			$(this).addClass("dragover");
		});

		$(".dropzone-wrapper").on("dragleave", function (e) {
			e.preventDefault();
			e.stopPropagation();
			$(this).removeClass("dragover");
		});

		function removeFile() {
			$(".remove-preview").on("click", function () {
				var boxZone = $(this).parents(".preview-zone").find(".box-body");
				var previewZone = $(this).parents(".preview-zone");
				var dropzone = $(this).parents(".form-group").find(".dropzone");
				boxZone.empty();
				console.log("done");
				previewZone.addClass("hidden");
				reset(dropzone);
			});
		}
		
		var category ='';

		$("#next-btn-1").click(function () {
			$(".uploadvalidationSuccess").empty();
			 category = $("#category").val();
			 	 
			var Url ='';
			$("#file-upload").hide();
			if (category == "Organisation Import"){				
				$("#file-validate").show();
			} else if (category == "Initiative Import" || category == "Scorecard Import") {				
				$("#file-validate1").show();
			} else {
				$("#file-validate").show();
			}
			$("#file-save").hide();
			$(".form-progressbar li:nth-child(1)").addClass("active");
			var formdata = new FormData();
			$(".page-loader-wrapper").css("display", "block");
			
			if (category == "ETLUpload") {
				$(".page-loader-wrapper").css("display", "none");
			}else if (category == "Initiative Import") {
				formdata.append("initiativeData", file);	
				Url = "/stratroom/importBulkInitiativesDetails?type=validation";				
			} else if (category == "Scorecard Import") {
				formdata.append("scoreCardData", file);	
				Url = "/stratroom/saveScoreCardDetails?type=validation";				
			}  else if (category == "Organisation Import") {
				formdata.append("employeedata", file);	
				Url = "/stratroom/createBulkEmployee?type=validation";
			}
			
			if(category !="ETLUpload"){
				$.ajax({
					url: Url,
					type: "POST",
					data: formdata,
					processData: false,
					contentType: false,
					success: function (data, status) {				
						if (category == "Initiative Import") {
							initiativeUploadNotFoundData(data.parsingError);
						} else if (category == "Scorecard Import") {
							scorecardUploadNotFoundData(data.parsingError);
						} else if (category == "Organisation Import"){
							orgStructureUploadNotFoundData(data.parsingError);
						}
						$(".page-loader-wrapper").css("display", "none");		
					},
				});
			} else {							
				$.ajax({
					url: Url,
					type: "POST",
					data: formdata,
					processData: false,
					contentType: false,
					success: function (data, status) {							
						var validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
						'<button class="initative_save_btn pull-right" id="next-btn-2" style="font-weight: 600;">Next</button>';					
						$("#validateImportHide").append(validateImport);
						$(".page-loader-wrapper").css("display", "none");			
					},
				});	
			}
		});

		
		
		
		$(document).on('click', '#next-btn-2', function() {		
			$("#file-upload").hide();		
			$("#file-validate").hide();
			$("#file-validate1").hide();
			$("#file-save").show();
			$(".form-progressbar li:nth-child(2)").addClass("active");
			var formdata = new FormData();
			var url = "";
			var category = $("#category").val();
			$(".page-loader-wrapper").css("display", "block");
			if (category == "ETLUpload") {
				formdata.append("etlFile", file);	
				url = "/stratroom/uploadETLFile";
			}else if (category == "Initiative Import") {
				formdata.append("initiativeData", file);	
				url = "/stratroom/importBulkInitiativesDetails?type=save";				
			} else if (category == "Scorecard Import") {
				formdata.append("scoreCardData", file);	
				url = "/stratroom/saveScoreCardDetails?type=save";				
			} else{
				formdata.append("employeedata", file);	
				url = "/stratroom/createBulkEmployee?type=save";
			}
			
			
			$.ajax({
				url:url ,
				type: "POST",
				data: formdata,
				processData: false,
				contentType: false,
				success: function (data, status) {
					console.log(data);
					$(".page-loader-wrapper").css("display", "none");
				},
			});
		});

		
		$(document).on('click', '#prev-btn1', function() {					
			$("#file-upload").show();
			$("#file-validate").hide();
			$("#file-save").hide();
			$(".form-progressbar li:nth-child(1)").removeClass("active");
		});
		
		
		$(document).on('click', '#prev-btn2', function() {			
			$("#file-upload").hide();
			if (category == "Organisation Import"){				
				$("#file-validate").show();
			} else if (category == "Initiative Import" || category == "Scorecard Import") {				
				$("#file-validate1").show();
			} else {
				$("#file-validate").show();
			}			
			$("#file-save").hide();
			$(".form-progressbar li:nth-child(2)").removeClass("active");
		});


		function orgStructureUploadNotFoundData(result) {
			var orgstructure_import_error;
			var validateImport;
			$("#validateImportHide").empty();
			$.each(result, function (i, List) {
				orgstructure_import_error = '<tr>' +
					'<td style="width: 200px; text-align: center;">' + List.rowNo + '</td>' +
					'<td style="width: 300px; text-align: center;">' + List.columnName + '</td>' +
					'<td style="width: 300px; text-align: center;">' + List.error + '</td>' +
					'</tr>';
				$(".uploadvalidationSuccess").append(orgstructure_import_error);
			});
			
			if(result != undefined){	
				$("#imagevalidate1").attr("src","images/Not-Verified.png");
				$(".error-div").show();

				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
					'<button class="initative_save_btn pull-right checkbuttoncolor" id="next-btn-2" style="font-weight: 600;" disabled>Next</button>';		
			} else {	
				$(".error-div").hide();
				$("#imagevalidate1").attr("src","images/Success.png");
				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
				'<button class="initative_save_btn pull-right" id="next-btn-2" style="font-weight: 600;">Next</button>';
			}
				
			$("#validateImportHide").append(validateImport);
		}

		function initiativeUploadNotFoundData(result) {
			var initiative_import_error;
			var validateImport;
			$("#validatescoreCardImportHide").empty();
			$.each(result, function (i, List) {
				initiative_import_error = '<tr>' +
					'<td style="width: 150px; text-align: center;">' + List.Excel_SheetName + '</td>' +			
					'<td style="width: 150px; text-align: center;">' + List.rowNo + '</td>' +
					'<td style="width: 150px; text-align: center;">' + List.highLightcellName + '</td>' +
					'<td style="width: 250px; text-align: center;">' + List.error + '</td>' +
					'</tr>';
				$(".uploadvalidationSuccess").append(initiative_import_error);
			});	
			
			if(result != undefined){	
				$("#imagevalidate").attr("src","images/Not-Verified.png");
				$(".error-div").show();

				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
					'<button class="initative_save_btn pull-right checkbuttoncolor" id="next-btn-2" style="font-weight: 600;" disabled>Next</button>';		
			} else {	
				$(".error-div").hide();
				$("#imagevalidate").attr("src","images/Success.png");
				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
				'<button class="initative_save_btn pull-right" id="next-btn-2" style="font-weight: 600;">Next</button>';
			}			
			$("#validatescoreCardImportHide").append(validateImport);
				
			
		}
		
		function scorecardUploadNotFoundData(result) {
			var scorecard_import_error = '';
			var validateImport = '';
			$("#validatescoreCardImportHide").empty();
			$.each(result, function (i, List) {
				scorecard_import_error = '<tr>' +
					'<td style="width: 150px; text-align: center;">' + List.Excel_SheetName + '</td>' +
					'<td style="width: 150px; text-align: center;">' + List.rowNo + '</td>' +
					'<td style="width: 150px; text-align: center;">' + List.cellName + '</td>' +
					'<td style="width: 250px; text-align: center;">' + List.error + '</td>' +
					'</tr>';
				$(".uploadvalidationSuccess").append(scorecard_import_error);
			});	
			
			if(result != undefined){	
				$("#imagevalidate").attr("src","images/Not-Verified.png");
				$(".error-div").show();

				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
					'<button class="initative_save_btn pull-right checkbuttoncolor" id="next-btn-2" style="font-weight: 600;" disabled>Next</button>';		
			} else {	
				$(".error-div").hide();
				$("#imagevalidate").attr("src","images/Success.png");
				 validateImport ='<button type="button" class="btn-default1 btn" id="prev-btn1" style="font-weight: 600;">Previous</button>'+
				'<button class="initative_save_btn pull-right" id="next-btn-2" style="font-weight: 600;">Next</button>';
			}	
			$("#validatescoreCardImportHide").append(validateImport);
		}
		
			
		$(document).on('click', '#done-btn', function() {					
			location.reload(true);
		});
		
	</script>
</body>