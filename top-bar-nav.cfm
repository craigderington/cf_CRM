




				<cfoutput>
				<div id="topbar">
					
					<div class="container">
						
						<a href="javascript:;" id="menu-trigger" class="dropdown-toggle" data-toggle="dropdown" data-target="##">
							<i class="icon-cog"></i>
						</a>
					
						<div id="top-nav">
							
							<ul>
								<li class="dropdown">
									<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
										Your Shortcuts				
										<b class="caret"></b>
									</a>
									
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:;"><i class="icon-tasks"></i> Tasks</a></li>
										<li><a href="#application.root#?event=page.calendar"><i class="icon-calendar"></i> Calendar</a></li>
										<li><a href="#application.root#?event=page.leads"><i class="icon-off"></i> Leads</a></li>
										<li><a href="javascript:;"><i class="icon-ok"></i> Clients</a></li>
										<li><a href="javascript:;"><i class="icon-search"></i> Search</a></li>
										<li><a href="#application.root#?event=page.manual"><i class="icon-book"></i> Manual</a></li>
										<li class="dropdown-submenu">
										  <a tabindex="-1" href="##">Dropdown menu</a>
										  <ul class="dropdown-menu">
											<li><a tabindex="-1" href="##">Second level link</a></li>
											<li><a tabindex="-1" href="##">Second level link</a></li>
											<li><a tabindex="-1" href="##">Second level link</a></li>
										  </ul>
										</li>
									</ul> 
								</li>
							</ul>
							
							
							<ul class="pull-right">								
								<li><a href="#application.root#?event=page.profile" class="dropdown-toggle"><i class="icon-user"></i> Logged in as #getauthuser()#</a></li>
								<li><a href="javascript:;"><span class="badge badge-important" style="padding:3px;">5</span> New Message</a></li>
								<li class="dropdown">
									<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
										Settings						
										<b class="caret"></b>
									</a>
									
									<ul class="dropdown-menu pull-right">
										<li><a href="#application.root#?event=page.admin"><i class="icon-list-alt"></i> Administration</a></li>
										<li><a href="#application.root#?event=page.settings"><i class="icon-sitemap"></i> System Settings</a></li>
										<li><a href="#application.root#?event=page.users"><i class="icon-user"></i> Manage Users</a></li>
										<li><a href="#application.root#?event=page.inbox"><i class="icon-inbox"></i> Inbox</a></li>
										<li class="dropdown-submenu">
											<a tabindex="-1" href="##">Dropdown menu</a>
												<ul class="dropdown-menu">
													<li><a tabindex="-1" href="##">Second level link</a></li>
													<li><a tabindex="-1" href="##">Second level link</a></li>
													<li><a tabindex="-1" href="##">Second level link</a></li>
												</ul>
										</li>
									</ul> 
								</li>
								<li><a href="#application.root#?event=page.logout">Logout</a></li>
							</ul>
							
						</div> <!-- // .top-nav -->
						
					</div> <!-- // .container -->
					
				</div> <!-- // .topbar -->
				</cfoutput>