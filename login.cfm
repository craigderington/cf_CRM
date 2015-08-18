		
		
		<!doctype html>
		<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
		<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
		<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
		<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
		
		
			<head>
				<meta charset="utf-8">
				<cfoutput>
				<title>#application.title#</title>
				</cfoutput>
				<meta name="description" content="">
				<meta name="author" content="">

				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
				<meta name="apple-mobile-web-app-capable" content="yes">
				
				<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,800">
				<link rel="stylesheet" href="css/font-awesome.css">
				
				<link rel="stylesheet" href="css/bootstrap.css">
				<link rel="stylesheet" href="css/bootstrap-responsive.css">

				<link rel="stylesheet" href="./css/ui-lightness/jquery-ui-1.8.21.custom.css">	
				
				<link rel="stylesheet" href="css/application.css">
				<link rel="stylesheet" href="msgGrowl.css" type="text/css" charset="utf-8" />
				

			</head>

			<body class="login">

				<div class="account-container login stacked">
					
					<cfif isdefined("REQUEST.badlogin")>
						<div class="alert alert-block alert-error fade in">
							<button type="button" class="close" data-dismiss="alert">×</button>
								<h4 class="alert-heading">Login Failed!</h4>
									<p>Sorry, your login credentials have failed.  Either your username and password was entered incorrectly.  Please try again...</p>
									
						</div>					
					</cfif>
					
					<div class="content clearfix">
						<cfoutput>
						<form action="#application.root#?event=page.index" method="post" name="loginform">
						
							<h1>Sign In</h1>		
							
							<div class="login-fields">
								
								<p>Sign in using your registered account:</p>
								
								<div class="field">
									<label for="username">Username:</label>
									<input type="text" id="username" name="j_username" placeholder="Username" class="login username-field" autocomplete="off"/>
									<input type="hidden" name="login" value="">
								</div> <!-- /field -->
								
								<div class="field">
									<label for="password">Password:</label>
									<input type="password" id="password" name="j_password" placeholder="Password" class="login password-field"/>
								</div> <!-- /password -->
								
							</div> <!-- /login-fields -->
							
							<div class="login-actions">
								
								<span class="login-checkbox">
									<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
									<label class="choice" for="Field">Keep me signed in</label>
								</span>
													
								<button class="button btn btn-primary btn-large">Sign In</button>
								
							</div> <!-- .actions -->							
						</form>
						</cfoutput>
					</div> <!-- /content -->
					
				</div> <!-- /account-container -->


				<!-- Text Under Box -->
				<cfoutput>
				<div class="login-extra">
					<!---Don't have an account? <a href="./signup.html">Sign Up</a><br/>--->
					Forgot Your <a href="#application.root#?event=forgot.password">Password</a>&nbsp;&nbsp; Register <a href="#application.root#?event=page.register">New User</a><br />
					&copy; #Year(Now())#&nbsp;&nbsp;#application.title#&nbsp;&nbsp;&nbsp;#application.softver#
				</div> <!-- /login-extra -->
				</cfoutput>


				<!--- A few scripts we need for the login page --->
				<script src="js/libs/jquery-1.7.2.min.js"></script>
				<script src="js/libs/jquery-ui-1.8.21.custom.min.js"></script>
				<script src="js/libs/jquery.ui.touch-punch.min.js"></script>
				<script src="js/libs/bootstrap/bootstrap.min.js"></script>
				<script src="js/signin.js"></script>
				<script src="js/plugins/msgbox/jquery.msgbox.min.js"></script>
				<script src="js/demos/demo.bonus.js"></script>
				<script src="js/libs/modernizr-2.5.3.min.js"></script>
				<script src="js/plugins/msgGrowl/js/msgGrowl.js"></script>

			</body>
		</html>
