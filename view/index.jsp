<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>StratRoom</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,600,700&amp;display=swap"
	rel="stylesheet">
<link href="css/theme-07.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
		<div class="col-md-8 login-img"></div>
		<div class="col-md-4 content-area">
		<div class="logo-text">
            <img src="images/Startroom_Final logo-01_1.png" width="210" alt="Stratroom Logo"/>
        </div>
		
		<div class="heading">
            <span>The new age transformational platform that helps you</span>
            <h5>
              Breakaway from the communication gap across your Organization.
            </h5>
        </div>
		
		<div class="log-in">
            <h4>Sign In</h4>
            <form action="login-home" method="post" id="loginForm">
              <div>
                <input class="input-effect" required type="email" name="email" placeholder="Email Address"/>
                <input class="input-effect" required type="password" name="password" placeholder="Password"/>
                <span class="focus-border"></span>
              </div>
			  <span style="color:red;">
				<c:if test="${loginFlag != null}">
					<strong><c:out value="${loginFlag}" /></strong>
				</c:if>
			</span>
              <div class="row forgot-password-row">
                <div class="col-6 round">
                  <input type="checkbox" id="checkbox" />
                  <label for="checkbox"></label>
                  <span>Save Password</span>
                </div>
                <div class="col-6 forgot-password">
                  <span>Forgot Password?</span>
                </div>
              </div>
              <div class="button-div">
                <button class="btn form-control login_btn">SIGN IN</button>
              </div>
            </form>
            <div class="sso">
              <h4>OR</h4>
              <p>
                Sign In with <strong><a href="#">SSO</a></strong>
              </p>
            </div>
          </div>
		</div>
		<footer>
          Copyright &copy; <script>document.write(new Date().getFullYear())</script> <strong>StratRoom</strong>. All rights reserved.
        </footer>
		</div>
    </div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/js.cookie.min.js"></script>
	
	<script>
	$(document).ready(function() {
		var remember = Cookies.get('remember');
        if (remember == 'true') 
        {
            var email = Cookies.get('email');
            var password = Cookies.get('password');
            $("[name='email']").val(email);
            $("[name='password']").val(password);
            $("#checkbox").prop("checked","checked")
        }
	});
	
	$(".login_btn").on('click', function() {
		var savepassword	=	$("#checkbox").is(":checked");
		if(savepassword	==	true){
			var email 		= 	$("[name='email']").val();
            var password 	= 	$("[name='password']").val();
            Cookies.set('email', email, { expires: 14 });
            Cookies.set('password', password, { expires: 14 });
            Cookies.set('remember', true, { expires: 14 });  
		}else{
			Cookies.remove('remember');
		}
		
		localStorage.clear();
		$("#loginForm").submit();
	});
	</script>
</body>
</html>