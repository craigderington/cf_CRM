



		<cfcomponent
			output="false"
			displayName="Lead Life Login"
			name="leadlifeLogin>
		
			
			
				<cffunction 
					name="leadlifeLogin" 
					access="remote" 
					output="false" 
					returnFormat="XML"
					returnType="struct"
					secureJSON="no">
					
					<cfargument
						name="authToken"
						type="string"
						required="true">
						
					<cfargument
						name="manageURL"
						type="string"
						required="true">

					<cfset strURL = (
						"https://services.leadlifesolutions.net/Authentication/Login"		
						) />
					
					
						<cfhttp
							method="GET"
							url="#strURL#"
							throwonerror="yes"
							result="objLeadResponse">
							
							<cfhttpparam
								name="X-User"
								type="header"
								value="ServiceID">
								
							<cfhttpparam
								name="X-Auth-Key"
								type="header"
								value="KEY">
							
						</cfhttp>
						
						<cfset objLeadResponse = GetHttpRequestData() />
				
					<cfreturn objLeadResponse>

				</cffunction>		
			
			
		</cfcomponent>