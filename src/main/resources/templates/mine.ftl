<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Рудник</title>
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
	<body backend_url="${backend_url}" >
		<section class="body">
        



		<#include "/extra/header.ftl">
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Рудник</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Рудник</span></li>
							</ol>
					
							 <a class="sidebar-right-toggle" ></a> 
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
						
								<div class="row">
								<div class="col-sm-8">
								</div>
								<div class="col-sm-4" style=" text-align:right;">
								<!-- <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i><span style="margin-left:10px;">Добавить</span></button> -->
						         <a  href="#" class="mb-xs mt-xs mr-xs btn btn-primary" id="addModal"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;">Добавить </span></a>
								</div>
								</div>
						
								<h2 class="panel-title">Рудник</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/minefields/data">
									 <thead>
										 <tr>
											<th>Дата</th>
											<th>Название</th>
											<th>Действия</th>
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
		
	  					 <div id="modalForm" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Рудник</h2>
											</header>
											<div class="panel-body">
												<form id="addForm" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label">Название рудника</label>
														<div class="col-sm-9">
															<input type="text" name="minefields" class="form-control" id="minefields">
														</div>
													</div>
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="createbtn">Добавить</button>
														<button class="btn btn-default modal-dismiss" data-dismiss="modal">Закрить</button>
													</div>
												</div>
											</footer>
										</section>
									</div>


									
                               
                               
                                <div id="modalFormUpdate" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Рудник</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
											      	<input type="hidden"  name="recordid" class="form-control" id="recordid">
											     
											    <div class="form-group">
														<label class="col-sm-3 control-label">Название рудника</label>
														<div class="col-sm-9">
															<input type="text" name="minefields2" class="form-control" id="minefields2">
														</div>
													</div>
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="updatebtn">Обновить</button>
														<button class="btn btn-default modal-dismiss"data-dismiss="modal" >Закрить</button>
													
													</div>
												</div>
											</footer>
										</section>
									</div>

                               									
									
									
									

		
									
		
		
				
		   <!-- modalError --> 
                    <#include "/extra/modal_error.ftl">
            <!-- modalError --> 
            
                  <!-- modalSuccess --> 
                    <#include "/extra/modal_success.ftl">
               <!-- modalSuccess -->   
               
                    
                  <!-- modalSuccess --> 
                    <#include "/extra/modal_confirmation.ftl">
               <!-- modalSuccess --> 
               

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		
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
		<script src="/js/table/miner-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		
		
		$("#addModal").click(function(){
	       $("#modalForm").modal('show');
		})
		
		

		
												

		
		
		
		
		
		$("#createbtn").unbind("click");
		$("#createbtn").on("click",function(){
		   var add = {
			   "name":$("#minefields").val()
		   }
		   
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/minefields/create',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(add),
			  success:function(data){
			  	 $('#datatable-ajax').dataTable().fnDraw(true);
				 $("#modalForm").modal('hide'); 
				 $('#addForm')[0].reset();
			
			  }

			   
		   })
			
		});
		
		
		
		$("#updatebtn").unbind('click');
        $("#updatebtn").on('click',function(){
        	var update = {
        		  "id":$("#recordid").val(),	
      			  "name":$("#minefields2").val()
      		   }
           
	           $.ajax({
				  url:'${backend_url}/api/reports/v1/minefields/update',
				  method:'POST',
				  contentType: "application/json",
				  data:JSON.stringify(update),
				  success:function(data){
				   $('#datatable-ajax').dataTable().fnDraw(true);
				   $("#modalFormUpdate").modal('hide');
				  	 
					
					
				  }
	
				   
			   })		   
	        
        })
		
		
		
		 $("#add").on('click',function(){
			$("#equipment").select2('data',null);
		    $("#section").select2('data',null);
			$("#section2").select2('data',null);
			$("#plannedPayloadsCount").val(''); 
		    $("#plannedTrips").val('');
		    $("#plannedPayloadMass").val('');
		    $("#plannedDepoTrips").val('');
			 
		   $("#modalForm").modal('show');
		 });
        
        
      
        $("#load").click(function(){
      	  window.location = '${backend_url}/api/reports/v1/planassetpayload/xlsx';
      	 
       })
        

		
		</script>
		
	</body>
</html>