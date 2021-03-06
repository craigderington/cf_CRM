	
	
	
	<!doctype html>
	<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
	<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
	<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
	<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">

		<title><cfoutput>#application.title#</cfoutput></title>
		
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

		<script src="js/libs/modernizr-2.5.3.min.js"></script>

	</head>

	<body class="login">
	
			<div class="account-container register stacked">
				
				<div class="content clearfix">
					<cfoutput>
					<form action="./#application.root#?event=action.register" method="post" name="register">
					
						<h1>Create Your Account</h1>
						
						
						<div class="login-fields">
							
							<p>Create your free account:</p>
							
							<div class="field">
								<label for="firstname">First Name:</label>
								<input type="text" id="firstname" name="firstname" value="" placeholder="First Name" class="login" />
							</div> <!-- /field -->
							
							<div class="field">
								<label for="lastname">Last Name:</label>	
								<input type="text" id="lastname" name="lastname" value="" placeholder="Last Name" class="login" />
							</div> <!-- /field -->
							
							
							<div class="field">
								<label for="email">Email Address:</label>
								<input type="text" id="email" name="email" value="" placeholder="Email" class="login"/>
							</div> <!-- /field -->
							
							<div class="field">
								<label for="password">Password:</label>
								<input type="password" id="password" name="password" value="" placeholder="Password" class="login"/>
							</div> <!-- /field -->
							
							<div class="field">
								<label for="confirm_password">Confirm Password:</label>
								<input type="password" id="confirm_password" name="confirm_password" value="" placeholder="Confirm Password" class="login"/>
							</div> <!-- /field -->
							
						</div> <!-- /login-fields -->
						
						<div class="login-actions">
							
							<span class="login-checkbox">
								<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
								<label class="choice" for="Field">I have read and agree with the Terms of Use.</label>
							</span>
												
							<button class="button btn btn-primary btn-large">Register</button>
							
						</div> <!-- // .actions -->
						
					</form>
					</cfoutput>
				</div> <!-- // .content -->
				
			</div> <!-- // .account-container -->


			<!-- Text Under Box -->
			<cfoutput>
				<div class="login-extra">
					Already have an account? <a href="./#application.root#?event=page.login">Login</a> <br />
					&copy; #Year(Now())#&nbsp;&nbsp;#application.title#&nbsp;&nbsp;&nbsp;#application.softver#
				</div> <!-- /login-extra -->
			</cfoutput>


			<!--- include some needed scripts for the registration page --->
			<script src="js/libs/jquery-1.7.2.min.js"></script>
			<script src="js/libs/jquery-ui-1.8.21.custom.min.js"></script>
			<script src="js/libs/jquery.ui.touch-punch.min.js"></script>
			<script src="js/libs/bootstrap/bootstrap.min.js"></script>
			<script src="js/signin.js"></script>

		</body>
	</html>
