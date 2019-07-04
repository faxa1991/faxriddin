	



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
				
			
				
				var rules = {"operation":"AND",
						"conditions":[
							
							{
								"type":"bool",
								"field":"deleted",
								"comparison":"eq",
								"value":"false"
							}
							
							
						],
						"rules":[]
					
				};
				
				
				
				if($('body').attr('communicationNode')!=undefined && $('body').attr('communicationNode').length>0){
					
				   if($('body').attr('communicationNode') == ' '){
						
					}else if($('body').attr('communicationNode')=='tagged'){
					   rules.conditions.push({
							"type":"string",
							"field":"commtracExternalId",
							"comparison": "notnull"
						});
					  }else{
						
						rules.conditions.push({
							"type":"string",
							"field":"commtracExternalId",
							"comparison": "isnull"
						});
					}
					//filter.self["shift"] = {"shift":{"name": $('body').attr('shiftname')}};
				}
				
			
				

	  
                if(sSearch!=undefined && sSearch.length>0){
					
            		rules.rules.push({"operation":"OR",
							"conditions":[
								{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"inventoryNum",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"serialNum",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"equipmentType.equipmentType.name",
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
				{ "mData": "name" },
	            { "mData": "inventoryNum" },
	            { "mData": "serialNum" },
	            { "mData": "loadCapacity" },
	            { "mData": "equipmentType.equipmentType.name" },
	            { "mData": "commtracExternalId" }
	       
	          ],
	        
	        aoColumnDefs:[
	        	{
	        		"aTargets":[6],
	        		"mData": function ( source, type, val ) {
	        		if(source.commtracExternalId==null)
	        			return "<a class='cc' href='/equipment-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='ccc' recordid='"+source.id+"'  style='margin-left:10px; cursor:pointer;'><i class='fa fa-chain'></i></a><a class='deleteRecord' recordid='"+source.id+"' recordname='"+source.name+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-trash-o'></i></a>";
        			else
        				return "<a  class='cc'  href='/equipment-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='cccc' recordid='"+source.id+"'  style='margin-left:10px; cursor:pointer;'><i class='fa fa-chain-broken'></i></a>";
	        		}
	        	}
	        ],
	        
	       
	        
	        fnDrawCallback: function( oSettings ) {
	        	
	        	
	        	$('.ccc').each(function(i){
	        		
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#equipment').val(recordid);
		        		   $.ajax({
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/equipment/one",
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
		        				   console.log(data);
		        			
		        					   $("#equipmentType").select2("data", null);
		        				  
		        				   
		        				   $("#name").val(data.data.equipmentType.equipmentType.name);
		        				   $("#inventoryNum").val(data.data.inventoryNum);
		        				   $("#serialNum").val(data.data.serialNum);
		        				   $("#loadCapacity").val(data.data.loadCapacity)
		        			   },
		        			   error:function(e){
		        				   alert("error")
		        			   }
		        			   
		        		   })
		        		$('#modalForm').modal('show');
	        		});
	        		
	        	});
	        	
	        
	        	
	        	$('.cccc').each(function(i){
	        		
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#equipment2').val(recordid);
		        		   $.ajax({
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/equipment/one",
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
		        				   console.log(data)
		        				   $("#name2").val(data.data.name);
		        				   $("#inventoryNum2").val(data.data.inventoryNum);
		        				   $("#serialNum2").val(data.data.serialNum);
		        				   $("#loadCapacity2").val(data.data.loadCapacity);
		        				   $("#equipmentType2").val(data.data.commtracExternalId)
		        			   }

		        			   
		        			   
		        		   })
		        		$('#modalForm2').modal('show');
	        		});
	        		
	        	});
	        	
	        
	        	$('.cc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			   var url = window.location;
                           localStorage.setItem("url",url);
                           localStorage.getItem("url");
	        		});
	        		
	        	});
	        	
	        	
	        	
	    	    $('.deleteRecord').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
	        			deleteRecord("Вы действительно хотите удалить запись?",function(){
	        				
	        				    $.ajax({
	        				    	url:$('body').attr('backend_url')+'/api/reports/v1/equipment/delete',
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
