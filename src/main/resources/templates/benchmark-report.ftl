<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Табельный отчет</title>
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
						<h2>Табельный отчет</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="/">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Табельный отчет</span></li>
								
							</ol>
					
							 <a class="sidebar-right-toggle" ></a> 
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									
								</div>
						
								<h2 class="panel-title">Табельный отчет</h2>
							</header>
							<div class="panel-body">
								     <div class="col row" style="padding-bottom:20px;">
								      
								       <form>
								        <div class="col-sm-4">
								          	<div class="form-group col-sm-12">
												 <label class="control-label">Год</label>
												  <select id="year" name="year" data-plugin-selectTwo class="form-control populate">
												   <option></option>	
												   <option value="2019">2019</option>			
												   <option value="2020">2020</option>
												   <option value="2021">2021</option>
												   <option value="2022">2022</option>
												   <option value="2023">2023</option>
												   <option value="2024">2024</option>
												   <option value="2025">2025</option>
												   <option value="2026">2026</option>
												   <option value="2027">2027</option>
												   <option value="2028">2028</option>
												   <option value="2029">2029</option>
												   <option value="2030">2030</option>			
															
															
											  </select>
										   </div>
										 
										
								        </div>
								          <div class="col-sm-4">
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Месяц</label>
												  <select id="month" name="month" data-plugin-selectTwo class="form-control populate">
											<!-- 	   <option></option>	
												   <option value="1">Январь</option>			
												   <option value="2">Февраль</option>
												   <option value="3">Март</option>
												   <option value="4">Апрель</option>
												   <option value="5">Май</option>
												   <option value="6">Июнь</option>
												   <option value="7">Июль</option>
												   <option value="8">Август</option>
												   <option value="9">Сентябрь</option>
												   <option value="10">Октябрь</option>
												   <option value="11">Ноябрь</option>
												   <option value="12">Декабрь</option>	 -->
													 
													 
										<!-- 		   <option></option>	
												   <option value="1"></option>			
												   <option value="2"></option>
												   <option value="3"></option>
												   <option value="4"></option>
												   <option value="5"></option>
												   <option value="6"></option>
												   <option value="7"></option>
												   <option value="8"></option>
												   <option value="9"></option>
												   <option value="10"></option>
												   <option value="11"></option>
												   <option value="12"></option>	  -->
													 
															
											  </select>
										   </div>
										
										   	
								        </div>
								        
								            <div class="col-sm-4">
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Ф.И.О</label>
												  <select id="fio" name="fio" data-plugin-selectTwo class="form-control populate">
												 
															
											  </select>
										   </div>
										
										   	
								        </div>
								        
								           <div class="col-sm-4">
										   	<div class="form-group col-sm-12">
												 <label class="control-label">Подразделение</label>
												  <select id="section" name="sectiion" data-plugin-selectTwo class="form-control populate">
												 
															
											  </select>
										   </div>
										
										   	
								        </div>
								        
								  							        
								        
								           <div class="col-sm-12 row" style="padding-top:10px;">
								          	   	<div class="form-group col-sm-3" style="margin-left:15px;">
												 <label class="control-label">День</label>
												  <select id="day" name="day" data-plugin-selectTwo class="form-control populate">
												   <option></option>	
												   <option value="1">1</option>			
												   <option value="2">2</option>
												   <option value="3">3</option>
												   <option value="4">4</option>
												   <option value="5">5</option>
												   <option value="6">6</option>
												   <option value="7">7</option>
												   <option value="8">8</option>
												   <option value="9">9</option>
												   <option value="10">10</option>
												   <option value="11">11</option>
												   <option value="12">12</option>	
												   <option value="13">13</option> 
												   <option value="14">14</option>    
												   <option value="15">15</option>
												   <option value="16">16</option> 
												   <option value="17">17</option>
												   <option value="18">18</option>
												   <option value="19">19</option>
												   <option value="20">20</option>
												   <option value="21">21</option>   
												   <option value="22">22</option>
												   <option value="23">23</option>
												   <option value="24">24</option>
												   <option value="25">25</option>
												   <option value="26">26</option>
												   <option value="27">27</option>
												   <option value="28">28</option> 
												   <option value="29">29</option>
												   <option value="30">30</option>
												   <option value="31">31</option> 
											   </select>		
										    </div>
										     
									
										     
										     <div class="form-group col-sm-3">
												 <label class="control-label">Знак</label>
												  <select id="sign" name="sign" data-plugin-selectTwo class="form-control populate">
												   <option></option>
												   <option value="lt"> < </option>
												   <option value="gt"> > </option>
												   <option value="eq"> = </option>	
										
											   </select>		
										    </div>
										    
										    
										    	<div class="form-group col-sm-3">
												<label class="control-label">Часы</label>
													<input type="number" class="form-control" name="time" id="time" required/>
											
											</div>
										
										    
								        </div>
								        
								        
								         
								         
								
								         
								        
								           <div class="col-sm-12 row " style="padding-top:10px;">
								           	<div class="form-group col-sm-5"  style="margin-left:10px;">
												 <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="search-btn">Применить фильтр</button>
												 <button type="button" class="mb-xs mt-xs mr-xs btn btn-default" id="refresh"><i class="fa fa-refresh"></i> Очистить фильтр</button>
										    	 <button type="button" class="mb-xs mt-xs mr-xs btn btn-primary" id="load"><i class="fa fa-file-excel-o"></i> <span style="margin-left:10px;">Скачать файл</span></button>
										    
										    
										   </div>
								        </div>
								 
								        
								     </form>
								    
								    </div>
								<table class="table table-bordered table-striped" id="datatable-ajax" data-url="${backend_url}/api/reports/v1/ottabel/data">
									 <thead>
										 <tr>
											<th >Год</th>
											<th >Месяц</th>
											<th > Подразделение</th>
											<th >Ф.И.О</th>
											<th >Таб №</th>
											<th >Итого</th>
											<th >1</th>
											<th >2</th>
											<th >3</th>
											<th >4</th>
											<th >5</th>
											<th >6</th>
											<th >7</th>
											<th >8</th>
											<th >9</th>
											<th >10</th>
											<th >11</th>
											<th >12</th>
											<th >13</th>
											<th >14</th>
											<th >15</th>
											<th >16</th>
											<th >17</th>
											<th >18</th>
											<th >19</th>
											<th >20</th>
											<th >21</th>
											<th >22</th>
											<th >23</th>
											<th >24</th>
											<th >25</th>
											<th >26</th>
											<th >27</th>
											<th >28</th>
											<th >29</th>
											<th >30</th>
											<th >31</th>
										
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
		<script src="/js/table/benchmark-report-table.js"></script>
		
		<script src="/js/main.js"></script>

		
		<script type="text/javascript">
		

	 
	   
	   
     $.ajax({
			  url:'${backend_url}/api/reports/v1/employe/data',
			  method:'POST',
			  contentType: "application/json",
			  async:false,
			  data:JSON.stringify({"start":0,"length":10000}),
			  success:function(data){
				  $('#fio').find('option').remove();
				  $('#fio').append('<option></option>');
				  for(var i=0;i<data.data.length;i++){
					  $('#fio').append('<option value="'+data.data[i].id+'">'+data.data[i].fio+'</option>');
				  }
			   }
			   
		   });	 
	   
		   

		

		
		
		
		
		   $('#search-btn').unbind('click');
		   $('#search-btn').on('click',function(e){
			   $('#datatable-ajax').dataTable().fnDraw(true);
		   });
		
		
		
		   
		   $("#refresh").unbind('click');
		    $("#refresh").on('click',function(){
			   $("#year").select2('data', null);
		       $("#month").select2('data', null);
		       $("#fio").select2('data', null);
		       $("#section").select2('data', null);
		       $("#day").select2('data', null);
		       $("#sign").select2('data', null);
		       $("#time").val('');
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
		
		        
		        $('#month').append('<option></option>');
		        for(var i =0; i < localeparams.month_list.length;i++){
		    	 console.log(localeparams.month_list[i]); 
		    	$('#month').append('<option value="'+(i+1)+'">'+localeparams.month_list[i]+'</option>');
		    
		    }
		    	
		    	
		</script>
		
	</body>
</html>