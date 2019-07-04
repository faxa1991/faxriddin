	



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
			         console.log($('body').attr('communicationNode').length);
					
				   if($('body').attr('communicationNode') == ' '){
						
					}else if($('body').attr('communicationNode')=='tagged'){
					 
						  rules.conditions.push({
							"type":"string",
							"field":"communicationNode",
							"comparison": "notnull"
						});
					  }else{
					    rules.conditions.push({
							"type":"string",
							"field":"communicationNode",
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
								}
								,{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"lode.name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"lode.minefields.name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"type_zone.name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"vid_zone.name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"group_zone.name",
								"comparison": "like"
								},{
								"type":"string",
								"value":"%"+sSearch+"%",
								"field":"communicationNode.node.name",
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
				{ "mData": "name", "defaultContent": ""},
	            { "mData": "lode.name", "defaultContent": ""},
	            { "mData": "lode.minefields.name", "defaultContent": ""},
	            { "mData": "typeZone.name", "defaultContent": ""},
	            { "mData": "vidZone.name", "defaultContent": ""},
	            { "mData": "groupZone.name", "defaultContent": ""},
	            { "mData": "communicationNode.node.name", "defaultContent": ""}
	       
	          ],
	        
	        
	        aoColumnDefs:[
	        
	        	{
	        		"aTargets":[7],
	        		"mData": function ( source, type, val ) {
	        		if(source.communicationNode==null)
	        			return "<a class='ccc' recordid='"+source.id+"' recordname='"+source.name+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-chain'></i></a><a class='deleteRecord' recordid='"+source.id+"' recordname='"+source.name+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-trash-o'></i></a>";
        			else
        				return "<a class='cccc' recordid='"+source.id+"' recordname='"+source.name+"' nodeid='"+source.communicationNode.id+"' nodename='"+source.communicationNode.node.name+"'  style='margin-left:10px; cursor:pointer;'><i class='fa fa-chain-broken'></i></a>";
	        		}
	        	}
	        ],
	        
	       
	        
	        fnDrawCallback: function( oSettings ) {
	        	$('.ccc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        		
	        			reloadNodes();
	        			
	        			var recordid = $(this).attr('recordid');
	        			var recordname = $(this).attr('recordname');
					    $('#record_id').val(recordid);
					    $('#name_zone').val(recordname);
					    
					    $("#zone").select2('data',null);
		        	  
		        		$('#modalForm').modal('show');
	        		});
	        		
	        	});
	        	
	        
	        	
	        	$('.cccc').each(function(i){
	        		
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#zone_id2').val(recordid);
					    var recordname = $(this).attr('recordname');
		        		$("#name_zone2").val(recordname);
					    var nodeid = $(this).attr("nodeid");
					    var nodename = $(this).attr("nodename");
					
						
					    $("#node_id2").val(nodeid);
					    $("#node_name2").val(nodename);
					    
					 
		        		
		        		$('#modalForm2').modal('show');
	        		});
	        		
	        	});
	        	
	           
	    $('.deleteRecord').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
	        			deleteRecord("Вы действительно хотите удалить запись?",function(){
	        				
	        				    $.ajax({
	        				    	url:$('body').attr('backend_url')+'/api/reports/v1/section/delete',
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
