	




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
				
				if(sortColName == "shift.name"){
					sortColName = "shift.id";
				}
				
		
				
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
								"field":"risk",
								"comparison":"notnull"
							}
						],
						
				 };
				
			  
			  
				
				if(sSearch!=undefined && sSearch.length>0){
					
					rules["rules"] =[{
						"operation":"OR",
						"conditions":[
			              {
							"type":"string",
							 "value":"%"+sSearch+"%",
							 "field":"risk.sensorName",
							 "comparison": "like"
						   },{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"risk.sensorType",
							"comparison": "like"
							},{
							 "type":"string",
							 "value":"%"+sSearch+"%",
							 "field":"risk.sensorUnits",
							 "comparison": "like"
						    },{
							 "type":"string",
							 "value":"%"+sSearch+"%",
							 "field":"shift.shift.name",
							 "comparison": "like"
							 },{
							  "type":"string",
							  "value":"%"+sSearch+"%",
							  "field":"section.name",
							  "comparison": "like"
						    }
						
						      
						]
					}];
					
			
					
				}
			  
			  
			  
				if($('#section').val()!=null && $('#section').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"section.id",
									"value": parseInt($('#section').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#nomerdatchyka').val()!=null && $('#nomerdatchyka').val().length>0){
					rules.conditions.push(
								{
									"type":"string",
									"field":"risk.sensorName",
									"value": ($('#nomerdatchyka').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#tybdatchyka').val()!=null && $('#tybdatchyka').val().length>0){
					rules.conditions.push(
								{
									"type":"string",
									"field":"risk.sensorType",
									"value": ($('#tybdatchyka').val()),
									"comparison":"eq"
								}
							);
				}
				
          
				
				if($('#date-from').val()!=null && $('#date-from').val().length>0){
					rules.conditions.push(
								{
									"type":"date",
									"pattern":"yyyy-MM-dd",
									"field":"date",
									"value": $('#date-from').val().trim(),
									"comparison":"gt"
								}
							);
				}
				
				
				
				if($('#date-to').val()!=null && $('#date-to').val().length>0){
					rules.conditions.push(
								{
									"type":"date",
									"pattern":"yyyy-MM-dd",
									"field":"date",
									"value": $('#date-to').val().trim(),
									"comparison":"lt"
								}
							);
				}
				
				
				
				localStorage.setItem('tableRequest',JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction,"rules":rules}));
				
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
						{ "mData": "date", "defaultContent": "" },
						{ "mData": "shift.shift.name", "defaultContent": "" },
			            { "mData": "section.name", "defaultContent": "" },
			            { "mData": "risk.sensorName", "defaultContent": "" },
			            { "mData": "risk.sensorType", "defaultContent": "" },
			            { "mData": "risk.sensorUnits", "defaultContent": "" },
			            { "mData": "risk.plannedValue", "defaultContent": "" },
			            { "mData": "value", "defaultContent":""},
			            { "mData": "", "defaultContent": "" }
			        ],
			        
			        
			      
			        
			    /*    aoColumnDefs:[
			        	{
			        		"aTargets": [1],
			        		"mData": function ( source, type, val ) {
			        			if(source.equipment==undefined){
			        				return "";
			        			}else{
			        				return source.equipment.equipmentType.equipmentType.name+" "+source.equipment.serialNum
			        			}
			        			                           
			        		}
			        	},{
			        		"aTargets": [10],
			        		"mData": function ( source, type, val ) {
			        			if(source.section==undefined){
			        				return "";
			        			}else{
			        				if(source.section.isAlowed==true)
			        					return "Да";
			        				else
			        					return "Нет";
			        					
			        			}
			        			                           
			        		}
			        	}
			        ]
	        */
	    

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
