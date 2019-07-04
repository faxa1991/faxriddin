<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Новая зона</title>
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
		<link rel="stylesheet" href="assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" href="assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-tagsinput/bootstrap-tagsinput.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-colorpicker/css/bootstrap-colorpicker.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-timepicker/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="assets/vendor/dropzone/css/basic.css" />
		<link rel="stylesheet" href="assets/vendor/dropzone/css/dropzone.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-markdown/css/bootstrap-markdown.min.css" />
		<link rel="stylesheet" href="assets/vendor/summernote/summernote.css" />
		<link rel="stylesheet" href="assets/vendor/summernote/summernote-bs3.css" />
		<link rel="stylesheet" href="assets/vendor/codemirror/lib/codemirror.css" />
		<link rel="stylesheet" href="assets/vendor/codemirror/theme/monokai.css" />

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

			<!-- start: header -->
			 <#include "/extra/header.ftl">
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				 <#include "/extra/aside.ftl">
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Новая зона</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Новая зона</span></li>
								
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"></a>
						</div>
					</header>

					<!-- start: page -->
						<div class="row">
							<div class="col-xs-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											
										</div>
						
										<h2 class="panel-title">Новая зона</h2>
									</header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" id="addform" >
										   <div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Наименование зоны<span class="required">*</span></label>
												<div class="col-md-6">
														<input type="text" class="form-control" id="name" name="name" required>
												</div>
											</div>
										   <div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Тип зоны<span class="required">*</span></label>
												<div class="col-md-6">
													<select id="typezone" name="typezone" data-plugin-selectTwo class="form-control populate" required>
														
													</select>
												</div>
											</div>
										   <div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Вид зоны<span class="required">*</span></label>
												<div class="col-md-6">
													<select id="vidzone" name="vidzone" data-plugin-selectTwo class="form-control populate" required>
														
													</select>
												</div>
											</div>
											   <div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Группа зоны<span class="required">*</span></label>
												<div class="col-md-6">
													<select id="groupzone" name="groupzone" data-plugin-selectTwo class="form-control populate" required>
														
													</select>
												</div>
											</div>
											  <div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Жилы<span class="required">*</span></label>
												<div class="col-md-6">
													<select id="lode" name="lode" data-plugin-selectTwo class="form-control populate" required>
														
													</select>
												</div>
											</div>
											
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Уровень сигнала<span class="required">*</span></label>
												<div class="col-md-6">
													<input type="number" class="form-control" id="minSignalStrength" name="minSignalStrength" required>
												</div>
											</div>
										   
										   	<div class="form-group">
												<label class="col-md-3 control-label" for="tabelNumber">Номер заборя<span class="required">*</span></label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="mineFaceNum" name="mineFaceNum" required>
												</div>
											</div>
											
											
											  	<div class="form-group">
												 <label class="col-md-3 control-label" for="tabelNumber">Открытая зона<span class="required">*</span></label>
												    	<div class="col-md-6">
													       <div class="checkbox-custom checkbox-primary" style="margin-top:5px;">
																<input type="checkbox"  id="isAlowed">
                                                                <label for="isAlowed"></label>														
															</div>
												    </div>
												  
											</div>
									     
									    
									   
									   
											
											  <footer class="panel-footer" style="margin-top:10px; text-align:right;">
												<button type="button"  class="btn btn-primary save">Сохранить</button>
												<button type="reset" class="btn btn-default">Очистить</button>
											</footer>
						
										</form>
									</div>
								</section>
							</div>
						</div>
					
					<!-- end: page -->
				</section>
			</div>

		
		</section>
		
		
		   <!-- modalError --> 
                 <#include "/extra/modal_error.ftl">
           <!-- modalError -->  
           

		
		   

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
		<script src="assets/vendor/select2/select2.js"></script>
		<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="assets/vendor/jquery-maskedinput/jquery.maskedinput.js"></script>
		<script src="assets/vendor/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
		<script src="assets/vendor/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="assets/vendor/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		<script src="assets/vendor/fuelux/js/spinner.js"></script>
		<script src="assets/vendor/dropzone/dropzone.js"></script>
		<script src="assets/vendor/bootstrap-markdown/js/markdown.js"></script>
		<script src="assets/vendor/bootstrap-markdown/js/to-markdown.js"></script>
		<script src="assets/vendor/bootstrap-markdown/js/bootstrap-markdown.js"></script>
		<script src="assets/vendor/codemirror/lib/codemirror.js"></script>
		<script src="assets/vendor/codemirror/addon/selection/active-line.js"></script>
		<script src="assets/vendor/codemirror/addon/edit/matchbrackets.js"></script>
		<script src="assets/vendor/codemirror/mode/javascript/javascript.js"></script>
		<script src="assets/vendor/codemirror/mode/xml/xml.js"></script>
		<script src="assets/vendor/codemirror/mode/htmlmixed/htmlmixed.js"></script>
		<script src="assets/vendor/codemirror/mode/css/css.js"></script>
		<script src="assets/vendor/summernote/summernote.js"></script>
		<script src="assets/vendor/bootstrap-maxlength/bootstrap-maxlength.js"></script>
		<script src="assets/vendor/ios7-switch/ios7-switch.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

        <script src="/assets/vendor/jquery-validation/jquery.validate.js"></script>
		<!-- Examples -->
		<script src="assets/javascripts/forms/examples.advanced.form.js" /></script>
		
		<script src="/js/main.js"></script>

		<script type="text/javascript">
			
		 $.ajax({
				url:"${backend_url}/api/reports/v1/typezone/data",
				method:"POST",
				contentType: "application/json",
				data:JSON.stringify({"start":0,"length":10000}),
				async:false,
				success:function(data){
					$('#typezone').append('<option></option>');
					for(var i=0;i < data.data.length;i++){
						 $('#typezone').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
					}
				
				}
				
			});
			
		 
		 $.ajax({
				url:"${backend_url}/api/reports/v1/vidzone/data",
				method:"POST",
				contentType: "application/json",
				data:JSON.stringify({"start":0,"length":10000}),
				async:false,
				success:function(data){
					$('#vidzone').append('<option></option>');
					for(var i=0;i < data.data.length;i++){
						 $('#vidzone').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
					}
				
				}
				
			});
		 $.ajax({
				url:"${backend_url}/api/reports/v1/groupzone/data",
				method:"POST",
				contentType: "application/json",
				data:JSON.stringify({"start":0,"length":10000}),
				async:false,
				success:function(data){
					$('#groupzone').append('<option></option>');
					for(var i=0;i < data.data.length;i++){
						 console.log(data.data[i].name);
						$('#groupzone').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>'); 
					}
				
				}
				
			});
			
		 $.ajax({
				url:"${backend_url}/api/reports/v1/lode/data",
				method:"POST",
				contentType: "application/json",
				data:JSON.stringify({"start":0,"length":10000}),
				async:false,
				success:function(data){
					$('#lode').append('<option></option>');
					for(var i=0;i < data.data.length;i++){
						 $('#lode').append('<option value="'+data.data[i].id+'">'+data.data[i].name+'</option>');
					}
				
				}
				
			});
			
			
		 
		 
		 
			attachValidator("addform",function(){
				 
			
				
				
				
				
			 	var section = {
						 "name": $("#name").val(),
						 "typeZone":{"id":$("#typezone").val()},
						 "vidZone":{"id":$("#vidzone").val()},
						 "groupZone":{"id":$("#groupzone").val()},
						 "minSignalStrength":$("#minSignalStrength").val(),
						 "isAlowed":$("#isAlowed").is(":checked"),
						 "mineFaceNum":$("#mineFaceNum").val(),
						 "lode":{"id":$("#lode").val()}
					};   

					$.ajax({
						url:"${backend_url}/api/reports/v1/section/create",
						method:"POST",
						contentType: "application/json",
						data:JSON.stringify(section),
						async:false,
						success:function(data){
							successOnNextPage('Зона успешно добавлена');
							window.location.href='/zones-all';
						
						  
						}
						
					}); 
					
			 });
					
		 
		 
		 
			
			
			
		</script>
	</body>
</html>