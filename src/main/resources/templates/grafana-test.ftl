<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Графана</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
		
		






	</head>
	<body>
	
		<section class="body">
        



		<#include "/extra/header.ftl">
			<!-- end: header -->
			

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Графана</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Графана</span></li>
								
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									
								</div>
						
								<h2 class="panel-title">Графана</h2>
							</header>
							<div class="panel-body">
							
							<div id='grafana-dashboard' class="col-lg-12"></div>
							
							
							 	<iframe src="http://grafana.lineapps.org/dashboard/snapshot/F33PCyHo66MqZVBbrzSpwFpjY1KXfq1k?orgId=1&kiosk=tv&inactive=1" width="100%" height="700px" frameborder="0"></iframe>

							</div>
							
						</section>
					<!-- end: page -->
				</section>
			</div>
     
		</section>
		
		

                 <!-- modalError --> 
                    <#include "/extra/modal_error.ftl">
               <!-- modalError -->  
	
	              <!-- modalSuccess --> 
                    <#include "/extra/modal_success.ftl">
               <!-- modalSuccess -->  
	
		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

        <script src="assets/javascripts/forms/examples.advanced.form.js" /></script>
      
		<!-- Examples -->
	
		
		<script src="/js/main.js"></script>
		<script type="text/javascript" src="http://jquery.cookie.js"></script>
			
		
			<script>
		
			//  http://grafana.lineapps.org/d-solo/Y8MOZjRZk/test-db?from=1555926377039&to=1555947977040&orgId=1&panelId=2
			/*  GrafanaEmbed = {
			        grafanaUrl: 'http://grafana.lineapps.org',
			        dashboard: 'test-db',
			        queryParams: {
			            dashnav: 0,
			            // this is a base64-encoded string of username:password
			            // for example on a *NIX machine (and Mac OS X):
			            // $ echo "kiosk1:supersecret" | base64
			            // a2lvc2sxOnN1cGVyc2VjcmV0Cg==
			            auth: 'a2lvc2sxOnN1cGVyc2VjcmV0Cg==',
			            theme: 'light'
			        }
			    };

			    (function() {
			        var d = document.createElement('script'); d.type = 'text/javascript'; d.async = true;
			        d.src = GrafanaEmbed.grafanaUrl + '/public/app/features/dashboard/embed.js';
			        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(d);
			    })();  */
			    
			    
			    
			    
		
		
		//Cookies.set('SameSite', 'none');
		//Cookies.set('cookie_samesite', 'none');

		///alert('ddd');
		</script>
		
	</body>
</html>