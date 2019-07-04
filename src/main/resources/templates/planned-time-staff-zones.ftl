<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Плановое время нахождения персонала по зонам</title>
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
						<h2><msg>planovayanaxoshdeniepersonala</msg></h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span><msg>planovayanaxoshdeniepersonala</msg></span></li>
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
								
								<h2 class="panel-title"><msg>planovayanaxoshdeniepersonala</msg></h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/planemplzone/data">
									 <thead>
										 <tr>
											<th><msg>date</msg></th>
											<th><msg>zone</msg></th>
											<th><msg>planavovayavremyahroxoshdeniya</msg></th>
											<th><msg>planovayavremazaboya</msg></th>
											<th><msg>planovayavremasledovaniezaboya</msg></th>
											<th><msg>planovayavremavixodzaboya</msg> </th>
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
												<h2 class="panel-title"><msg>planovayanaxoshdeniepersonala</msg></h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>zone</msg></label>
														<div class="col-sm-9">
															  <select id="sectionid" name="sectionid" data-plugin-selectTwo class="form-control populate">
															
											                </select>
														</div>
													</div>
											
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planavovayavremyahroxoshdeniya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="surfacePTime" class="form-control" id="surfacePTime" placeholder="">
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremazaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefacePTime" class="form-control" id="minefacePTime" placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremasledovaniezaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefaceDeliveryPTime" class="form-control" id="minefaceDeliveryPTime" placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremavixodzaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefaceReturnPTime" class="form-control" id="minefaceReturnPTime" placeholder="">
														</div>
													</div>
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="createbtn"><msg>dobavyt</msg></button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" ><msg>close</msg></button>
													</div>
												</div>
											</footer>
										</section>
									</div>


									
                               
                               
                                <div id="modalForm2" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title"><msg>planovayanaxoshdeniepersonala</msg></h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
																<div class="form-group">
														<label class="col-sm-3 control-label"><msg>zone</msg></label>
														<div class="col-sm-9">
															  <select id="sectionid2" name="sectionid2" data-plugin-selectTwo class="form-control populate">
															
											                </select>
														</div>
													</div>
											
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planavovayavremyahroxoshdeniya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="surfacePTime2" class="form-control" id="surfacePTime2" placeholder="Плановое время на поверхности, мин">
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremazaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefacePTime2" class="form-control" id="minefacePTime2" placeholder="Плановое время работы в забое, мин">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremasledovaniezaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefaceDeliveryPTime2" class="form-control" id="minefaceDeliveryPTime2" placeholder="Плановое время следования в забой, мин">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label"><msg>planovayavremavixodzaboya</msg></label>
														<div class="col-sm-9">
															<input type="number" name="minefaceReturnPTime2" class="form-control" id="minefaceReturnPTime2" placeholder="Плановое время выхода из забоя, мин">
														</div>
													</div>
										
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="updatebtn"><msg>refresh</msg></button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm2').modal('hide');" ><msg>close</msg></button>
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
		<script src="/js/table/planned-time-staff-zones-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		
		$.ajax({
			
			url:'${backend_url}/api/reports/v1/section/data',
			method:'POST',
			async: true,
		    contentType: "application/json",
			data:JSON.stringify({"start":0,"length":1000}),
			success:function(data){
			   for(var i=0; i < data.data.length; i++){
					$("#sectionid").append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
					$("#sectionid2").append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
			   }
			}
		})
		
		
		
		
		
		
		
		
		$("#createbtn").unbind("click");
		$("#createbtn").on("click",function(){
		   var add = {
			  "section":{"id":$("#sectionid").val()},
			  "surfacePTime":$("#surfacePTime").val(), 
		      "minefacePTime":$("#minefacePTime").val(),
		      "minefaceDeliveryPTime":$("#minefaceDeliveryPTime").val(),
		      "minefaceReturnPTime":$("#minefaceReturnPTime").val(),
		   };
		   
		   
		   $.ajax({
			  url:'${backend_url}/api/reports/v1/planemplzone/create',
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
            	  "section":{"id":$("#sectionid2").val()},
       			  "surfacePTime":$("#surfacePTime2").val(), 
       		      "minefacePTime":$("#minefacePTime2").val(),
       		      "minefaceDeliveryPTime":$("#minefaceDeliveryPTime2").val(),
       		      "minefaceReturnPTime":$("#minefaceReturnPTime2").val(),
		   };
           
	           $.ajax({
				  url:'${backend_url}/api/reports/v1/planemplzone/update',
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
			  $("#sectionid").select2("data",null);
			  $("#surfacePTime").val(''); 
		      $("#minefacePTime").val('');
		      $("#minefaceDeliveryPTime").val('');
		      $("#minefaceReturnPTime").val(''); 
		   $("#modalForm").modal('show');
		 });
		
        
        
        $("#load").click(function(){
      	  window.location = '${backend_url}/api/reports/v1/planemplzone/xlsx';
      	 
       })
		

		
		</script>
		
	</body>
</html>