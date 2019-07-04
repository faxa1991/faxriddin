	




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
				

				
				var rules = {"operation":"AND",
						"conditions":[
							
						],
						//"rules":[]
				};
				
				
				if(sSearch!=undefined && sSearch.length>0){
					
					 rules["rules"] =[{
						"operation":"OR",
						"conditions":[
							/*{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"employe.firstName",
							"comparison": "like"
							},*/{
						    "type":"string",
							"value":"%"+sSearch+"%",
							"field":"employeFio",
							"comparison": "like"
							},
							{
							    "type":"string",
								"value":"%"+sSearch+"%",
								"field":"minefields.name",
								"comparison": "like"
								},
								{
								    "type":"string",
									"value":"%"+sSearch+"%",
									"field":"lode.name",
									"comparison": "like"
									},
							/*,*/
							
							{
						    "type":"string",
							"value":"%"+sSearch+"%",
							"field":"typezone.name",
							"comparison": "like"
							},{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"vidzone.name",
							"comparison": "like"
							},{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"groupzone.name",
							"comparison": "like"
							},{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"employetype.employeType.name",
							"comparison": "like"
							}
							
							
						  
						]
						
					}
					
					];
					
			
					
				}
		
			  
            

				
				if($('#minefield').val()!=null && $('#minefield').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"minefields.id",
									"value": parseInt($('#minefield').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#employe').val()!=null && $('#employe').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"employe.id",
									"value": parseInt($('#employe').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#employe-type').val()!=null && $('#employe-type').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"employetype.id",
									"value": parseInt($('#employe-type').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#zone-type').val()!=null && $('#zone-type').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"typezone.id",
									"value": parseInt($('#zone-type').val()),
									"comparison":"eq"
								}
							);
				}				
				if($('#zone-vid').val()!=null && $('#zone-vid').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"vidzone.id",
									"value": parseInt($('#zone-vid').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#lode').val()!=null && $('#lode').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"lode.id",
									"value": parseInt($('#lode').val()),
									"comparison":"eq"
								}
							);
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
				if($('#date-from').val()!=null && $('#date-from').val().length>0){
				   var timefrom = '00:00'
					if($('#time-from').val()!=null && $('#time-from').val().length>0){
						 timefrom = $('#time-from').val(); 
				    }
						
					 
					rules.conditions.push(
								{
									"type":"date",
									"pattern":"yyyy-MM-dd HH:mm",
									"field":"dateFrom",
									"value": $('#date-from').val()+' '+timefrom,
									"comparison":"gt"
								}
							);
				}
				
				if($('#date-to').val()!=null && $('#date-to').val().length>0){
					 var timeto = '00:00'
							if($('#time-to').val()!=null && $('#time-to').val().length>0){
								 timeto = $('#time-to').val(); 
						    }
								
					
					
					rules.conditions.push(
								{
									"type":"date",
									"pattern":"yyyy-MM-dd HH:mm",
									"field":"dateTo",
									"value": $('#date-to').val()+' '+timeto,
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
				{ "mData": "employe.id", "defaultContent": "" },
	            { "mData": "employeFio", "defaultContent": "" },
	            { "mData": "dateFrom", "defaultContent": "" },
	            { "mData": "dateTo", "defaultContent": "" },
	            { "mData": "datePeriod", "defaultContent": "" },
	            { "mData": "section.id", "defaultContent": "" },
	            { "mData": "section.name", "defaultContent": "" },
	            { "mData": "typezone.name", "defaultContent": "" },
	            { "mData": "vidzone.name", "defaultContent": "" },
	            { "mData": "groupzone.name", "defaultContent": "" },
	            {},
	            { "mData": "employetype.employeType.name", "defaultContent": "" },
	            { "mData": "lode.name", "defaultContent": "" },
	            { "mData": null, "defaultContent": "" },
	            { "mData": "minefields.name", "defaultContent": "" }
	        ],
	        
	        aoColumnDefs:[
	        	{
	        		"aTargets": [10],
	        		"mData": function (source, type, val ) {
	        			
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

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
