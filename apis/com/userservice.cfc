<cfcomponent>

	<cffunction
		name="getUserList"
		access="remote"
		output="false"
		hint="I get the list of system users.">
	
		<cfquery datasource="#application.dsn#" name="userList">
			SELECT userID, username, password, accesslevel, 
			       lastLoginDate, lastLoginIP, roles, 
				   emailaddress, name, userActive
			  FROM dbo.Users
		   ORDER BY name ASC
		</cfquery>
		
		<cfreturn userList >	
	
	</cffunction>
	
	<cffunction
		name="getUser"
		access="remote"
		output="false"
		hint="I get the specific user by user ID.">		
		
		<cfif structkeyexists(url, "userID")>
			<cfset userID = #url.userID# />
		<cfelse>
			<cfset userID = 0 />
		</cfif>
			
			<cfquery datasource="#application.dsn#" name="userDetail">
				SELECT userID, username, password, accesslevel, 
			           lastLoginDate, lastLoginIP, roles, 
				       emailaddress, name, userActive
			      FROM dbo.Users
				 WHERE dbo.Users.userID = #userID#
		      ORDER BY name ASC
			</cfquery>
			
		<cfreturn userDetail >
	
	</cffunction>

</cfcomponent>