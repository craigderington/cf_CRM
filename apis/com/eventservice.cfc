<cfcomponent>

	<cffunction name="geteventname" access="remote" output="false" hint="Generate the event name.">
		<cfargument name="eventname" required="true" value="#url.event#">
		
		<cfswitch expression="#eventname#">
			<cfcase value="page.index">
				<cfset eventname = "Dashboard">
			</cfcase>
			<cfcase value="page.manual">
				<cfset eventname = "User Manual">
			</cfcase>
			<cfcase value="page.tasks">
				<cfset eventname = "Your Open Tasks">
			</cfcase>
			<cfcase value="page.calendar">
				<cfset eventname = "Calendar">
			</cfcase>
			<cfcase value="page.leads">
				<cfset eventname = "Active Inquiries">
			</cfcase>
			<cfcase value="page.clients">
				<cfset eventname = "Your Client List">
			</cfcase>
			<cfcase value="page.search">
				<cfset eventname = "Search Database">
			</cfcase>
			<cfcase value="page.profile">
				<cfset eventname = "Your User Profile">
			</cfcase>
			<cfcase value="page.inbox">
				<cfset eventname = "Your Inbox">
			</cfcase>
			<cfcase value="page.labels">
				<cfset eventname = "jQuery UI Basic Elements">
			</cfcase>
		</cfswitch>
		
		<cfreturn eventname >	
	
	</cffunction>	
	

</cfcomponent>