<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>История соединения со стратой</title>
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
		<link rel="stylesheet" href="assets/vendor/bootstrap-timepicker/css/bootstrap-timepicker.css" />

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
	<body backend_url="${backend_url}">
		<section class="body">
        



		<#include "/extra/header.ftl">
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>История соединения со стратой</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>История соединения со стратой</span></li>
								
							</ol>
					
							 <a class="sidebar-right-toggle" ></a> 
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									
								</div>
						
								<h2 class="panel-title">История соединения со стратой</h2>
							</header>
							<div class="panel-body">
								     <div class="col row" style="padding-bottom:20px;">
								      
								       <form>
								        <div class="col-sm-4">
								          	<div class="form-group col-sm-12">
												 <label class="control-label">Дата с</label>
											      <input type="text" id="date-to" data-plugin-datepicker="" data-plugin-options='{"format": "  yyyy-mm-dd"}'  class="form-control">
										   </div>
										   
										   
								        </div>
								        
								           <div class="col-sm-4">
								          	<div class="form-group col-sm-12">
												 <label class="control-label">Дата по</label>
											      <input type="text" id="date-from" data-plugin-datepicker="" data-plugin-options='{"format": "  yyyy-mm-dd"}'  class="form-control">
										   </div>
										   
										   
								        </div>
								        
								          <div class="col-sm-4">
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Соединение</label>
												  <select id="connection" name="connection" data-plugin-selectTwo class="form-control populate">
								                   <option></option>
								                   <option value="NOT_CONNECTED">Нет соединения</option>
												   <option value="CONNECTED">Есть соединение</option> 
															
											  </select>
										   </div>
										
										   	
								        </div> 
								        
								      
								        
								
								        
								  							        
								        
								          
								        
								        
								         
								         
								
								         
								        
								           <div class="col-sm-12 row " style="padding-top:50px;">
								           	<div class="form-group col-sm-5"  style="margin-left:10px;">
												 <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="search-btn">Применить фильтр</button>
												 <button type="button" class="mb-xs mt-xs mr-xs btn btn-default" id="refresh"><i class="fa fa-refresh"></i> Очистить фильтр</button>
										    	 <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i> <span style="margin-left:10px;">Скачать файл</span></button>
										    
										    
										   </div>
								        </div>
								 
								        
								     </form>
								    
								    </div>
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/strata-connection-stat/data">
									 <thead>
										 <tr>
											<th >Дата</th>
											<th >Соединение</th>
										
										</tr> 
									 
										
									</thead>
									<tbody>
									</tbody> 
								</table>
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
		<script src="assets/vendor/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/select2/select2.js"></script>
		<script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

        <script src="assets/javascripts/forms/examples.advanced.form.js" /></script>
      
		<!-- Examples -->
		<script src="/js/table/story-connection-history.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		

	 
	   
 
	   
		   

		

		
		
		
		
		   $('#search-btn').unbind('click');
		   $('#search-btn').on('click',function(e){
			   $('#datatable-ajax').dataTable().fnDraw(true);
		   });
		
		
		
		   
		   $("#refresh").unbind('click');
		    $("#refresh").on('click',function(){
			   $("#connection").select2('data', null);
		       $("#date-from").val('');
		       $("#date-to").val('');
		       $('#datatable-ajax').dataTable().fnDraw(true);
		    
		    });
		
	
		    
		    
		      	    
		    	$("#load").on('click',function(){
		          $.ajax({
		            url:'${backend_url}/api/reports/v1/ottabel/xlsx',
		            method:'POST',
		            contentType: "application/json",
		            async:false,
		            data:localStorage.getItem('tableRequest'),
		            success:function(data){
		              console.log(data);
		              window.location.href = '${backend_url}/api/reports/v1/ottabel/xlsx?key='+data;
		            }
		           });  
		        })
		
		        
	
		    	
		    	
		</script>
		
	</body>
</html>