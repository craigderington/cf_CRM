


			<div id="content">

				<div class="container">		
					
					<div class="row">
						
						<div class="tabbable">
							
							<div class="span3">
								
								<ul class="nav nav-tabs nav-stacked">
									<li class="active">
										<a href="#tab1" data-toggle="tab">
											<i class="icon-ok"></i>
											Basic
											<i class="icon-chevron-right"></i>
										</a>              			              	
									</li>
									<li>
										<a href="#tab2" data-toggle="tab">
											<i class="icon-user"></i>
											Profile
											<i class="icon-chevron-right"></i>
										</a>              		
									</li>
									<li>
										<a href="#tab3" data-toggle="tab">
											<i class="icon-envelope"></i>
											Messaging
											<i class="icon-chevron-right"></i>
										</a>              		
									</li>
									<li>
										<a href="#tab4" data-toggle="tab">
											<i class="icon-money"></i>
											Payments
											<i class="icon-chevron-right"></i>
										</a>              		
									</li>
									<li>
										<a href="#tab5" data-toggle="tab">
											<i class="icon-bar-chart"></i>
											Reports
											<i class="icon-chevron-right"></i>
										</a>              		
									</li>
								</ul>
											
							</div> <!-- /.span3 -->
						
						
							<div class="span9">
								
								<div class="tab-content">
									
									<div class="tab-pane active" id="tab1">
										
										<h2>Edit Basic Settings</h2>
										
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Quis nostrud exercitation ullamco laboris.</p>
										
										<br />
										<cfoutput>
										<form id="edit-profile" class="form-horizontal" action="#application.root#?event=page.index" method="post">
											<fieldset>
												
												<div class="control-group">											
													<label class="control-label" for="username">Username</label>
													<div class="controls">
														<input type="text" class="input-medium disabled" id="username" value="#getauthuser()#" disabled="true">
														<p class="help-block">Your username is for logging in and cannot be changed.</p>
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
												<div class="control-group">											
													<label class="control-label" for="firstname">First Name</label>
													<div class="controls">
														<input type="text" class="input-medium" id="firstname" value="Craig">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
												<div class="control-group">											
													<label class="control-label" for="lastname">Last Name</label>
													<div class="controls">
														<input type="text" class="input-medium" id="lastname" value="Derington">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
												<div class="control-group">											
													<label class="control-label" for="email">Email Address</label>
													<div class="controls">
														<input type="text" class="input-large" id="email" value="craig@efiscal.net">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
												<br><br>
												
												<div class="control-group">											
													<label class="control-label" for="password1">Password</label>
													<div class="controls">
														<input type="password" class="input-medium" id="password1" value="password">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
												<div class="control-group">											
													<label class="control-label" for="password2">Confirm</label>
													<div class="controls">
														<input type="password" class="input-medium" id="password2" value="password">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												
													
													<br>
												
													
												<div class="form-actions">
													<button type="submit" class="btn btn-primary btn-large">Save Settings</button> 
													<button class="btn btn-large">Cancel</button>
													<button class="btn btn-tertiary btn-large">Some Other Action</button>													
												</div> <!-- /form-actions -->
											</fieldset>
										</form>
										</cfoutput>				
									</div> <!-- /#tab1 -->
									
									
									<div class="tab-pane" id="tab2">
										
										<h2>Tab #2</h2>
										
										<p>
										Aenean interdum faucibus urna, et laoreet dui fringilla eu. In sagittis tempor justo, id auctor risus vestibulum sed. Nulla facilisi. Phasellus sollicitudin interdum lacus, tincidunt rhoncus augue porta et. Cras molestie bibendum sem, nec feugiat mauris consectetur vel. Nunc tellus sapien, ornare at ullamcorper sed, tempor ut ipsum. Nunc ac purus in quam pellentesque aliquam eget sed sapien. Curabitur sed nulla libero, eget pellentesque ante. Etiam condimentum pellentesque tincidunt. Suspendisse non odio mauris, eget tempor quam. Curabitur eget lectus quis metus tempor adipiscing non ut nisi. Curabitur sed neque tellus.
										</p>
																	
																	<p>
										Vestibulum elementum tincidunt est ac placerat. Curabitur nulla sapien, sollicitudin sed cursus at, accumsan vel lorem. Etiam luctus vulputate suscipit. Nulla cursus enim in urna vestibulum auctor. Maecenas ultrices iaculis enim vitae ornare. Morbi arcu lorem, tincidunt vitae aliquam non, venenatis quis nibh. Pellentesque ornare leo sed lectus malesuada imperdiet. Aenean rhoncus, nulla non laoreet lacinia, nisl orci facilisis dolor, in rhoncus mauris odio nec ipsum. Phasellus pellentesque varius odio nec faucibus. Phasellus a lorem quis ipsum lobortis tincidunt in ut quam.
										</p>

																	<p>
										Cras et nisi ac nulla dictum vulputate. Nam laoreet sapien at mi interdum sed molestie quam venenatis. Fusce lacinia malesuada erat, id mollis orci lobortis nec. Quisque at nibh nunc. Aliquam quam diam, iaculis id sollicitudin sit amet, laoreet vel purus. Integer et lectus eget arcu pharetra blandit. Vestibulum id vulputate eros. Vivamus non erat urna. Donec consectetur scelerisque semper. Proin enim arcu, sodales a congue ac, fringilla eu odio. Praesent laoreet nunc eu metus ullamcorper vitae lobortis leo interdum. Morbi feugiat ultrices diam sed auctor. Donec a dolor sit amet lectus posuere cursus vitae quis nulla. Morbi sed mi quis tortor tristique tincidunt ac a elit. Donec enim nisl, lobortis eget vehicula eget, auctor eget enim.
										</p>
										
										
										<button class="btn btn-secondary btn-large growl-type" data-type="warning">Growl Message</button>
									</div> <!-- /#tab2 -->
									
									
									<div class="tab-pane" id="tab3">
										
										<h2>Tab #3</h2>
										
										<p>
										Aenean interdum faucibus urna, et laoreet dui fringilla eu. In sagittis tempor justo, id auctor risus vestibulum sed. Nulla facilisi. Phasellus sollicitudin interdum lacus, tincidunt rhoncus augue porta et. Cras molestie bibendum sem, nec feugiat mauris consectetur vel. Nunc tellus sapien, ornare at ullamcorper sed, tempor ut ipsum. Nunc ac purus in quam pellentesque aliquam eget sed sapien. Curabitur sed nulla libero, eget pellentesque ante. Etiam condimentum pellentesque tincidunt. Suspendisse non odio mauris, eget tempor quam. Curabitur eget lectus quis metus tempor adipiscing non ut nisi. Curabitur sed neque tellus.
										</p>
																	
																	<p>
										Vestibulum elementum tincidunt est ac placerat. Curabitur nulla sapien, sollicitudin sed cursus at, accumsan vel lorem. Etiam luctus vulputate suscipit. Nulla cursus enim in urna vestibulum auctor. Maecenas ultrices iaculis enim vitae ornare. Morbi arcu lorem, tincidunt vitae aliquam non, venenatis quis nibh. Pellentesque ornare leo sed lectus malesuada imperdiet. Aenean rhoncus, nulla non laoreet lacinia, nisl orci facilisis dolor, in rhoncus mauris odio nec ipsum. Phasellus pellentesque varius odio nec faucibus. Phasellus a lorem quis ipsum lobortis tincidunt in ut quam.
										</p>

																	<p>
										Cras et nisi ac nulla dictum vulputate. Nam laoreet sapien at mi interdum sed molestie quam venenatis. Fusce lacinia malesuada erat, id mollis orci lobortis nec. Quisque at nibh nunc. Aliquam quam diam, iaculis id sollicitudin sit amet, laoreet vel purus. Integer et lectus eget arcu pharetra blandit. Vestibulum id vulputate eros. Vivamus non erat urna. Donec consectetur scelerisque semper. Proin enim arcu, sodales a congue ac, fringilla eu odio. Praesent laoreet nunc eu metus ullamcorper vitae lobortis leo interdum. Morbi feugiat ultrices diam sed auctor. Donec a dolor sit amet lectus posuere cursus vitae quis nulla. Morbi sed mi quis tortor tristique tincidunt ac a elit. Donec enim nisl, lobortis eget vehicula eget, auctor eget enim.
										</p>
									</div> <!-- /#tab3 -->
									
									
									<div class="tab-pane" id="tab4">
										
										<h2>Tab #4</h2>
										
										<p>
										Aenean interdum faucibus urna, et laoreet dui fringilla eu. In sagittis tempor justo, id auctor risus vestibulum sed. Nulla facilisi. Phasellus sollicitudin interdum lacus, tincidunt rhoncus augue porta et. Cras molestie bibendum sem, nec feugiat mauris consectetur vel. Nunc tellus sapien, ornare at ullamcorper sed, tempor ut ipsum. Nunc ac purus in quam pellentesque aliquam eget sed sapien. Curabitur sed nulla libero, eget pellentesque ante. Etiam condimentum pellentesque tincidunt. Suspendisse non odio mauris, eget tempor quam. Curabitur eget lectus quis metus tempor adipiscing non ut nisi. Curabitur sed neque tellus.
										</p>
																	
																	<p>
										Vestibulum elementum tincidunt est ac placerat. Curabitur nulla sapien, sollicitudin sed cursus at, accumsan vel lorem. Etiam luctus vulputate suscipit. Nulla cursus enim in urna vestibulum auctor. Maecenas ultrices iaculis enim vitae ornare. Morbi arcu lorem, tincidunt vitae aliquam non, venenatis quis nibh. Pellentesque ornare leo sed lectus malesuada imperdiet. Aenean rhoncus, nulla non laoreet lacinia, nisl orci facilisis dolor, in rhoncus mauris odio nec ipsum. Phasellus pellentesque varius odio nec faucibus. Phasellus a lorem quis ipsum lobortis tincidunt in ut quam.
										</p>

																	<p>
										Cras et nisi ac nulla dictum vulputate. Nam laoreet sapien at mi interdum sed molestie quam venenatis. Fusce lacinia malesuada erat, id mollis orci lobortis nec. Quisque at nibh nunc. Aliquam quam diam, iaculis id sollicitudin sit amet, laoreet vel purus. Integer et lectus eget arcu pharetra blandit. Vestibulum id vulputate eros. Vivamus non erat urna. Donec consectetur scelerisque semper. Proin enim arcu, sodales a congue ac, fringilla eu odio. Praesent laoreet nunc eu metus ullamcorper vitae lobortis leo interdum. Morbi feugiat ultrices diam sed auctor. Donec a dolor sit amet lectus posuere cursus vitae quis nulla. Morbi sed mi quis tortor tristique tincidunt ac a elit. Donec enim nisl, lobortis eget vehicula eget, auctor eget enim.
										</p>
									</div> <!-- /#tab4 -->
									
									
									<div class="tab-pane" id="tab5">
										
										<h2>Tab #5</h2>
										
										<p>
										Aenean interdum faucibus urna, et laoreet dui fringilla eu. In sagittis tempor justo, id auctor risus vestibulum sed. Nulla facilisi. Phasellus sollicitudin interdum lacus, tincidunt rhoncus augue porta et. Cras molestie bibendum sem, nec feugiat mauris consectetur vel. Nunc tellus sapien, ornare at ullamcorper sed, tempor ut ipsum. Nunc ac purus in quam pellentesque aliquam eget sed sapien. Curabitur sed nulla libero, eget pellentesque ante. Etiam condimentum pellentesque tincidunt. Suspendisse non odio mauris, eget tempor quam. Curabitur eget lectus quis metus tempor adipiscing non ut nisi. Curabitur sed neque tellus.
										</p>
																	
																	<p>
										Vestibulum elementum tincidunt est ac placerat. Curabitur nulla sapien, sollicitudin sed cursus at, accumsan vel lorem. Etiam luctus vulputate suscipit. Nulla cursus enim in urna vestibulum auctor. Maecenas ultrices iaculis enim vitae ornare. Morbi arcu lorem, tincidunt vitae aliquam non, venenatis quis nibh. Pellentesque ornare leo sed lectus malesuada imperdiet. Aenean rhoncus, nulla non laoreet lacinia, nisl orci facilisis dolor, in rhoncus mauris odio nec ipsum. Phasellus pellentesque varius odio nec faucibus. Phasellus a lorem quis ipsum lobortis tincidunt in ut quam.
										</p>

																	<p>
										Cras et nisi ac nulla dictum vulputate. Nam laoreet sapien at mi interdum sed molestie quam venenatis. Fusce lacinia malesuada erat, id mollis orci lobortis nec. Quisque at nibh nunc. Aliquam quam diam, iaculis id sollicitudin sit amet, laoreet vel purus. Integer et lectus eget arcu pharetra blandit. Vestibulum id vulputate eros. Vivamus non erat urna. Donec consectetur scelerisque semper. Proin enim arcu, sodales a congue ac, fringilla eu odio. Praesent laoreet nunc eu metus ullamcorper vitae lobortis leo interdum. Morbi feugiat ultrices diam sed auctor. Donec a dolor sit amet lectus posuere cursus vitae quis nulla. Morbi sed mi quis tortor tristique tincidunt ac a elit. Donec enim nisl, lobortis eget vehicula eget, auctor eget enim.
										</p>
									</div> <!-- // .tab5 -->
								
								</div> <!-- /.tab-content -->
								
							</div> <!-- /.span9 -->
							
						</div> <!-- /.tabbable -->
						
					</div> <!-- /.row -->
					
					
				</div> <!-- /.container -->

		</div> <!-- // .content -->