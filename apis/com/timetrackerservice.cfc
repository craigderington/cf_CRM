<cfcomponent>

	<cffunction
		name="getRecentItems"
		access="remote"
		output="false"
		hint="I get a list of recently billed items.">	
		
		
		<cfquery datasource="#application.dsn#" name="recentItems">
			SELECT TOP 30 tb.*, c.clientname
			  FROM dbo.TimeBilling tb, dbo.Clients c
			 WHERE tb.clientID = c.clientID
		  ORDER BY billingDate DESC
		</cfquery>

		<cfreturn recentItems>
	
	</cffunction>
	
	
	<cffunction
		name="getBillableItem"
		access="remote"
		output="false"
		hint="I get a list of recently billed items.">	
		
		<cfif structkeyexists(url, "billingID")>
			<cfset billingID = #url.billingID# />
		<cfelse>
			<cfset billingID = 0 />
		</cfif>
		
		<cfquery datasource="#application.dsn#" name="billableItem">
			SELECT *
			  FROM dbo.TimeBilling
			 WHERE billingID = <cfqueryparam value="#billingID#" cfsqltype="cf_sql_integer" />		  
		</cfquery>

		<cfreturn billableItem>
	
	</cffunction>
	
	
	<cffunction
		name="getBillingTotals"
		access="remote"
		output="false"
		hint="I get the dollar totals of recently billed items.">	
		
		<cfset today = Now() />
		<cfset startDate = DateAdd("d", -60, today) />
		<cfset endDate = DateAdd("d", 5, today) />
		
		<cfquery datasource="#application.dsn#" name="billingTotals">
			SELECT SUM(tb.billingtime * tb.billingrate) as totalBilling
			  FROM dbo.TimeBilling tb
             WHERE billingDate BETWEEN #startDate# AND #endDate#
		  
		</cfquery>

		<cfreturn billingTotals>
	
	</cffunction>
		
</cfcomponent>