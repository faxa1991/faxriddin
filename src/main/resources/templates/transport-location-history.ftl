<!doctype html>
<html class="fixed">
	<head>
	

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>История местоположения транспорта</title>
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
		<!-- start: page -->
		
		<section class="body">
        



		<#include "/extra/header.ftl">
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>История местоположения транспорта</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>История местоположения транспорта</span></li>
								
							</ol>
					
							 <a class="sidebar-right-toggle" ></a> 
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
								
								
								</div>
						
								<h2 class="panel-title">История местоположения транспорта</h2>
							</header>
							<div class="panel-body">
								     <div class="col row" style="padding-bottom:20px;">
								      
								       <form>
								        <div class="col-sm-4">
								          	<div class="form-group col-sm-12 xx">
												 <label class="control-label">Наименование тс</label>
												  <select id="equipment" name="equipment" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Тип зоны</label>
												  <select id="zone-type" name="zone-type" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Подразделение</label>
												  <select id="employe-type-select" name="employe2" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>	
								        </div>
								          <div class="col-sm-4">
								          	<div class="form-group col-sm-12">
												 <label class="control-label">Тип тс</label>
												  <select id="equipment-type" name="equipment-type" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Вид зоны</label>
												  <select id="zone-vid" name="zone-vid" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Вид рудника</label>
												  <select id="minefield" name="minefield" data-plugin-selectTwo class="form-control populate ">
															
											  </select>
										   </div>	
								        </div>
								         <div class="col-sm-4">
								          	<div class="form-group col-sm-12">
												 <label class="control-label">Наименование места</label>
												  <select id="section" name="section" data-plugin-selectTwo class="form-control populate ">
															
											  </select>
										   </div>
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Наименование жилы</label>
												  <select id="lode" name="lode" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
										  
								        </div>
								           
								           <div class="col-sm-12 row" style="padding-top:10px;">
								          	   	<div class="form-group col-sm-3" style="margin-left:15px;">
												 <label class="control-label">Дата от</label>
												 <input type="text"  id="date-from" data-plugin-datepicker="" data-plugin-options='{"format": "  yyyy-mm-dd"}'  class="form-control">
										    </div>
										     
										     <div class="form-group col-sm-2">
												 <label class="control-label">Время</label>
												 <input type="text" data-plugin-timepicker="" id="time-from" class="form-control">
										    </div>
										     
										     
										     <div class="form-group col-sm-3">
												 <label class="control-label">Дата до</label>
												 <input type="text" id="date-to" data-plugin-datepicker="" data-plugin-options='{"format": "  yyyy-mm-dd"}'  class="form-control x">
										    </div>
										   
										   
										      <div class="form-group col-sm-2">
												 <label class="control-label">Время</label>
												 <input type="text" data-plugin-timepicker="" id="time-to"  class="form-control">
										    </div>
								        </div>
								        
								       <!--   <div class="col-sm-5" style="padding-top:10px;">
								           	<div class="form-group col-sm-12">
												 <label class="control-label">Интервал вывода строк</label>
												  <select id="employe-type-select" name="employe2" data-plugin-selectTwo class="form-control populate">
															
											  </select>
										   </div>
								        </div> -->
								        
								        
								           <div class="col-sm-12 row " style="padding-top:10px;">
								           	<div class="form-group col-sm-5"  style="margin-left:10px;">
												 <button type="button" id="search-btn" class="mb-xs mt-xs mr-xs btn btn-primary">Применить фильтр</button>
												 <button type="button" class="mb-xs mt-xs mr-xs btn btn-default" id="refresh"><i class="fa fa-refresh"></i> Очистить фильтр</button>
										         <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i> <span style="margin-left:10px;">Скачать файл</span></button>
												 
										   </div>
								        </div>
								 
								        
								     </form>
								    
								    </div>
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/otmachinehistory/data">
									 <thead>
										 <tr>
											<th>Id обьекта</th>
											<th>Наименование обьекта</th>
											<th>Дата время с</th>
											<th>Дата время по</th>
											<th>Время в зоне (сек)</th>
											<th> id зоны</th>
											<th>Наименование зоны</th>
											<th>Тип зоны</th>
											<th>Вид зоны</th>
											<th>Группа зоны</th>
											<th>Запрет / Разр.</th>
											<th>Тип обьекта</th>
											<th>Наименование жилы</th>
											<th>Подразделение</th>
											<th>Рудник</th>
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
		<script src="/js/table/transport-location-history-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		

		$.ajax({
			  url:'${backend_url}/api/reports/v1/typezone/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#zone-type').find('option').remove();
				  $('#zone-type').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#zone-type').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });

	   $.ajax({
			  url:'${backend_url}/api/reports/v1/vidzone/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#zone-vid').find('option').remove();
				  $('#zone-vid').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#zone-vid').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });		   
		   
	   $.ajax({
			  url:'${backend_url}/api/reports/v1/equipmenttype/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":1000}),
			  success:function(data){
				  $('#equipment-type').find('option').remove();
				  $('#equipment-type').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#equipment-type').append('<option value="'+data.data[i].id+'">'+data.data[i].equipmentType.name+'</option>');
				  }
			  }

			   
		   });
	   
	   $.ajax({
			  url:'${backend_url}/api/reports/v1/equipment/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#equipment').find('option').remove();
				  $('#equipment').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#equipment').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });		
	   
	   $.ajax({
			  url:'${backend_url}/api/reports/v1/minefields/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":1000}),
			  success:function(data){
				  $('#minefield').find('option').remove();
				  $('#minefield').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#minefield').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });
	   
	   $.ajax({
			  url:'${backend_url}/api/reports/v1/lode/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#lode').find('option').remove();
				  $('#lode').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#lode').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });			   

	   $.ajax({
			  url:'${backend_url}/api/reports/v1/section/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#section').find('option').remove();
				  $('#section').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#section').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
				  }
			  }

			   
		   });	
	   
	   $('#search-btn').unbind('click');
	   $('#search-btn').on('click',function(e){
		   $('#datatable-ajax').dataTable().fnDraw(true);
	   });
	   
	      $("#refresh").unbind('click');
		    $("#refresh").on('click',function(){
			   $("#zone-vid").select2('data', null);
		       $("#zone-type").select2('data', null);
		       $("#lode").select2('data', null);
		       $("#minefield").select2('data', null);
		       $("#equipment-type").select2('data', null);
		       $("#equipment").select2('data', null);
		       $("#section").select2('data', null);
		       
		       
		       $('#date-from').val('').datepicker('update');
		       $('#date-to').val('').datepicker('update');
		       $('#time-from').val('');
		       $('#time-to').val('');
		       $('#datatable-ajax').dataTable().fnDraw(true);
		      
		    
		    }); 
	   
	   
	   
		  
	   
	   
		    
		        $("#load").on('click',function(){
		          $.ajax({
		            url:'${backend_url}/api/reports/v1/otmachinehistory/xlsx',
		            method:'POST',
		            contentType: "application/json",
		            async:false,
		            data:localStorage.getItem('tableRequest'),
		            success:function(data){
		              console.log(data);
		              window.location.href = '${backend_url}/api/reports/v1/otmachinehistory/xlsx?key='+data;
		            }
		           });  
		        })

		 

		      
		
		
		</script>
	</body>
</html>