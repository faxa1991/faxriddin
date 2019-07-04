	



(function( $ ) {

	'use strict';

	var datatableInit = function() {

		var $table = $('#datatable-ajax');
		$table.dataTable({
			bProcessing: true,
			sAjaxSource: $table.data('url'),
			oLanguage: {
	            sInfo: "Всего _TOTAL_ записей (_START_ "+'-'+" _END_)"
	          },
			bServerSide: true,
			bStateSave: true,
			fnServerData: function ( sSource, aoData, fnCallback, oSettings ) {
				var start = 0;
				var length = 10;
				var sortCol = 0;
				var sortColName;
				var direction = 'ASC';
				var sSearch;
				
				for(var i=0;i<aoData.length;i++){
					if(aoData[i].name=='iDisplayStart')
						start = aoData[i].value; 
					if(aoData[i].name=='iDisplayLength')
						length = aoData[i].value;
					if(aoData[i].name=='iSortCol_0')
						sortCol = aoData[i].value;
					if(aoData[i].name=='sSortDir_0')
						direction = aoData[i].value;
					if(aoData[i].name=='sSearch')
						sSearch = aoData[i].value;
					
					
				}
				
				for(var i=0;i<aoData.length;i++){
					if(aoData[i].name=='mDataProp_'+sortCol)
						sortColName = aoData[i].value; 
				}
				if(direction=='asc')
					direction = 'ASC';
				else
					direction = 'DESC';
				
				
				for(var i=0;i<aoData.length;i++){
					 console.log(aoData[i]);
				}
				
				
				//============================
				var rules = {"operation":"AND",
						"conditions":[],
						"rules":[]
				};
				
	      
				if(sSearch!=undefined && sSearch.length>0){
					
					rules.rules.push({"operation":"OR",
							"conditions":[
								{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"login",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"name",
								"comparison": "like"
								}
							]
					});
				
				

					
			
					
				}


				
				console.log(aoData);
			      oSettings.jqXHR = $.ajax( {
			        "dataType": 'json',
			        "contentType": "application/json",
			        "type": "POST",
			        "url": sSource,
			        "data": JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction,"rules":rules}),
			        "success": fnCallback
			      } );
			},
			   
			aoColumns: [
				{ "mData": "id", "defaultContent": ""},
	            { "mData": "login", "defaultContent": ""},
				{ "mData": "name", "defaultContent": ""}
	           
			
	          ],
	        
	        
	        aoColumnDefs:[
	        
	        	{
	        		"aTargets":[3],
	        		"mData": function ( source, type, val ) {
	        		
	        			return "<a class='cc' recordid='"+source.id+"' style='cursor:pointer; margin-right:5px;' ><i class='fa fa-info'></i></a><a class='ccc' recordid='"+source.id+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-pencil'></i></a>";
        			
	        		}
	        	}
	        ],
	        
	       
	        
	        fnDrawCallback: function( oSettings ) {
	        	$('.ccc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#record_id').val(recordid);
						  $.ajax({
	        				   url:$('body').attr('backend_url')+'/management/accounts/one-account?id='+recordid,
	        				   method:'get',
	        				   async:false,
	        				   contentType: "application/json",
	        				   success:function(e){
									$("#nameupdate").val(e.name);
	        						$("#loginupdate").val(e.login);
	        						 
	        						for(var i=0; i < e.roles.length; i++){
	        						    console.log(e.roles[i].role.id)
	        									 
	        								 $(".functionsGroupName3."+e.roles[i].role.id).prop('checked','checked');
	        							 
	        						
	        				        }
	        					
	        				   } 
	        				  
	        			  })  
		        		$('#modalFormUpdate').modal('show');
	        		});
	        		
	        	});
	        	
	        	
	        	$('.cc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(){
	        			var recordid = $(this).attr('recordid');
	        			$("#recordid").val(recordid);
	        			  $(".functionsGroupName2").each(function(){
						        	 $(this).prop('checked',false);	
	        			   });
						       
							
	        			 
	        			  $.ajax({
	        				   url:$('body').attr('backend_url')+'/management/accounts/one-account?id='+recordid,
	        				   method:'get',
	        				   async:false,
	        				   contentType: "application/json",
	        				   success:function(e){
									$("#name2").val(e.name);
	        						$("#login2").val(e.login);
	        					    
	        						for(var i=0; i < e.roles.length; i++){
	        						    console.log(e.roles[i].role.id)
	        									 
	        								 $(".functionsGroupName2."+e.roles[i].role.id).prop('checked','checked');
	        							 
	        						
	        				        }
	        						
	        						 
	        						
	        				   
	        				   } 
	        				  
	        			  })  
	        			
	        			
	        			
	        			$("#modalFormView").modal('show');
	        			
	        		})	
	        		
	        		
	        		
	        	})
	        		
	          }
			    
	
		
		});

	};

	$(function() {
		datatableInit();
		
		
		
		
		
	});

}).apply( this, [ jQuery ]);
