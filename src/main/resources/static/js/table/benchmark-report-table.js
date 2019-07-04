	




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
					if(aoData[i].name=='iSortCol_0'){
						sortCol = aoData[i].value;
						
					}if(aoData[i].name=='sSortDir_0')
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
				
				if(sortCol!=undefined && sortCol==1)
					sortColName="month";
				if(sortColName!=undefined && sortColName=="employe.fio")
					sortColName="employe.firstName";
				
				
				
				
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
				
				
				
		//	var conditions = [{
			//	"type":"string",
			//	"value":"%Руслан%",
			//	"field":"firstName",
			//	"comparison": "like"
			//}];
				
			  var rules = {"operation":"AND",
						"conditions":[
							
						],
						//"rules":[]
				 };
				
				
		
				
				if(sSearch!=undefined && sSearch.length>0){
					
					 rules["rules"] =[{
						"operation":"OR",
						"conditions":[
							{
							"type":"numeric_integer",
							"value":+sSearch,
							"field":"year",
							"comparison": "eq"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"employe.firstName",
							"comparison": "like"
							},{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"employe.lastName",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"employe.tabelNumber",
							"comparison": "like"
						    }
							
													  
					   ]
					}];
					
			
					
				}
			  
			  
				if($('#year').val()!=null && $('#year').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"year",
									"value": parseInt($('#year').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#month').val()!=null && $('#month').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"month",
									"value":parseInt($('#month').val()),
									"comparison":"eq"
								}
							);
				}
			
				
				if($('#fio').val()!=null && $('#fio').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"employe.id",
									"value":parseInt($('#fio').val()),
									"comparison":"eq"
								}
							);
				}
			 
				
				if($('#day').val()!=null && $('#day').val().length>0 && $('#sign').val()!=null && $('#sign').val().length>0 && $('#time').val()!=null && $('#time').val().length>0 ){
					rules.conditions.push(
								{
									"type":"numeric_double",
									"field":"hhDay"+$('#day').val(),
									"value":parseInt($('#time').val()),
									"comparison":$('#sign').val()
								}
							);
				}
				
		
          
				
				
				
				
				localStorage.setItem('tableRequest',JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction,"rules":rules}));
				
				
			
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
						{ "mData": "year", "defaultContent": "" },
						{ },
			            { "mData": "", "defaultContent": "" },
			            { "mData": "employe.fio", "defaultContent": ""},
			            { "mData": "employe.tabelNumber", "defaultContent": ""},
			            { "mData": "totalDay", "defaultContent": ""},
			            { "mData": "day1", "defaultContent": ""},
			            { "mData": "day2", "defaultContent": ""},
			            { "mData": "day3", "defaultContent": ""},
			            { "mData": "day4", "defaultContent": ""},
			            { "mData": "day5", "defaultContent": ""},
			            { "mData": "day6", "defaultContent": ""},
			            { "mData": "day7", "defaultContent": ""},
			            { "mData": "day8", "defaultContent": ""},
			            { "mData": "day9", "defaultContent": ""},
			            { "mData": "day10", "defaultContent": ""},
			            { "mData": "day11", "defaultContent": ""},
			            { "mData": "day12", "defaultContent": ""},
			            { "mData": "day13", "defaultContent": ""},
			            { "mData": "day14", "defaultContent": ""},
			            { "mData": "day15", "defaultContent": ""},
			            { "mData": "day16", "defaultContent": ""},
			            { "mData": "day17", "defaultContent": ""},
			            { "mData": "day18", "defaultContent": ""},
			            { "mData": "day19", "defaultContent": ""},
			            { "mData": "day20", "defaultContent": ""},
			            { "mData": "day21", "defaultContent": ""},
			            { "mData": "day22", "defaultContent": ""},
			            { "mData": "day23", "defaultContent": ""},
			            { "mData": "day24", "defaultContent": ""},
			            { "mData": "day25", "defaultContent": ""},
			            { "mData": "day26", "defaultContent": ""},
			            { "mData": "day27", "defaultContent": ""},
			            { "mData": "day28", "defaultContent": ""},
			            { "mData": "day29", "defaultContent": ""},
			            { "mData": "day30", "defaultContent": ""},
			            { "mData": "day31", "defaultContent": ""}
			       
			           
			            
			        ],
			        
			        
			        aoColumnDefs:[
			        	{
			        		"aTargets":[1],
			        		"sName":"month",
			        		"mData": function (source, type, val) {
			        			
			        			
			        			return localeparams.month_list[source.month -1];
			        		 /* if(source.month == 1){
			        			  return "Январь";
			        		  }
			        		  if(source.month == 2){
			        			  return "Февраль";
			        		  }
			        		  if(source.month == 3){
			        			  return "Март";
			        		  }
			        		  if(source.month == 4){
			        			  return "Апрель";
			        		  }
			        		  if(source.month == 5){
			        			  return "Май";
			        		  }
			        		  if(source.month == 6){
			        			  return "Июнь";
			        		  }
			        		  if(source.month == 7){
			        			  return "Июль";
			        		  }
			        		  if(source.month == 8){
			        			  return "Август";
			        		  }
			        		  if(source.month == 9){
			        			  return "Сентябрь";
			        		  }
			        		  if(source.month == 10){
			        			  return "Октябрь";
			        		  }
			        		  if(source.month == 11){
			        			  return "Ноябрь";
			        		  }
			        		  if(source.month == 12){
			        			  return "Декабрь";
			        		  }
			        		  */
			        		} 
			        	}
			        ],
	       
			      
	    

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
