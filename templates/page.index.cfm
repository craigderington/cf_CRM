




			<div id="content">

				<div class="container">
					
					<div class="row">
						<cfoutput>
						<div class="span4">
							<h2>Welcome back, #getauthuser()#</h2>
							
							<p>You currently have several pending action items for review.<br /><a href="#application.root#?event=page.labels">View your analytics</a>.</p>
						
							<table class="table stat-table">
								<tbody>
									<tr>
										<td class="value">789</td>
										<td class="full">Total Clients</td>
									</tr>
									<tr>
										<td class="value">634</td>
										<td class="full">Working Leads</td>
									</tr>
									<tr>
										<td class="value">13</td>
										<td class="full">New Messages</td>
									</tr>
									<tr>
										<td class="value">17</td>
										<td class="full">Open Tasks</td>
									</tr>
								</tbody>
							</table>
						</div> <!-- /.span4 -->
						</cfoutput>						
						
						<!--- Cool Charts --->
						<div class="span8">
							<div id="line-chart" class="chart-holder"></div> <!-- // .bar-chart -->
						</div> <!-- // .span8 -->
						
						
					</div> <!-- /.row -->
					
					<div class="row">
						
						<div class="span5">
							
							<h3 class="title">Lead Conversion</h3>
							
							<div id="donut-chart" class="chart-holder"></div> <!-- /#donut-chart -->
							
						</div> <!-- // .span5 -->
									
						
						<div class="span7">
							
							<h3 class="title">Current Tasks</h3>
							
							<table class="table">
								<thead>
									<tr>
										<th>Label</th>
										<th>Subject</th>
										<th>User</th>
									</tr>						
								</thead>
								
								<tbody>
								<tr class="info">
									<td><span class="label label-inverse">Pending</span></td>
									<td class="full"><a href="#">Lorem ipsum dolor sit amet</a></td>					
									<td class="who">Posted by Bill</td>
								</tr>
				
								<tr>
									<td><span class="label label-primary">Open</span></td>
									<td class="full"><a href="#">Consectetur adipiscing</a></td>
									<td class="who">Posted by Pam</td>
								</tr>
								<tr>
									<td><span class="label label-primary">Open</span></td>
									<td class="full"><a href="#">Sed in porta lectus maecenas</a></td>					
									<td class="who">Posted by Curtis</td>
								</tr>
								<tr>
									<td><span class="label label-danger">Closed</span></td>
									<td class="full"><a href="#">Dignissim enim</a></td>					
									<td class="who">Posted by John</td>
								</tr>
								<tr>
									<td><span class="label label-secondary">Responded</span></td>
									<td class="full"><a href="#">Duis nec rutrum lorem</a></td>			
									<td class="who">Posted by James</td>
								</tr>
								<tr class="success">
									<td><span class="label label-important">Closed</span></td>
									<td class="full"><a href="#">Maecenas id velit et elit</a></td>					
									<td class="who">Posted by Sam</td>
								</tr>
								<tr>
									<td><span class="label label-secondary">Responded</span></td>
									<td class="full"><a href="#">Duis nec rutrum lorem</a></td>
									<td class="who">Posted by Carlos</td>
								</tr>
								</tbody>
							</table>	
						</div> <!-- /.span7 -->
						
					</div> <!-- /.row -->
					
				</div> <!-- /.container -->

		</div> <!-- /#content -->