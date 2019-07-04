			
			<script type="text/javascript">
			
			if(localStorage.token==undefined || localStorage.token=='null')
				window.location.href='/login';
			
			
			
			</script>
<header class="header">
				<div class="logo-container">
					<a href="../" class="logo">
						<img src="assets/images/logo2.jpg" height="45" alt="JSOFT Admin" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
					<span class="separator"></span>
							<ul class="notifications">
						
						
						<li>
			              <a href="index" class="dropdown-toggle notification-icon" style="text-decoration: none;" data-toggle="dropdown">
			                <i><msg>locale_shortname</msg></i>
			                
			              </a>
			      
			              <div class="dropdown-menu notification-menu">
			                <div class="notification-title">
			                
			                  <msg>languages_list</msg>
			                </div>
			      
			                <div class="content">
			                  <ul>
			                    <li>
			                      <a href="javascript:switchLocale('ru');" class="clearfix">
			                        <div class="image">
			                          <i class="fa bg-gray">RU</i>
			                        </div>
			                        <span class="title" style="line-height: 30px;">Русский</span>
			                      </a>
			                    </li>
			                    <li>
			                      <a href="javascript:switchLocale('en');" class="clearfix">
			                        <div class="image">
			                          <i class="fa bg-gray">EN</i>
			                        </div>
			                        <span class="title" style="line-height: 30px;">English</span>
			                      </a>
			                    </li>                    
			
			                  </ul>
			      
			                  <hr />
			      
			                  <div class="text-right">
			                    <a href="#" class="view-more">View All</a>
			                  </div>
			                </div>
			              </div>
			            </li>
					</ul> 
			
					  <span class="separator"></span> 
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/!logged-user.jpg" alt="Joseph Doe" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@JSOFT.com">
								<span id="header_user_name" class="name"></span>
								<!-- <span class="role">administrator</span> -->
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<!-- <li>
									<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
								</li> -->
								<li>
									<a role="menuitem" tabindex="-1"  href="#" id="logout"><i class="fa fa-power-off"></i>Выйти</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->
			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Upcoming Tasks</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
			
								<ul>
									<li>
										<time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
										<span>Company Meeting</span>
									</li>
								</ul>
							</div>
			
							<div class="sidebar-widget widget-friends">
								<h6>Friends</h6>
								<ul>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
								</ul>
							</div>
			
						</div>
					</div>
				</div>
			</aside>
		
		
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="/js/international.js"></script>	 
					   
			    
			
			<script type="text/javascript">
			
		
			
			
			   $("#logout").unbind("click");
			   $("#logout").on("click",function(){
				   
				   localStorage.token='null';
			        window.location.href='/login';
			        
			        
			   })
			   
			   
			 
			   
			     $(document).ready(function(e){
				   var name = localStorage.getItem('name');   
				   $("#header_user_name").html(name);
			   })	
		   
			   
			    $(document).ajaxSend(function(e, xhr, opt){  
					 xhr.setRequestHeader('Authorization', localStorage.token);
					      
				 });
			   
			    $.ajax({
				  url:'${backend_url}/user/am-i-loginned',
				  method:'GET',
				  contentType: "application/json",
				  async:false,
				  error:function(xhr){
					  console.log(xhr);
					  if(xhr.responseJSON.status==403)
						  window.location.href='/login';
					  if(xhr.status==403)
						  window.location.href='/login';
					  
						  
						  
					  console.log(xhr);
				  }

				   
			   });
			   
			   
			</script>
			
			
			
			