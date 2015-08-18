<cfcomponent>

	<cffunction
		name="getClientList"
		access="remote"
		output="false"
		hint="I return the list of clients">
		
		<cfset var clientList = "" />
		<cfquery datasource="#application.dsn#" name="clientList">
			SELECT clients.*
			  FROM dbo.clients
	      ORDER BY clientname ASC		
		</cfquery>
		
		<cfreturn clientList>
	
	</cffunction>

	
	<cffunction
		name="getClientDetail"
		access="remote"
		output="false"
		hint="I return the list of clients">
		
		<cfif IsDefined("url.clientID")>
			<cfset clientID = #URL.clientID# />
		<cfelse>
			<cfset clientID = 0 />
		</cfif>
		
		<cfset var clientDetail = "" />
		<cfquery datasource="#application.dsn#" name="clientDetail">
			SELECT clients.*
			  FROM dbo.clients
	         WHERE clientID = <cfqueryparam value="#clientID#" cfsqltype="cf_sql_integer" />		
		</cfquery>
		
		<cfreturn clientDetail>
	
	</cffunction>
	

</cfcomponent>