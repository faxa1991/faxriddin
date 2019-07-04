	



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
				var sSearch;
				var direction = 'ASC';
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
				
				/*{"start":0,"length":10,"filter":{"self":{"shift":{"shift":{"name":"Day"}}}}}}*/
		
				
				
				/**
				 * [{
				 * "type": "string",
				 * "value": "***",
				 * "field": "model"
				 * },{
				 * "type": "numeric",
				 * "value": "***",
				 * "field": "year",
				 * "comparison": "gt"
				 * }]
				 */
				
				
				
//				var conditions = [{
//					"type":"string",
//					"value":"%Руслан%",
//					"field":"firstName",
//					"comparison": "like"
//				}];
				
				var rules = {"operation":"AND",
						"conditions":[
							{
								"type":"bool",
								"field":"deleted",
								"comparison":"eq",
								"value":"false"
							}
						]
				};
				
				
				var filter = {"self":{},"mode":"any"};
				
				/*var filter = {"self":{"shift":{"shift":{}}}};*/
				if($('body').attr('shift')!=undefined && $('body').attr('shift').length>0){
					
					
					
					
					
					
					
					if($('body').attr('shift')=='all'){
						
					}else if($('body').attr('shift')=='null'){
						rules.conditions.push({
							"type":"string",
							"field":"shift",
							"comparison": "isnull"
						});
						
						
						
					}else{
						
						rules.conditions.push({
							"type":"numeric_long",
							"field":"shift.id",
							"value":parseInt($('body').attr('shift')),
							"comparison": "eq"
						});
						
						
					}
					
					
					//filter.self["shift"] = {"shift":{"name": $('body').attr('shiftname')}};
				}
				if(sSearch!=undefined && sSearch.length>0){
					
					rules["rules"] =[{
						"operation":"OR",
						"conditions":[
							{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"firstName",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"lastName",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"tabelNumber",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"commtracExternalName",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"employeType.employeType.name",
							"comparison": "like"
							}
						]
					}];
					
			
					
				}
				
				console.log(aoData);
			      oSettings.jqXHR = $.ajax( {
			        "dataType": 'json',
			        "contentType": "application/json",
			        "type": "POST",
			        "url": sSource,
			        "data": JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction, "rules":rules}),
			        "success": fnCallback
			      } );
			    },
		    
		  aoColumns: [
				{ "mData": "firstName" },
	            { "mData": "lastName" },
	            { "mData": "tabelNumber" },
	            { "mData": "employeType.employeType.name" },
	            { "mData": "commtracExternalName" }
	        ],
	        
	        aoColumnDefs:[
	        	{
	        		"aTargets": [5],
	        		"mData": function ( source, type, val ) {
	        			if(source.commtracExternalId==null)
	        				return "<a class='cc'  href='/employes-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='ccc' recordid='"+source.id+"'  style='margin-left:10px; cursor:pointer'><i class='fa fa-chain'></i></a><a class='deleteRecord' recordid='"+source.id+"' recordname='"+source.name+"' style='margin-left:10px; cursor:pointer;'><i class='fa fa-trash-o'></i></a>";
	        			else
	        				return "<a class='cc'  href='/employes-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='cccc' recordid='"+source.id+"'  style='margin-left:10px; cursor:pointer'><i class='fa fa-chain-broken'></i></a>";
	        			
	        			                           
	        		}
	        	}
	        ],
	        
	        fnDrawCallback: function( oSettings ) {
	        	$('.ccc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#employe_id').val(recordid);
		        		   $.ajax({
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/employe/one",
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
		        				   $("#employe-type-select2").select2("data", null);
		        				   $("#employe-type-select").select2("data", null);
		        				   $("#employe_firstname").val(data.data.lastName);
		        				   $("#firstName").val(data.data.firstName);
		        				   $("#personnel_number").val(data.data.tabelNumber);
		        				   $("#position").val(data.data.employeType.employeType.name)
		        				   
		        			   }
		        		   })
		        		$('#modalForm').modal('show');
	        		});
	        		
	        	});
	        	
	        
	        	
	        	$('.cccc').each(function(i){
	        		$(this).unbind('click');
	        		$(this).on('click',function(e){
	        			var recordid = $(this).attr('recordid');
					    $('#employe_id2').val(recordid);
		        		   $.ajax({
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/employe/one",
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
		        				   $("#contrac_node_id2").val(data.data.commtracExternalName);
		        				   $("#shift_id2").val(data.data.shift.shift.name);
		        				   $("#employe_firstname2").val(data.data.lastName);
		        				   $("#firstName2").val(data.data.firstName);
		        				   $("#personnel_number2").val(data.data.tabelNumber);
		        				   $("#position2").val(data.data.employeType.employeType.name)
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
	        				    	url:$('body').attr('backend_url')+'/api/reports/v1/employe/delete',
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

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
