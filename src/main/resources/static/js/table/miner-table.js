	



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
								"field":"name",
								"comparison": "like"
								}
								/*{
								 "type":"string",
								 "value":"%"+sSearch+"%",
								 "field":"createdDate",
								 "comparison": "like"
								 }*/
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
				{ "mData": "createdDate", "defaultContent": ""},
	            { "mData": "name", "defaultContent": ""}
	         
	       
	          ],
	        
	        
	        aoColumnDefs:[
	        
	        	{
	        		"aTargets":[2],
	        		"mData": function ( source, type, val ) {
	        		
	        			return "<a class='ccc' recordid='"+source.id+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-pencil'></i></a><a class='deleteRecord' recordid='"+source.id+"' style='margin-left:15px; cursor:pointer;'><i class='fa fa-trash-o'></i></a>";
        			
	        		}
	        	}
	        ],
	        
	       
	        
	        fnDrawCallback: function( oSettings ) {
	        	$('.ccc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
				            $("#recordid").val(recordid);
	        				  $.ajax({
	        				   url:$('body').attr('backend_url')+'/api/reports/v1/minefields/one?id='+recordid,
	        				   method:'POSt',
	        				   async:false,
	        				   contentType: "application/json",
	        				   success:function(e){
	        					    $("#minefields2").val(e.name);
	        					
	        				   } 
	        				  
	        			  })  
		        		$('#modalFormUpdate').modal('show');
	        		});
	        		
	        	});
	        	
	        	

	        	
	           
	    $('.deleteRecord').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
	        			deleteRecord("Вы действительно хотите удалить запись?",function(){
	        				    $.ajax({
	        				    	url:$('body').attr('backend_url')+'/api/reports/v1/minefields/delete',
	        				    	method:'POST',
	        				    	contentType: "application/json",
	        				    	data:recordid,
	        				    	success:function(t){
	        				    		  $('#datatable-ajax').dataTable().fnDraw(true);
	        				    		
	        				    	}
	        				    	
	        				    	
	        				    })
	        				
	        				
	        			});
					    
	        			 
		        		
		        		
	        		});
	        		
	        	});
	        	
	        	
	        	
	        	
	          }
			    
			    
	   
			    
		
		//"+source.id+"
		
		});

	};

	$(function() {
		datatableInit();
		
		
		
		
		
	});

}).apply( this, [ jQuery ]);
