<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Плановые показатели датчиков газа</title>
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
						<h2>Плановые показатели датчиков газа</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Плановые показатели датчиков газа</span></li>
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
								<button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i><span style="margin-left:10px;">Скачать файл</span></button>
						        <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="add"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;">Добавить</span></button>
								</div>
								</div>
						
								<h2 class="panel-title">Плановые показатели датчиков газа</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/planamsrisk/data">
									 <thead>
										 <tr>
											<th>Дата</th>
											<th>Датчик газа</th>
											<th>Плановой показатель</th>
											<th>Погрешность датчика в %</th>
											<th></th>
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
												<h2 class="panel-title">Плановые показатели датчиков газа</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label">Датчик газа</label>
														<div class="col-sm-9">
															  <select id="sensorName" name="sensorName" data-plugin-selectTwo class="form-control populate">
															
											                </select>														
														
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"> Плановой показатель</label>
														<div class="col-sm-9">
															<input type="number" step="any" name="plannedValue" class="form-control" id="plannedValue" placeholder=" Плановой показатель">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Погрешность датчика в %</label>
														<div class="col-sm-9">
															<input type="number" step="any" name=errorVal" class="form-control" id="errorVal" placeholder="Погрешность датчика в %">
														</div>
													</div>
													
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="createbtn">Добавить</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" >Закрыть</button>
													</div>
												</div>
											</footer>
										</section>
									</div>


									
                               
                               
                                <div id="modalForm2" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Плановые показатели датчиков газа</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label">Датчик газа</label>
														<div class="col-sm-9">
															  <select id="sensorName2" name="sensorName2" data-plugin-selectTwo class="form-control populate">
															
											                </select>														
														
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"> Плановой показатель</label>
														<div class="col-sm-9">
															<input type="number"  step="any" name="plannedValue2" class="form-control" id="plannedValue2" placeholder=" Плановой показатель">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Погрешность датчика в %</label>
														<div class="col-sm-9">
															<input type="number" step="any" name=errorVal2" class="form-control" id="errorVal2" placeholder="Погрешность датчика в %">
														</div>
													</div>
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="updatebtn">Обновить</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" >Закрыть</button>
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
		<script src="/js/table/gas-gauge-targets-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		
 		$.ajax({
			
			url:'${backend_url}/api/strata/v1/ams/data',
			method:'POST',
			async: true,
		    contentType: "application/json",
			data:JSON.stringify({"start":0,"length":1000}),
			success:function(data){
			   for(var i=0; i < data.data.length; i++){
					$("#sensorName").append('<option value="'+data.data[i].ams.sensorSerialNumber+'">'+data.data[i]. ams.name+'</option>');
					$("#sensorName2").append('<option value="'+data.data[i].ams.sensorSerialNumber+'">'+data.data[i]. ams.name+'</option>');
				
			   }
			}
		}) 
		

		$("#createbtn").unbind("click");
		$("#createbtn").on("click",function(){

		 var add = {
			  "sensorSerialNumber":$("#sensorName").val(),
			  "plannedValue":Number($("#plannedValue").val()), 
		      "errorVal":Number($("#errorVal").val()),
		   };
		   
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/planamsrisk/create',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(add),
			  success:function(data){
				 $('#datatable-ajax').dataTable().fnDraw(true);
				 $("#modalForm").modal('hide');
			  }
		   });
		});
		
		
		
		$("#updatebtn").unbind('click');
        $("#updatebtn").on('click',function(){
            var update = {
               "sensorSerialNumber":$("#sensorName2").val(),
        	   "plannedValue":$("#plannedValue2").val(), 
        	   "errorVal":$("#errorVal2").val(),
		   };
           
	           $.ajax({
				  url:'${backend_url}/api/reports/v1/planamsrisk/update',
				  method:'POST',
				  contentType: "application/json",
				  data:JSON.stringify(update),
				  success:function(data){
				   $('#datatable-ajax').dataTable().fnDraw(true);
				   $("#modalForm2").modal('hide');
				  }
	
			   })		   
        })
		
		
		
		 $("#add").on('click',function(){
			  $("#sensorName").select2('data',null);
			  $("#plannedValue").val(''); 
		      $("#errorVal").val('');
			  $("#modalForm").modal('show');
		 });

        
         $("#load").click(function(){
        	  window.location = '${backend_url}/api/reports/v1/planamsrisk/xlsx';
        	 
         })
		

		
		</script>
		
	</body>
</html>