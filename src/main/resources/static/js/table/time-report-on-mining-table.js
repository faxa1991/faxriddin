	




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
							
						],
						//"rules":[]
				};
				
			if(sSearch!=undefined && sSearch.length>0){
				
				 rules["rules"] =[{
					"operation":"OR",
					"conditions":[
					    {
						"type":"string",
						"value":"%"+sSearch+"%",
						"field":"shift.shift.name",
						"comparison": "like"
						},{
					    "type":"string",
					    "value":"%"+sSearch+"%",
						"field":"startSection.name",
						"comparison": "like"
						},{
						"type":"string",
						"value":"%"+sSearch+"%",
						"field":"endSection.name",
						"comparison": "like"
					    },{
					    "type":"string",
					    "value":"%"+sSearch+"%",
						"field":"minefields.name",
						"comparison": "like"
					   },{
						"type":"string",
						 "value":"%"+sSearch+"%",
					     "field":"equipment.name",
						"comparison": "like"
						   }
					    
												  
				   ]
				}];
				
		
				
			}
			
			
			
			
            
			if($('#zaboy').val()!=null && $('#zaboy').val().length>0){
				rules.conditions.push(
							{
								"type":"numeric_long",
								"field":"startSection.id",
								"value": parseInt($('#zaboy').val()),
								"comparison":"eq"
							}
						);
			}
			if($('#rudnik').val()!=null && $('#rudnik').val().length>0){
				rules.conditions.push(
							{
								"type":"numeric_long",
								"field":"minefields.id",
								"value": parseInt($('#rudnik').val()),
								"comparison":"eq"
							}
						);
			}
			if($('#transport').val()!=null && $('#transport').val().length>0){
				rules.conditions.push(
							{
								"type":"numeric_long",
								"field":"equipment.id",
								"value": parseInt($('#transport').val()),
								"comparison":"eq"
							}
						);
			}
			if($('#smena').val()!=null && $('#smena').val().length>0){
				rules.conditions.push(
							{
								"type":"numeric_long",
								"field":"shift.id",
								"value": parseInt($('#smena').val()),
								"comparison":"eq"
							}
						);
			}				
	
	
			if($('#place').val()!=null && $('#place').val().length>0){
				rules.conditions.push(
							{
								"type":"numeric_long",
								"field":"endSection.id",
								"value": parseInt($('#place').val()),
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
			      oSettings.jqXHR = $.ajax({
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
			            { "mData": "startSection.name", "defaultContent": "" },
			            { "mData": "endSection.name", "defaultContent": "" },
			            { "mData": "equipment.name", "defaultContent": "" },
			            { "mData": "minefields.name", "defaultContent": "" },
			            { "mData": "planAssetTripTime.plannedTripTime", "defaultContent": "" },
			            { "mData": "totalTimeSum", "defaultContent": "" }
			         
			         
			        ],
			        
	
	    

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
