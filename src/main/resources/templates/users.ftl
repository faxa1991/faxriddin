<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Пользаватели</title>
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
						<h2>Пользаватели</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Пользаватели</span></li>
								
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
								</div>
						         <a id="modalshow" class=" mb-xs mt-xs mr-xs btn btn-primary" style="float:right; margin-right:10px; margin-top:2px;"><i class="fa fa-plus-circle"></i><span style="margin-left:10px;">Добавить</span></a>
								<h2 class="panel-title">Пользаватели</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/management/accounts/data">
									 <thead>
										 <tr>
											<th>id</th>
											<th>Логин</th>
											<th>Имя</th>
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
												<h2 class="panel-title">Пользаватели</h2>
											</header>
											<div class="panel-body">
											 <div id="message" style="text-align:center;"> </div>
											 
											 <form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
											  <div class="form-group">
												<label class="col-sm-3 control-label">Имя</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="name" >
												</div>
											</div>
											
										    <div class="form-group">
												<label class="col-sm-3 control-label">Логин</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="login" >
												</div>
											</div>
									
										   <div class="form-group">
												 <label class="col-md-3 control-label">Пароль</label>
												<div class="col-md-9">
												   <div class="input-group mb-md">
												        <input type="password" class="form-control" id="password" >
														 <span class="input-group-addon password"><i class="fa fa-eye"></i></span>
													</div>
												
												</div>
											</div>
										
										
										  	
											
											   <div class="form-group">
												 <label class="col-md-3 control-label">Повторить пароль</label>
												<div class="col-md-9">
												  <div class="input-group mb-md">
														<input type="password" class="form-control" id="passwordreapet">
														 <span class="input-group-addon passwordrepeat"><i class="fa fa-eye"></i></span>
													</div>
												</div>
											</div>
											
											
												
											  
											 <div class="form-group">
												 <label class="col-md-3 control-label"  style=" margin-top:-10px">Роли</label>
												  <div class="col-md-9" id="checkbox">
												  	
												</div>
											</div>	
												
												
										  </form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="save">Сохранить</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalForm').modal('hide');" >Закрыть</button>
													</div>
												</div>
											</footer>
										</section>
									</div>


                          			 <div id="modalFormView" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Просмотр</h2>
											</header>
											<div class="panel-body">
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
										     
											<div class="form-group">
												<label class="col-sm-3 control-label">Имя</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="name2" readonly>
												</div>
											</div>
									     
									     	<div class="form-group">
												<label class="col-sm-3 control-label">Логин</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="login2" readonly>
												</div>
											</div>
									        
									        
									          <div class="form-group">
												 <label class="col-md-3 control-label"  style=" margin-top:-10px">Роли</label>
												  <div class="col-md-9" id="checkbox2">
												  	
												</div>
											</div>
										   
											</div>
									    </form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
													
														<button class="btn btn-default modal-dismiss" onclick="$('#modalFormView').modal('hide');" >Закрыть</button>
													</div>
												</div>
											</footer>
										</section>
									</div>


                  			 <div id="modalFormUpdate" tabindex="-1" role="dialog" class="modal fade" aria-hidden="true">
										<section class="modal-dialog" role="document">
											<header class="panel-heading">
												<h2 class="panel-title">Редактирование</h2>
											</header>
											<div class="panel-body">
											   <div id="message2"></div>
											
												<form id="demo-form" class="form-horizontal mb-lg" novalidate="novalidate">
										     <input type="hidden" id="record_id">
											<div class="form-group">
												<label class="col-sm-3 control-label">Имя</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="nameupdate" >
												</div>
											</div>
									     
									       	<div class="form-group">
												<label class="col-sm-3 control-label">Логин</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" id="loginupdate">
												</div>
											</div>
									
									
									
									
									
										  
										
										
											 <div class="form-group">
												 <label class="col-md-3 control-label"  style=" margin-top:-10px">Функции</label>
												  <div class="col-md-9" id="checkbox3">
												  	
												</div>
											</div>
										
										
										
										
											
												</form>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button type="button" class="btn btn-primary modal-confirm" id="save2">Сохранить</button>
														<button class="btn btn-default modal-dismiss" onclick="$('#modalFormUpdate').modal('hide');" >Закрыть</button>
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
		<script src="/js/table/users-table.js"></script>
	
		
	
		
		

		
		<script>
		
		$.ajax({
		   url:'${backend_url}/management/roles/roles-data',
		   method:'POST',
		   async:false,	 
		   contentType: "application/json",
		   data:JSON.stringify({"start":0,"length":1000}),
		   success:function(e){
			 	 console.log(e.data);
			 	      for(var i=0; i < e.data.length; i++){
				       console.log(e.data[i].id);
				   	 $("#checkbox").append(
		  					   "<div class='checkbox-custom checkbox-primary'>"+
		   					   "<input type='checkbox' class='functionsGroupName "+e.data[i].id+"' value='"+e.data[i].id+"'>"+
		   					   "<label for='checkboxExample2'>"+e.data[i].name+"</label>"+
		   				"</div>" 
		 				 
		     		   ); 
		    			 
				   	 $("#checkbox2").append(
		  					   "<div class='checkbox-custom checkbox-primary'>"+
		   					   "<input type='checkbox' class='functionsGroupName2 "+e.data[i].id+"' value='"+e.data[i].id+"' disabled>"+
		   					   "<label for='checkboxExample2'>"+e.data[i].name+"</label>"+
		   				"</div>" 
		 				 
		     		   );
				   	 
				   	 $("#checkbox3").append(
		  					   "<div class='checkbox-custom checkbox-primary'>"+
		   					   "<input type='checkbox' class='functionsGroupName3 "+e.data[i].id+"' value='"+e.data[i].id+"' >"+
		   					   "<label for='checkboxExample2'>"+e.data[i].name+"</label>"+
		   				"</div>" 
		 				 
		     		   );
			 	      
			 	    } 
		
		   
		   }	   
			
			
			
		})
		
		
		
		
		 $(".password").click(function(){
			  if($("#password").attr('type') == 'password'){
				  $("#password").attr('type','text');
			  }else if($("#password").attr('type') == 'text'){
				  $("#password").attr('type','password');    
			  } 
			
		 })
		
		 
		   $(".passwordrepeat").click(function(){
			  if($("#passwordreapet").attr('type') == 'password'){
				  $("#passwordreapet").attr('type','text');
			  }else if($("#passwordreapet").attr('type') == 'text'){
				  $("#passwordreapet").attr('type','password');    
			  } 
			
		 })
		
		 

		
		 

		
		
		$("#modalshow").unbind('click');
		$("#modalshow").on('click',function(){
			$("#modalForm").modal('show');
			 
		});
		
		
		

		 
	       
     
     $("#save").unbind('click');
     $("#save").on('click',function(){
    
    	 var save = {
          "login":$("#login").val(),
    	  "name":$("#name").val(),
    	  "password":$("#password").val(),
    	  "roles":[
    	   
    	  ]	   
    			  
    	};
    	  $('#checkbox').find('.functionsGroupName').each(function(i){
    		  if($(this).is(":checked"))
    			  save.roles.push({'role':{'id':$(this).val()}});
    	  });
    	  
    	  
    	  if($("#password").val() != $("#passwordreapet").val()){
    		  $("#message").append(
    				  "<div class='alert alert-danger'>"+'Пароли не совпадают'+
	         	"</div>"	  
    		  )
    		 
    	  }else{
    		  
    		  $.ajax({
        		  url:'${backend_url}/management/accounts/save-account',
        		  method:'POST',
        		  contentType: "application/json",
        		  async:false,
        		  data:JSON.stringify(save),
        		  success:function(e){
        			  $('#datatable-ajax').dataTable().fnDraw(true);
        			  $("#modalForm").modal('hide'); 
        		  }
        	  }) 
    		  
    	  }
    	  
    	  

    	  
    	 
     });	
		
  
     
     $("#save2").unbind('click');
     $("#save2").on('click',function(){
    	
    	 var save = {
    	     "id":$("#record_id").val(),
    		 "login":$("#loginupdate").val(),
    	     "name":$("#nameupdate").val(),
    	     "roles":[
    	    	   
    	    	  ]	   
    	    			  
    	    	};   
    			  
    
    	  $('#checkbox3').find('.functionsGroupName3').each(function(i){
    		  if($(this).is(":checked"))
    			  save.roles.push({'role':{'id':$(this).val()}});
    	  });
    	  
    	  
      	  if($("#password3").val() != $("#passwordreapet3").val()){
    		  $("#message2").append(
    				  "<div class='alert alert-danger'>"+'Пароли не совпадают'+
	         	"</div>"	  
    		  )
    		 
    	  }else{
    		  $.ajax({
        		  url:'${backend_url}/management/accounts/save-account',
        		  method:'POST',
        		  contentType: "application/json",
        		  async:false,
        		  data:JSON.stringify(save),
        		  success:function(e){
        			  $('#datatable-ajax').dataTable().fnDraw(true);
        			  $("#modalFormUpdate").modal('hide'); 
        		  }
        	  })
    		  
    	  }
    
    	  
    	 
     });	
	
		

		 
		
		
		
		</script>
		
	</body>
</html>