
		
		
		<!--- Include the header --->
		<cfinclude template="header.cfm">		
		
		
		<!--- Scope the URL variable --->
		<cfparam name="event" default="page.index">		
		
		<!--- generate page template based on event scope --->
			<cfswitch expression="#event#">				
				<cfcase value="page.index">					
					<cfinclude template="templates/page.index.cfm">					
				</cfcase>
				<cfcase value="page.manual">
					<cfinclude template="templates/page.manual.cfm">					
				</cfcase>
				<cfcase value="page.labels">
					<cfinclude template="templates/page.labels.cfm">
				</cfcase>
				<cfcase value="page.tasks">
					<cfinclude template="templates/page.tasks.cfm">
				</cfcase>												
				<cfcase value="page.calendar">					
					<cfinclude template="templates/page.calendar.cfm">		
				</cfcase>					
				<cfcase value="page.leads">				
					<cfinclude template="templates/page.leads.cfm">
				</cfcase>
				<cfcase value="page.clients">
					<cfinclude template="templates/page.clients.cfm">
				</cfcase>
				<cfcase value="page.search">
					<cfinclude template="templates/page.search.cfm">
				</cfcase>
				<cfcase value="page.debtmanagement">
					<cfinclude template="templates/debtmanagement.cfm">
				</cfcase>
				<cfcase value="page.studentloan">
					<cfinclude template="templates/studentloan.cfm">
				</cfcase>
				<cfcase value="page.profile">					
					<cfinclude template="templates/page.profile.cfm">				
				</cfcase>		
				<cfcase value="page.pwd">					
					<cfinclude template="templates/change-pwd.cfm">
				</cfcase>
				<cfcase value="page.admin">
					<cfinclude template="templates/page.admin.cfm">
				</cfcase>
				<cfdefaultcase>
					<cfinclude template="templates/page.index.cfm">
				</cfdefaultcase>
			</cfswitch>
		
		
		<!--- Include the footer --->			
		<cfinclude template="footer.cfm">			
					
				