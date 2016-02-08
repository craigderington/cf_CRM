<cfcomponent
	displayname="Application"
	output="true"
	hint="Handle the application.">	
	
	<!--- Setup the application --->
	<cfscript>
       this.name = "efiscal3";
       this.applicationTimeout = createTimeSpan(0,2,0,0);
       this.clientmanagement= "yes";
       this.loginstorage = "session" ;
       this.sessionmanagement = "yes";
       this.sessiontimeout = createTimeSpan(0,2,0,0);
       this.setClientCookies = "yes";
       this.setDomainCookies = "no";
       this.scriptProtect = "all";    
   </cfscript>
	
 
	<!--- Define the page request properties. --->
	<cfsetting
		requesttimeout="120"
		showdebugoutput="true"
		enablecfoutputonly="false"
		/>
 
 
	<cffunction
		name="OnApplicationStart"
		access="public"
		returntype="boolean"
		output="false"
		hint="Fires when the application is first created.">	
		
		 <cfscript>
			//set your app vars for the application          
			application.dsn = "CDMG";
			application.title = "Customer Relationship Manager";
			application.bootver = "v 2.3.1";
			application.softver = "v 3.0.1";
			application.root = "index.cfm";
			application.sessions = 0;
		</cfscript>
 
		<!--- Return out. --->
		<cfreturn true />
	</cffunction>
 
 
	<cffunction
		name="OnSessionStart"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the session is first created.">
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnRequestStart"
		access="public"
		returntype="boolean"
		output="false"
		hint="Fires at first part of page processing.">
 
		<!--- Define arguments. --->
		<cfargument
			name="TargetPage"
			type="string"
			required="true"
			/>
			
			
			<cfif IsDefined("url.event") and url.event is "page.logout">
				<cflogout>
				<cfset onSessionEnd( session ) />				
			</cfif>
		
			<cflogin>
				<cfif NOT IsDefined("cflogin")>
					<cfinclude template="login.cfm">
					<cfabort>
				<cfelse>
					<cfif cflogin.name IS "" OR cflogin.password IS "">
						<cfset REQUEST.badlogin = true />
						<cfinclude template="login.cfm">
						<cfabort>
					<cfelse>
						<cfquery datasource="#application.dsn#" name="loginQuery">
							SELECT userID, username, password, roles
							  FROM dbo.Users
							 WHERE username = <cfqueryparam value="#cflogin.name#" cfsqltype="cf_sql_varchar" />
							   AND password = <cfqueryparam value="#cflogin.password#" cfsqltype="cf_sql_varchar" />
						</cfquery>
						<cfif loginQuery.userid NEQ "">
							<cfloginuser 
								name = "#cflogin.name#" 
								password = "#cflogin.password#" 
								roles="admin">
								<!--- Log this users activity to the database --->
								<cfquery datasource="#application.dsn#" name="logLoggedInUser">
									UPDATE dbo.Users
									   SET LastLoginDate = #CreateODBCDate(Now())#,
									       LastLoginIP = '#cgi.remote_addr#'
									 WHERE userID = <cfqueryparam value="#loginQuery.userID#" cfsqltype="cf_sql_integer" />									   
						       </cfquery>							   
						<cfelse>
							<cfset REQUEST.badlogin = true />    
							<cfinclude template="login.cfm">
							<cfabort>
						</cfif>
					</cfif>    
				</cfif>
			</cflogin>
		
			<cfif GetAuthUser() NEQ "">
				<cfoutput>
					 <form action="securitytest.cfm" method="Post">
						<input type="submit" Name="Logout" value="Logout">
					</form>
				</cfoutput>
			</cfif>	
		
		<!--- Return out. --->
		<cfreturn true />
	</cffunction>
 
 
	<cffunction
		name="OnRequest"
		access="public"
		returntype="void"
		output="true"
		hint="Fires after pre page processing is complete.">
 
		<!--- Define arguments. --->
		<cfargument
			name="TargetPage"
			type="string"
			required="true"
			/>
 
		<!--- Include the requested page. --->
		<cfinclude template="#ARGUMENTS.TargetPage#" />
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnRequestEnd"
		access="public"
		returntype="void"
		output="true"
		hint="Fires after the page processing is complete."> 
		
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnSessionEnd"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the session is terminated.">
 
		<!--- Define arguments. --->
		<cfargument
			name="sessionScope"
			type="struct"
			required="true"
			/>
 
		<cfargument
			name="applicationScope"
			type="struct"
			required="false"
			default="#StructNew()#"
			/>
		
		
		<cfset structClear( arguments.sessionScope ) />
		
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnApplicationEnd"
		access="public"
		returntype="void"
		output="false"
		hint="Fires when the application is terminated.">
 
		<!--- Define arguments. --->
		<cfargument
			name="ApplicationScope"
			type="struct"
			required="false"
			default="#StructNew()#"
			/>
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
 
	<cffunction
		name="OnError"
		access="public"
		returntype="void"
		output="true"
		hint="Fires when an exception occures that is not caught by a try/catch.">
 
		<!--- Define arguments. --->
		<cfargument
			name="Exception"
			type="any"
			required="true"
			/>
 
		<cfargument
			name="EventName"
			type="string"
			required="false"
			default=""
			/>
 
		<!--- Return out. --->
		<cfreturn />
	</cffunction>
 
</cfcomponent>
