<cfcomponent>

	<cffunction	
		name="getTotalsByClient"
		access="remote"
		output="false"
		hint="I get the list of billing totals by client for the last 5 years.">
		
		
		<cfargument
			name="startDate"
			type="date"
			required="true"
			default="1/1/2006">
			
		
		<cfargument
			name="endDate"
			type="date"
			required="true"
			default="#DateFormat(Now())#">
			
			<cfset var clientTotals = "" />
			
			<cfquery datasource="#application.dsn#" name="clientTotals">				
				SELECT c.clientname, c.clientID,
				       sum(billingrate * billingtime) as totalTimeBilling
				  FROM timebilling tb, clients c
				 WHERE tb.clientid = c.clientid
				   AND tb.billingdate BETWEEN '#startDate#' and '#endDate#'
			  GROUP BY c.clientname, c.clientID
			  ORDER BY c.clientname asc
			</cfquery>
			
		<cfreturn clientTotals >
			
	</cffunction>
	
	
	<cffunction
		name="getClientReport"
		access="remote"
		output="false"
		hint="I generate the report for a specific client">
	
		<cfset var clientReport = "" />
			
			<cfquery datasource="#application.dsn#" name="clientReport">
				SELECT c.clientname, c.clientID, tb.billingdate, tb.billingdescr, tb.billingrate,
					   tb.billingtime, tb.billingdetail
				  FROM timebilling tb, clients c
				 WHERE tb.clientID = c.clientID
				   AND tb.clientID = #clientID#
				   AND billingdate BETWEEN '#sDate#' AND '#eDate#'
				ORDER BY tb.billingdate ASC 
			</cfquery>
		
		<cfreturn clientReport >
	
	</cffunction>
	
	
	<cffunction	
		name="getReportTotals"
		access="remote"
		output="false"
		hint="I get the client report totals.">
		
			<cfset var reportTotals = "" />
		
			<cfquery datasource="#application.dsn#" name="reportTotals">
				SELECT clientID,
					   (SELECT SUM(billingtime) FROM timebilling WHERE clientID = #clientID# AND billingdate BETWEEN '#sDate#' AND '#eDate#' AND billingrate <> 0.00) as totalBillableHours,
					   (SELECT SUM(billingtime) FROM timebilling WHERE clientID = #clientID# AND billingdate BETWEEN '#sDate#' AND '#eDate#' AND billingrate = 0.00) as totalMaintHours,
					   (SELECT SUM(billingtime * billingrate) FROM timebilling WHERE clientID = #clientID# AND (billingdate BETWEEN '#sDate#' AND '#eDate#') AND billingrate <> 0.00) as totalBilling,
					   (SELECT SUM(billingTime) FROM timebilling WHERE clientID = #clientID# AND billingdate BETWEEN '#sDate#' AND '#eDate#') as totalReportHours
				  FROM timebilling
				 WHERE clientID = #clientID#
				   AND billingdate between '#sDate#' AND '#eDate#'
			  GROUP BY clientID
			</cfquery>
		
		<cfreturn reportTotals >
	
	</cffunction>
	
	<!--- Client Report Data for Export Function --->
	<cffunction
		name="generateExcelReport"
		access="remote"
		output="false"
		hint="I generate the report for a specific client">
	
		<cfset clientID = #url.clientID# />
		<cfset startdate = #url.sDate# />
		<cfset enddate = #url.eDate# />
		
			<cfquery datasource="#application.dsn#" name="clientExcelReport">
				SELECT c.clientname, c.clientID, tb.billingdate, tb.billingdescr, tb.billingrate,
					   tb.billingtime, tb.billingdetail
				  FROM timebilling tb, clients c
				 WHERE tb.clientID = c.clientID
				   AND tb.clientID = #clientID#
				   AND billingdate BETWEEN '#startdate#' AND '#enddate#'
				ORDER BY tb.billingdate ASC 
			</cfquery>
		
		<cfreturn clientExcelReport >
	
	</cffunction>
	
	

</cfcomponent>