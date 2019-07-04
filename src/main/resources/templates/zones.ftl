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
	<body backend_url="${backend_url}" communicationNode="${communicationNode}">
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
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
								  
								</div>
							     <a href="/zones-add"  class=" mb-xs mt-xs mr-xs btn btn-primary" style="float:right; margin-right:10px; margin-top:2px;"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;">Добавить зону</span></a>
								
								
								<h2 class="panel-title">${name}</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/section/data">
									 <thead>
										 <tr>
											<th>Название</th>
											<th>Жилы</th>
											<th>Рудник</th>
											<th>Тип Зоны</th>
											<th>Вид Зоны</th>
											<th>Группа Зоны </th>
											<th>Метка</th>
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
												<h2 class="panel-title">Назначение метки</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<input type="hidden" id="record_id" name="equipment" class="form-control" >
											<div class="form-group">
												<label class="col-sm-3 control-label">Наименование зоны</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="name_zone" readonly="readonly">
												</div>
											</div>
									
										   <div class="form-group">
												 <label class="col-md-3 control-label">Метка</label>
												<div class="col-md-9">
												<select id="zone" name="zone" data-plugin-selectTwo class="form-control populate">
															
												</select>
												</div>
											</div>
										
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="attach">Привязать метку</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" >Закрыть</button>
													</div>
												</div>
											</footer>
										</section>
									</div>

							<div id="modalForm2" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Освобождение метки</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
												<input type="hidden" id="zone_id2" name="zone_id2" class="form-control" >
												<div class="form-group">
													<label class="col-sm-3 control-label">Наименование зоны</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" id="name_zone2" readonly="readonly">
													</div>
												</div>
												
												<input type="hidden" id="node_id2" name="node_id2" class="form-control" >
												<div class="form-group">
													<label class="col-sm-3 control-label" for="firstName">Метка</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" id="node_name2" readonly="readonly">
													</div>
												</div>
											
											
											
											</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="detach">Отвязать метку</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm2').modal('hide');" >Закрыть</button>
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
               
                             <!-- modalDelete --> 
                 <#include "/extra/modal_confirmation.ftl">
           <!-- modalDelete -->  
	
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
      
      
      	<script src="/js/main.js"></script>
		<!-- Examples -->
		<script src="/js/table/zones-table.js"></script>
	
		
	
		
		

		
		<script>
		
		reloadNodes();
		
		function reloadNodes(){
			
			$.ajax({
		    	   url:"${backend_url}/api/reports/v1/communication-node-detached/data",
		    	   method:"POST",
		    	   contentType:"application/json",
		    	   async:true,
		    	   data:JSON.stringify({"start":0,"length":10000}),
		    	   success:function(data){
		    		   $("#zone").find('option').remove();
		    		   console.log(data);
		    		   for(var i = 0; i < data.data.length; i++){
		    			   console.log(data.data[i].node.externalId)
		    			    if(data.data[i].node.externalId != null){
		    			    	$("#zone").append('<option value="'+data.data[i].id+'">'+data.data[i].node.name+'</option>');
		    			    }
		    			   
		    			     
		    		   }
		    		 
		    		   
		    	   }
		    	   
		       })
			
		}
		
	       
		
		
		$("#attach").unbind("click");
		$("#attach").on("click",function(){
		   var attach = {
			  "section": {"id":$("#record_id").val()},  
			  "node":{"id":$("#zone").val()}
		   }
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/section/attach',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(attach),
			  success:function(data){
				  $('#modalForm').modal('hide');
				  $('#datatable-ajax').dataTable().fnDraw(true);
				  success(data.message); 
				  reloadNodes()
			  }

			   
		   })
			
		});
		
		
		
	
	       
		$("#detach").unbind("click");
		$("#detach").on("click",function(){
		   var detach = {"id":$("#zone_id2").val() 
			  
		   }
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/section/detach',
			  method:'POST',
			  contentType: "application/json",
			  data:JSON.stringify(detach),
			  success:function(data){
				  $('#modalForm2').modal('hide');
				  $('#datatable-ajax').dataTable().fnDraw(true);
				  success(data.message); 
				  reloadNodes()
			  }

			   
		   })
			
		});
		 
		
		
		
		</script>
		
	</body>
</html>