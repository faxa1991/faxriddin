
<!doctype html>
<html class="fixed">
  <head>
    <!-- Basic -->
    <meta charset="UTF-8">
    <title>Dashboard | JSOFT Themes | JSOFT-Admin</title>
    <meta name="keywords" content="HTML5 Admin Template" />
    <meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
    <meta name="author" content="JSOFT.net">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="/assets/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="/assets/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="/assets/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="/assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet" href="/assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
    <link rel="stylesheet" href="/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
    <link rel="stylesheet" href="/assets/vendor/morris/morris.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/theme.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/skins/default.css" />

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/theme-custom.css">

    <!-- Head Libs -->
    <script src="/assets/vendor/modernizr/modernizr.js"></script>

  </head>
  <body>
    <section class="body">

      <!-- start: header -->
      <#include "/extra/header.ftl">
      <!-- end: header -->

      <div class="inner-wrapper">
        <!-- start: sidebar -->
        <#include "/extra/aside.ftl">
        <!-- end: sidebar -->

        <section role="main" class="content-body">
          <header class="page-header">
            <h2>Dashboard</h2>
          
            <div class="right-wrapper pull-right">
              <ol class="breadcrumbs">
                <li>
                  <a href="/">
                    <i class="fa fa-home"></i>
                  </a>
                </li>
                <li><span>Dashboard</span></li>
              </ol>
          
              <a class="sidebar-right-toggle" ></a>
            </div>
          </header>

            <div class="row">
            <div class="col-md-6">
              <section class="panel">
                <header class="panel-heading">
                  <div class="panel-actions">
                    <a href="#" class="fa fa-caret-down"></a>
                    <a href="#" class="fa fa-times"></a>
                  </div>
                  <h2 class="panel-title">Статистика потока данных</h2>
                  <p class="panel-subtitle">Количество полученных данных от страты за один цикл</p>
                </header>
                <div class="panel-body">

                  <!-- Flot: Curves -->
                  <div class="chart chart-md" id="datacounter"></div>

                </div>
              </section>
            </div>
            <div class="col-md-6">
              <section class="panel">
                <header class="panel-heading">
                  <div class="panel-actions">
                    <a href="#" class="fa fa-caret-down"></a>
                    <a href="#" class="fa fa-times"></a>
                  </div>
                  <h2 class="panel-title">Соединение со стратой</h2>
                  <p class="panel-subtitle">История состояния соединения с базой Strata</p>
                </header>
                <div class="panel-body">
                 

<!-- Flot: Curves -->
                  <div class="chart chart-md" id="flotDashRealTime"></div>
                     
                </div>
                
                  
                
                
                
              </section>
            </div>
          </div>

     
     
        <section class="panel">
           <div class="panel-body">
               <div class=" row"> 	
                   <div class="col-md-6">
							<section class="panel panel-featured panel-featured-info">
								<header class="panel-heading">
									<div class="panel-actions">
										
									</div>

									<h2 class="panel-title">Список всей техники </h2>
									
								</header>
								<div class="panel-body">
								   <ul class="list-group list-group-flush">
										  <li class="list-group-item"><a href="/telemtry">Техника 1</a></li>
										  <li class="list-group-item"><a href="/telemtry">Техника 2</a></li>
										  <li class="list-group-item"><a href="/telemtry">Техника 3</a></li>
										  <li class="list-group-item"><a href="/telemtry">Техника 4</a></li>
										  <li class="list-group-item"><a href="/telemtry">Техника  5</a></li>
										</ul>
								</div>
							</section>
						</div>
						
						
						
						     <div class="col-md-6">
							<section class="panel panel-featured panel-featured-danger">
								<header class="panel-heading">
									<div class="panel-actions">
									</div>
									<h2 class="panel-title">Список всех тревожных событий </h2>
								
								</header>
								<div class="panel-body">
									  <ul class="list-group list-group-flush">
										  <li class="list-group-item list-group-item-danger"><a href="/telemtry">Техника 1</a></li>
										  <li class="list-group-item list-group-item-danger"><a href="/telemtry">Техника 2</a></li>
										  <li class="list-group-item list-group-item-danger"><a href="/telemtry">Техника 3</a></li>
										  <li class="list-group-item list-group-item-danger"><a href="/telemtry">Техника 4</a></li>
										  <li class="list-group-item list-group-item-danger"><a href="/telemtry">Техника  5</a></li>
										</ul>
								</div>
							</section>
						</div>
              
               </div>
         
           </div>
       </section>
       
       
       
       
       
       
       
        </section>
      </div>

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
    </section>


<!-- Vendor -->
    <script src="assets/vendor/jquery/jquery.js"></script>
    <script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
    <script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
    <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
    <script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
    
    <!-- Specific Page Vendor -->
    <script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
    <script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
    <script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
    <script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
    <script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
    <script src="assets/vendor/flot/jquery.flot.js"></script>
    <script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
    <script src="assets/vendor/flot/jquery.flot.pie.js"></script>
    <script src="assets/vendor/flot/jquery.flot.categories.js"></script>
    <script src="assets/vendor/flot/jquery.flot.resize.js"></script>
    <script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
    <script src="assets/vendor/raphael/raphael.js"></script>
    <script src="assets/vendor/morris/morris.js"></script>
    <script src="assets/vendor/gauge/gauge.js"></script>
    <script src="assets/vendor/snap-svg/snap.svg.js"></script>
    <script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
    <script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
    <script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
    <script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
    <script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
    
  
    <script src="assets/javascripts/theme.js"></script>
    
  
    <script src="assets/javascripts/theme.custom.js"></script>
    
    <script src="assets/javascripts/theme.init.js"></script>


    <script src="/js/dashboard/dashboard.js"></script>
    <script src="/js/main.js"></script>
    <script type="text/javascript">
    
    
       localStorage.setItem('backend_url','${backend_url}');
    </script>
  </body>
</html>