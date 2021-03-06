<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <title>StratRoom</title>
    <!-- Favicon-->
    <!-- <link rel="icon" href="../../assets/images/favicon.ico" type="image/x-icon"> -->
    <!-- Plugins Core Css -->
    <link href="../../assets/css/app.min.css" rel="stylesheet">
    <!-- Custom Css -->
    <link href="../../assets/css/style.css" rel="stylesheet" />
    <!-- <link href="../../assets/css/startroom/wedgets.css" rel="stylesheet" /> -->
    <link href="../../assets/css/startroom/org.css" rel="stylesheet" />
    <!-- You can choose a theme from css/styles instead of get all themes -->
    <link href="../../assets/css/styles/all-themes.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../assets/css/jquery.treegrid.css">
    <link rel="stylesheet" href="../../assets/css/bootstrap-treefy.css">
    <!-- <link rel="stylesheet" href="../../assets/jquery.comiseo.daterangepicker.css"> -->
    <link href="../../assets/jquery-ui.min.css" rel="stylesheet">
    <link href="../../assets/daterangepicker/daterangepicker.min.css" rel="stylesheet">
    <link href="../../assets/css/org_structure_kpi.css" rel="stylesheet">
    <style>
        html,
        body {
            font-family: poppins;
            color: #333333;
            background-image: url(http://dabeng.github.io/OrgChart/img/background.jpg);
        }
    </style>
</head>


<body class="light">

    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30">
                <!-- <img class="loading-img-spin" src="../../assets/images/loading.png" alt="admin"> -->
                <img width="100" src="../../assets/images/logo_1.gif" alt="admin">
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- <div>
        <img src="../../assets/images/.png" alt="">
    </div> -->
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="#" onClick="return false;" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="#" onClick="return false;" class="bars"></a>
                <a href="#" onClick="return false;" class="bar_nav sidemenu-collapse"><i class="nav-hdr-btn ti-menu" style="color: #000"></i></a>
                <a class="navbar-brand nav_float" href="#">
                    <img src="../../assets/images/Startroom_Final logo-01_1.png" alt="">
                    <!-- <span class="logo-name">Img</span> -->
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="fullscreen" style="padding: 4px;left: -14px;">
                        <ul class="list-unstyled order-list">
                            <li class="avatar avatar-sm">
                                <img class="rounded-circle" src="../../assets/images/user/user7.jpg" alt="user">
                            </li>
                            <li class="avatar avatar-sm">
                                <img class="rounded-circle" src="../../assets/images/user/user8.jpg" alt="user">
                            </li>
                            <li class="avatar avatar-sm">
                                <img class="rounded-circle" src="../../assets/images/user/user9.jpg" alt="user">
                            </li>
                            <li class="avatar avatar-sm">
                                <img class="rounded-circle" src="../../assets/images/user/user9.jpg" alt="user">
                            </li>
                            <li _ngcontent-hhc-c5="" class="avatar avatar-sm"><span _ngcontent-hhc-c5="" class="badge">+3</span></li>
                        </ul>
                    </li>
                    <li class="fullscreen">
                        <form class="form-header" action="" method="POST">
                            <input class="au-input au-input--xl" style="min-width: 20%" type="text" name="search" placeholder="Search">
                            <button class="au-btn--submit" type="submit">
                        <i class="fa fa-search" style="color:gray"></i>
                        </button>
                        </form>
                    </li>
                    <li class="fullscreen">
                        <!-- <a href="" class=""> -->
                        <!-- <i class="nav-hdr-btn ti-calendar" style="color: gray"></i> -->
                        <!-- <input id="e4" name="e4"> -->
                        <input class="daterangepicker-field top_datepicker"></input>

                        <!-- </a> -->
                    </li>
                    <!-- #END# Full Screen Button -->
                    <!-- #START# Notifications-->
                    <li class="dropdown">
                        <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="nav-hdr-btn ti-bell" style="color: gray"></i>
                            <span class="notify"></span>
                            <span class="heartbeat"></span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown" role="button">
                            <i class="nav-hdr-btn ti-settings" style="color: gray"></i>
                            <span class="notify"></span>
                            <span class="heartbeat"></span>
                        </a>
                    </li>
                    <!-- #END# Notifications-->
                    <li class="">
                        <a href="#" onclick="return false;" class=" dropdown-toggle js-right-sidebar" data-close="true">
                            <!-- <img src="../../assets/images/user.jpg" alt="user"> -->
                            <i class="fas fa-user-circle"></i> </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <div>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="active">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-home"></i>
                            <span>Organisation Structure</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-image"></i>
                            <span>Dashboards</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="#">BSC Dashboard</a>
                            </li>
                            <li>
                                <a href="#">Strategy Map</a>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-bar-chart"></i>
                            <span>Charts</span>
                        </a>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-key"></i>
                            <span>Users & Access</span>
                        </a>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-vector"></i>
                            <span>Workflows</span>
                        </a>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-bell"></i>
                            <span>Notifications & Alerts</span>
                        </a>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-server"></i>
                            <span>Data Management</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" onClick="return false;" class="menu-toggle">
                            <i class="menu-icon ti-layout-media-right-alt"></i>
                            <span>Template Management</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="#" id="sub-menu" onClick="return false;" class="menu-toggle">
                                        Scorecard Layouts
                                    </a>
                                <ul class="ml-menu">
                                    <li><a href="#">Standard BSC View</a></li>
                                    <li><a href="#">Dashboard View</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" id="sub-menu" onClick="return false;" class="menu-toggle">
                                    Initiative
                                    </a>
                                <ul class="ml-menu">
                                    <li><a href="#">Sub Initiatives</a></li>
                                    <li><a href="#">Tasks</a></li>
                                    <li><a href="#">Activities</a></li>
                                    <li><a href="#">Milestones</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Reports Table</a>
                            </li>
                            <li>
                                <a href="#" id="sub-menu" onClick="return false;" class="menu-toggle">
                                    Comments
                                    </a>
                                <ul class="ml-menu">
                                    <li><a href="#">Comments & Observations</a></li>
                                    <li><a href="#">Proof of Evidence</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Employee Layout</a>
                            </li>
                            <li>
                                <a href="#">Appraisal</a>
                            </li>
                            <li>
                                <a href="#">Data Collection Form</a>
                            </li>
                        </ul>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-home"></i>
                            <span>Widget Management</span>
                        </a>
                    </li>

                    <li class="">
                        <a href="#" onClick="return false;" class="">
                            <i class="menu-icon ti-pie-chart"></i>
                            <span>Reports</span>
                        </a>
                    </li>

                </ul>
            </div>
            <!-- #Menu -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar open">
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane in active in active stretchLeft" id="skins">
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto;">
                        <div class="demo-skin" style="overflow: hidden; width: auto; height: auto;">
                            <div class="rightSetting">
                                <p class="left">Profile</p>
                                <a href="#">
                                    <p class="right editProfile">Edit</p>
                                    <p class="right editProfile"></p>
                                </a>
                                <ul class="setting-list profile-default list-unstyled m-t-20 center">
                                    <!-- <li class="center">
                                            <i class="fas fa-user-circle" style="font-size: 110px"></i>
                                        </li> -->
                                    <li _ngcontent-hhc-c5="" class="center avatar avatar-sm" style="width:85px">
                                        <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                                    </li>
                                    <li>
                                        <p class="center name">Karthick, C001</p>
                                    </li>
                                    <li>
                                        <p class="center grey1">Manager, Chennai, TN, India</p>
                                    </li>
                                    <li>
                                        <p class="center grey1">karthick@stratroom.com</p>
                                    </li>
                                </ul>
                                <ul class="setting-list profile-replace list-unstyled m-t-20" style="display: none">
                                    <li class="center">
                                        <form id="profileForm">
                                            <div class="form-group">
                                                <div class="form-line profile-pic">
                                                    <!-- <i  class="fas fa-user-circle" style="font-size: 100px; opacity:0.5"></i> -->
                                                    <li id="profileImage" _ngcontent-hhc-c5="" class="center avatar avatar-sm" style="width:85px; z-index:-1">
                                                        <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                                                    </li>
                                                    <input id="imageUpload" type="file" name="profile_photo" placeholder="Photo" required="" capture="">
                                                    <div class="edit"><a href="#"><i class="fa fa-pencil-alt"></i></a></div>
                                                </div>
                                                <div class="form-line">
                                                    <label for="name" class="left">Name</label>
                                                    <input type="text" name="name" class="form-control">
                                                </div>
                                                <div class="form-line">
                                                    <label for="id" class="left">Employee ID</label>
                                                    <input type="text" name="id" class="form-control">
                                                </div>

                                                <div class="form-line">
                                                    <label for="title" class="left">Title</label>
                                                    <input type="text" name="title" class="form-control">
                                                </div>

                                                <div class="form-line">
                                                    <label for="email" class="left">Email</label>
                                                    <input type="email" name="email" class="form-control">
                                                </div>

                                                <div class="form-line">
                                                    <label for="location" class="left">Location</label>
                                                    <input type="text" name="location" class="form-control">
                                                </div>

                                                <div class="form-line center">
                                                    <button class="btn-default1 btn cancelEditProfile" value="Cancel">Cancel</button>
                                                    <button class="btn-default btn-black" value="Submit">Submit</button>
                                                </div>

                                            </div>
                                        </form>
                                    </li>
                                    <li>
                                        <!-- <p class="center name">Karthick</p> -->
                                    </li>
                                </ul>
                            </div>

                            <div class="row clearfix">
                                <!-- Basic Examples -->
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="">
                                        <div class="body">
                                            <div class="row clearfix">
                                                <div class="col-xs-12 ol-sm-12 col-md-12 col-lg-12">
                                                    <div class="panel-group" id="accordion_1" role="tablist" aria-multiselectable="true">
                                                        <div class="panel">
                                                            <div class="panel-heading profile_report" role="tab" id="headingOne_1">
                                                                <h4 class="panel-title">
                                                                    <a role="button" data-toggle="collapse" data-parent="#accordion_1" href="#collapseOne_1" aria-expanded="true" aria-controls="collapseOne_1">
                                                                            Reporting To
                                                                        </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne_1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_1">
                                                                <div class="panel-body profile_edit">
                                                                    <div class="rightSetting">
                                                                        <!-- <p class="left">Reporting To</p> -->
                                                                        <a href="#" id="reportingAdd">
                                                                            <p class="right">Add</p>
                                                                        </a>
                                                                        <ul class="setting-list reporting-default list-unstyled m-t-20">
                                                                            <li class="row reportingRow">
                                                                                <div class="col-md-3 p-b-10">
                                                                                    <!-- <li id="profileImage" _ngcontent-hhc-c5="" class="center avatar avatar-sm" style="width:85px; z-index:-1"> -->
                                                                                    <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                                                                                    <!-- </li> -->
                                                                                </div>
                                                                                <div class="col-md-7 p-t-5">
                                                                                    <p class="center name">Arun</p>
                                                                                    <p class="center grey1">Developer</p>

                                                                                </div>
                                                                                <div class="col-md-1" style="float: right;">
                                                                                    <a href="#" class="reportingEdit"><i class="fas fa-pencil-alt" style="font-size: 14px"></i></a>
                                                                                </div>
                                                                            </li>
                                                                            <li class="row reportingRow">
                                                                                <div class="col-md-3 p-b-10">
                                                                                    <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig8.jpg">
                                                                                </div>
                                                                                <div class="col-md-7 p-t-5">
                                                                                    <p class="center name">Santhosh</p>
                                                                                    <p class="center grey1">CTO</p>
                                                                                </div>
                                                                                <div class="col-md-1" style="float: right;">
                                                                                    <a href="#" class="reportingEdit"><i class="fas fa-pencil-alt" style="font-size: 14px"></i></a>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="setting-list reporting-replace-add list-unstyled m-t-20" style="display:none">
                                                                            <li class="row">
                                                                                <form id="reportingAddForm">
                                                                                    <div class="form-group">
                                                                                        <div class="form-line center profile-pic">
                                                                                            <img _ngcontent-hhc-c5="" alt="user" width="60" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                                                                                            <input id="reportingImageUpload" type="file" name="profile_photo1" placeholder="Photo" required="" capture="">
                                                                                            <div class="edit1"><a href="#"><i class="fa fa-pencil-alt"></i></a></div>
                                                                                        </div>
                                                                                        <div class="form-line">
                                                                                            <label for="name" class="left">Name</label>
                                                                                            <input type="text" name="name" class="form-control">
                                                                                        </div>
                                                                                        <div class="form-line">
                                                                                            <label for="title" class="left">Title</label>
                                                                                            <input type="text" name="title" class="form-control">
                                                                                        </div>

                                                                                        <div class="form-line center">
                                                                                            <button class="btn-default1 btn canceladdReporting" value="Cancel">Cancel</button>
                                                                                            <button class="btn-default btn-black" value="Submit">Submit</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </form>
                                                                            </li>
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
                            </div>
                            <div class="row clearfix">
                                <!-- Basic Examples -->
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="">
                                        <div class="body">
                                            <div class="row clearfix">
                                                <div class="col-xs-12 ol-sm-12 col-md-12 col-lg-12">
                                                    <div class="panel-group" id="accordion_2" role="tablist" aria-multiselectable="true">
                                                        <div class="panel">
                                                            <div class="panel-heading profile_direct" role="tab" id="headingOne_2">
                                                                <h4 class="panel-title">
                                                                    <a role="button" data-toggle="collapse" data-parent="#accordion_2" href="#collapseOne_2" aria-expanded="true" aria-controls="collapseOne_2">
                                                                            Direct Reportees
                                                                        </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne_2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_2">
                                                                <div class="panel-body profile_edit">
                                                                    <div class="rightSetting">
                                                                        <!-- <p class="left">Direct Reportees</p> -->
                                                                        <a href="#" id="directAdd">
                                                                            <p class="right">Add</p>
                                                                        </a>
                                                                        <ul class="setting-list direct-default list-unstyled m-t-20">
                                                                            <li class="row reportingRow">
                                                                                <div class="col-md-3 p-b-10">
                                                                                    <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig6.jpg">
                                                                                </div>
                                                                                <div class="col-md-7 p-t-5">
                                                                                    <p class="center name">Karthick</p>
                                                                                    <p class="center grey1">Manager</p>

                                                                                </div>
                                                                                <div class="col-md-1" style="float: right;">
                                                                                    <a href="#" class="directEdit"><i class="fas fa-pencil-alt" style="font-size: 14px"></i></a>
                                                                                </div>
                                                                            </li>
                                                                            <li class="row reportingRow">
                                                                                <div class="col-md-3 p-b-10">
                                                                                    <img _ngcontent-hhc-c5="" alt="user" width="110" class="rounded-circle" src="../../assets/images/user/usrbig9.jpg">
                                                                                </div>
                                                                                <div class="col-md-7 p-t-5">
                                                                                    <p class="center name">Naren</p>
                                                                                    <p class="center grey1">Designer</p>

                                                                                </div>
                                                                                <div class="col-md-1" style="float: right;">
                                                                                    <a href="#" class="directEdit"><i class="fas fa-pencil-alt" style="font-size: 14px"></i></a>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="setting-list direct-replace-add list-unstyled m-t-20" style="display:none">
                                                                            <li class="row">
                                                                                <form id="directAddForm">
                                                                                    <div class="form-group">
                                                                                        <div class="form-line center profile-pic">
                                                                                            <img _ngcontent-hhc-c5="" alt="user" width="60" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                                                                                            <input id="directImageUpload" type="file" name="profile_photo1" placeholder="Photo" required="" capture="">
                                                                                            <div class="edit1"><a href="#"><i class="fa fa-pencil-alt"></i></a></div>

                                                                                        </div>
                                                                                        <div class="form-line">
                                                                                            <label for="name" class="left">Name</label>
                                                                                            <input type="text" name="name" class="form-control">
                                                                                        </div>
                                                                                        <div class="form-line">
                                                                                            <label for="title" class="left">Title</label>
                                                                                            <input type="text" name="title" class="form-control">
                                                                                        </div>

                                                                                        <div class="form-line center">
                                                                                            <button class="btn-default1 btn canceladdDirect" value="Cancel">Cancel</button>
                                                                                            <button class="btn-default btn-black" value="Submit">Submit</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </form>
                                                                            </li>
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
                            </div>
                            <div class="row clearfix">
                                <!-- Basic Examples -->
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="">
                                        <div class="body">
                                            <div class="row clearfix">
                                                <div class="col-xs-12 ol-sm-12 col-md-12 col-lg-12">
                                                    <div class="panel-group" id="accordion_3" role="tablist" aria-multiselectable="true">
                                                        <div class="panel">
                                                            <div class="panel-heading profile_responsilities" role="tab" id="headingOne_3">
                                                                <h4 class="panel-title">
                                                                    <a role="button" data-toggle="collapse" data-parent="#accordion_3" href="#collapseOne_3" aria-expanded="true" aria-controls="collapseOne_3">
                                                                            My Responsibilities
                                                                        </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne_3" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne_3">
                                                                <div class="panel-body profile_edit">
                                                                    <ul class="ml-menu profile_accordion">
                                                                        <li>
                                                                            <a href="#">My KPI's</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">My Initiatives</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">My Activities</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">My Tasks</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="#">My Forms</a>
                                                                        </li>
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
                        </div>
                        <!-- <div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 6px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 0px; z-index: 99; right: 1px; height: 482px;"></div>
                            <div class="slimScrollRail" style="width: 6px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div> -->
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane stretchRight" id="settings">
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto;">
                        <div class="demo-settings" style="overflow: hidden; width: auto; height: auto;">
                            <p>GENERAL SETTINGS</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Report Panel Usage</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked="">
                                            <span class="lever switch-col-green"></span>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Email Redirect</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox">
                                            <span class="lever switch-col-blue"></span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                            <p>SYSTEM SETTINGS</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Notifications</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked="">
                                            <span class="lever switch-col-purple"></span>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Auto Updates</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked="">
                                            <span class="lever switch-col-cyan"></span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                            <p>ACCOUNT SETTINGS</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Offline</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked="">
                                            <span class="lever switch-col-red"></span>
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Location Permission</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox">
                                            <span class="lever switch-col-lime"></span>
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 6px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
                        <div class="slimScrollRail" style="width: 6px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation">
                    <a href="#skins" data-toggle="tab" class="active">SKINS</a>
                </li>
                <li role="presentation">
                    <a href="#settings" data-toggle="tab">SETTINGS</a>
                </li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane in active in active stretchLeft" id="skins">
                    <div class="demo-skin">
                        <div class="rightSetting">
                            <p>GENERAL SETTINGS</p>
                            <ul class="setting-list list-unstyled m-t-20">
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Save
                                                History
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Show
                                                Status
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Auto
                                                Submit Issue
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-check">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" value="" checked> Show
                                                Status To All
                                                <span class="form-check-sign">
                                                    <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="rightSetting">
                            <p>SIDEBAR MENU COLORS</p>
                            <button type="button" class="btn btn-sidebar-light btn-border-radius p-l-20 p-r-20">Light</button>
                            <button type="button" class="btn btn-sidebar-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
                        </div>
                        <div class="rightSetting">
                            <p>THEME COLORS</p>
                            <button type="button" class="btn btn-theme-light btn-border-radius p-l-20 p-r-20">Light</button>
                            <button type="button" class="btn btn-theme-dark btn-default btn-border-radius p-l-20 p-r-20">Dark</button>
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
                                    <div class="progress-bar l-bg-cyan shadow-style width-per-45" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <span class="progress-description">
                                    <small>26% remaining</small>
                                </span>
                            </div>
                        </div>
                        <div class="rightSetting m-b-15">
                            <p>Server Load</p>
                            <div class="sidebar-progress">
                                <div class="progress m-t-20">
                                    <div class="progress-bar l-bg-orange shadow-style width-per-63" role="progressbar" aria-valuenow="63" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <span class="progress-description">
                                    <small>Highly Loaded</small>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane stretchRight" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-green"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox">
                                        <span class="lever switch-col-blue"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-purple"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-cyan"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox" checked>
                                        <span class="lever switch-col-red"></span>
                                    </label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label>
                                        <input type="checkbox">
                                        <span class="lever switch-col-lime"></span>
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->


        <!-- START Add Org Structure Sidebar -->
        <aside id="Add_Org_Structure" class="add_org_structure-sidebar open">
            <!-- <form id="sub_initative_Form">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="sub_initative_desc">Description</label>
                        <input type="text" class="form-control browser-default" name="sub_initative_desc" id="kpi_id" placeholder="">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="sub_initative_progress">Progress</label>
                        <input type="text" class="form-control browser-default" name="sub_initative_progress" id="sub_initative_progress" placeholder="">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="sub_initative_start_end">Start / End Date</label>
                        <input type="text" class="form-control browser-default date_pickers" name="sub_initative_start_end" id="sub_initative_start_end" placeholder="">
                    </div>
                </div>
                <div class="form-line right">
                    <button type="button" class="btn-default1 btn" data-dismiss="modal" id="close-org-aside" aria-label="Close">Cancel</button>
                    <button class="initative_save_btn" value="Save">Save</button>
                </div>
            </form> -->

            <form id="sub_initative_Form">
                <div class="form-group">
                    <div class="form-line center profile-pic">
                        <img _ngcontent-hhc-c5="" alt="user" width="60" class="rounded-circle" src="../../assets/images/user/usrbig7.jpg">
                        <input id="reportingImageUpload" type="file" name="profile_photo1" placeholder="Photo" required="" capture="">
                        <div class="edit1"><a href="#"><i class="fa fa-pencil-alt"></i></a></div>
                    </div>
                    <div class="form-line">
                        <label for="name" class="left">Name</label>
                        <input type="text" name="name" id="name_add" class="form-control">
                    </div>
                    <div class="form-line">
                        <label for="name" class="left">Designation</label>
                        <input type="text" name="desg" id="desg_add" class="form-control">
                    </div>
                    <div class="form-line">
                        <label for="name" class="left">Dept</label>
                        <input type="text" name="dept" id="dept_add" class="form-control">
                    </div>
                    <div class="form-line">
                        <label for="title" class="left">KPI Name</label>
                        <input type="text" name="kpi_name" id="kpi_name_add" class="form-control">
                    </div>

                    <div class="form-line center">
                        <button class="btn-default1 btn canceladdReporting" id="close-org-aside" value="Cancel">Cancel</button>
                        <button class="btn-default btn-black" value="Submit">Add</button>
                    </div>
                </div>
            </form>

        </aside>
        <!-- #END# Add Org Structure Sidebar -->


        <section class="content">
            <div class="container-fluid">
                <div id="chart-container"></div>
            </div>
        </section>
    </div>
    <!-- Plugins Js -->
    <script src="../../assets/js/app.min.js"></script>
    <script src="../../assets/js/widgets.js"></script>
    <!-- Custom Js -->
    <script src="../../assets/js/admin.js"></script>
    <script src="../../assets/jquery.orgchart_kpi.js"></script>
    <script src="../../assets/js/org_structure_kpi.js"></script>
</body>