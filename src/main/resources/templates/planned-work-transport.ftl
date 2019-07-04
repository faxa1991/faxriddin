<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Плановое время работы транспорта</title>
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
						<h2><msg>planovayavremyaraboty</msg></h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span><msg>planovayavremyaraboty</msg></span></li>
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
								   <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i><span style="margin-left:10px;"><msg>skachatfile</msg></span></button>
						           <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="add"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;"><msg>dobavyt</msg></span></button>
							     </div>
								</div>
						
								<h2 class="panel-title"><msg>planovayavremyaraboty</msg></h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/planassetmovement/data">
									 <thead>
										 <tr>
											<th><msg>date</msg></th>
											<th><msg>texnika</msg></th>
											<th><msg>planovayarabotatrnsportadvishenie</msg></th>
											<th><msg>vr</msg></th>
											<th><msg>act</msg></th>
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
												<h2 class="panel-title"><msg>planovayavremyaraboty</msg></h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>texnika</msg></label>
														<div class="col-sm-9">
															  <select id="equipment" name="equipment" data-plugin-selectTwo class="form-control populate">
															
											                </select>
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayarabotatrnsportadvishenie</msg></label>
														<div class="col-sm-9">
															<input type="number" name="asserMovePTime" class="form-control" id="asserMovePTime" placeholder=""/>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>vr</msg></label>
														<div class="col-sm-9">
															<input type="number" name="assetHoldPTime" class="form-control" id="assetHoldPTime" placeholder=""/>
														</div>
													</div>
													
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="createbtn"><msg>refresh</msg></button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" ><msg>close</msg></button>
													</div>
												</div>
											</footer>
										</section>
									</div>


									
                               
                               
                                <div id="modalForm2" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title"><msg>planovayavremyaraboty</msg></h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>texnika</msg></label>
														<div class="col-sm-9">
															  <select id="equipment_2" name="equipment" data-plugin-selectTwo class="form-control populate">
															
											                </select>
														</div>
													</div>
						
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayarabotatrnsportadvishenie</msg></label>
														<div class="col-sm-9">
															<input type="number" name="asserMovePTime" class="form-control" id="asserMovePTime_2" placeholder="">
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>vr</msg></label>
														<div class="col-sm-9">
															<input type="number" name="assetHoldPTime" class="form-control" id="assetHoldPTime_2" placeholder="">
														</div>
													</div>
													
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="updatebtn"><msg>refresh</msg></button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" ><msg>close</msg></button>
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
		<script src="/js/table/planned-work-transport-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		

		
												
		
		$.ajax({
			url:"${backend_url}/api/reports/v1/equipment/data",
			method:"POST",
			contentType: "application/json",
			async: true,
			data:JSON.stringify({"start":0,"length":1000}),
			success:function(data){
				console.log(data);
				for(var i=0;i<data.data.length;i++){
					$('#equipment').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
                    $('#equipment_2').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				}
			}

		});
		
		
		
		
		
		$("#createbtn").unbind("click");
		$("#createbtn").on("click",function(){
		   var add = {
			  "equipment":{"id":$("#equipment").val()},
			  "asserMovePTime":$("#asserMovePTime").val(),
			  "assetHoldPTime":$("#assetHoldPTime").val()
			 
		    };
		   console.log(add);
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/planassetmovement/create',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(add),
			  success:function(data){
				 $('#datatable-ajax').dataTable().fnDraw(true);
				 $("#modalForm").modal('hide'); 
				
			  }

			   
		   })
			
		});
		
		
		
		$("#updatebtn").unbind('click');
        $("#updatebtn").on('click',function(){
            var update = {
			  "equipment":{"id":$("#equipment_2").val()},
			  "asserMovePTime":$("#asserMovePTime_2").val(),
			  "assetHoldPTime":$("#assetHoldPTime_2").val()
			 
		    };
           
	           $.ajax({
				  url:'${backend_url}/api/reports/v1/planassetmovement/update',
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
			  $("#equipment").select2('data',null);
			  $("#asserMovePTime").val('');
			  $("#assetHoldPTime").val('');
			 
			 $("#modalForm").modal('show');
		 });
		
        
        $("#load").click(function(){
        	  window.location = '${backend_url}/api/reports/v1/planassetmovement/xlsx';
        	 
         })
          
		

		
		</script>
		
	</body>
</html>