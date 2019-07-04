<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>${name}</title>
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
	<body backend_url="${backend_url}" shift = "${shift}">
		<section class="body">
        



		<#include "/extra/header.ftl">
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>${name}</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>${name}</span></li>
								
							</ol>
					
							<a class="sidebar-right-toggle" ></a> 
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
								</div>
								 <a href="/employes-add"  class="mb-xs mt-xs mr-xs btn btn-primary" style="float:right; margin-right:10px; margin-top:2px;"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;">Добавить сотрудника</span></a>
						      
						         							
						        
						        
								<h2 class="panel-title">${name}</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/employe/data">
									 <thead>
										 <tr>
											<th>Имя</th>
											<th>Фамилия</th>
											<th>Табельный номер</th>
											<th>Должность</th>
											<th>Commtrac node</th>
											<th>Действие</th>
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
												<h2 class="panel-title">Начало смены</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<input type="hidden" id="employe_id" name="employe" class="form-control" >
													<div class="form-group mt-lg">
														<label class="col-sm-3 control-label">Имя сотрудника</label>
														<div class="col-sm-9">
															<input type="text" id="employe_firstname" name="employe_firstname" class="form-control" readonly="readonly" >
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Фамилия</label>
														<div class="col-sm-9">
															<input type="text" name="firstName" class="form-control" id="firstName"  readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Табельный номер</label>
														<div class="col-sm-9">
															<input type="text" name="personnel_number" class="form-control" id="personnel_number" readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Должность</label>
														<div class="col-sm-9">
															<input type="text" name="position" class="form-control" id="position"readonly="readonly">
														</div>
													</div>
													
													<div class="form-group">
													  <label class="col-md-3 control-label">Commtrac node</label>
													  <div class="col-md-9">
														<select id="employe-type-select" name="employe2" data-plugin-selectTwo class="form-control populate">
															
														</select>
												</div>
											</div>
											
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="attach">Начать смену</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" >Cancel</button>
													</div>
												</div>
											</footer>
										</section>
									</div>

							<div id="modalForm2" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Окончание смены</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<input type="hidden" id="employe_id2" name="employe" class="form-control" >
													<div class="form-group mt-lg">
														<label class="col-sm-3 control-label">Имя сотрудника</label>
														<div class="col-sm-9">
															<input type="text" id="employe_firstname2" name="employe_firstname" class="form-control" readonly="readonly" >
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Фамилия</label>
														<div class="col-sm-9">
															<input type="text" name="firstName" class="form-control" id="firstName2"  readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Табельный номер</label>
														<div class="col-sm-9">
															<input type="text" name="personnel_number2" class="form-control" id="personnel_number2" readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">Должность</label>
														<div class="col-sm-9">
															<input type="text" name="position2" class="form-control" id="position2"readonly="readonly">
														</div>
													</div>
													
													<div class="form-group">
													  <label class="col-md-3 control-label">Commtrac node</label>
													  <div class="col-md-9">
														<input type="text" name="position" class="form-control" id="contrac_node_id2"readonly="readonly">
													  </div>
													</div>
													<div class="form-group">
													   <label class="col-md-3 control-label">Смена</label>
														<div class="col-md-9">
														  <input type="text" name="position" class="form-control" id="shift_id2"readonly="readonly">
														</div>
													</div>
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="detach">Закончить смену</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm2').modal('hide');" >Cancel</button>
													</div>
												</div>
											</footer>
										</section>
									</div>
									
									
									
									
									
		                 <div id="modalFormAllemployes" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Начало смены</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
												      	<div class="form-group">
														  <label class="col-md-3 control-label">Сотрудники</label>
														  <div class="col-md-9">
															<select id="employe-type-select" name="employe2" data-plugin-selectTwo class="form-control populate">
																
															</select>
													</div>
												</div>
														
												  <div class="form-group">
													  <label class="col-md-3 control-label">Commtrac node</label>
														<div class="col-md-9">
														  <select id="employe-type-select" name="employe2" data-plugin-selectTwo class="form-control populate">
																
														</select>
													</div>
												</div>
												
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="attach">Начать смену</button>
														<button class="btn btn-default modal-dismiss" data-dismiss="modal" >Cancel</button>
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
               
               <#include "/extra/modal_confirmation.ftl">  

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
		<script src="/js/table/employes-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
	
		
		
		employes();
	   
		function employes(){
			$.ajax({
				url:"${backend_url}/api/strata/v1/employe/data",
				method:"POST",
				contentType: "application/json",
				data:JSON.stringify({"start":0,"length":10000}),
				success:function(data){
					$("#employe-type-select").find('option').remove();
					console.log(data);
					for(var i=0;i<data.data.length;i++){
						$('#employe-type-select').append('<option value="'+data.data[i].id+'">'+data.data[i].nickname+' ('+ data.data[i].commtracExternalId+')</option>');

					}
				}

			});
		}

		
		
		$("#attach").unbind("click");
		$("#attach").on("click",function(){
		   var attach = {
			  "employe": {"id":$("#employe_id").val()},  
			  "employe2":{"id":$("#employe-type-select").val()},
			  "shift":{"id":$("#employe-type-select2").val()}
		   }
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/employe/attach',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(attach),
			  success:function(data){
				  $('#modalForm').modal('hide');
				  $('#datatable-ajax').dataTable().fnDraw(true);
				  success(data.message);
				  employes();
				   
			  }

			   
		   })
			
		});
		
		
		$("#detach").unbind("click");
		$("#detach").on("click",function(){
		   var attach = {
			  "id":$("#employe_id2").val()
		   }
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/employe/detach',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(attach),
			  success:function(data){
				  $('#modalForm2').modal('hide');
				  $('#datatable-ajax').dataTable().fnDraw(true);
				  success(data.message);
				  employes();
				   
			  }

			   
		   })
			
		});
		
		$(".fa-chain").unbind("click");
		$(".fa-chain").on("click",function(){
			$("#modalFormAllemployes").modal('show');
			
		});
		
		
	
		
		
		
		</script>
		
	</body>
</html>