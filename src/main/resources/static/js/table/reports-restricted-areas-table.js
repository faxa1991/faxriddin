	




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
							"field":"search",
							"comparison": "like"
							},{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"employeFio",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"employetype.employeType.name",
							"comparison": "like"
						    },{
						    "type":"string",
						    "value":"%"+sSearch+"%",
							"field":"minefields.name",
							"comparison": "like"
						   },{
						   "type":"string",
							"value":"%"+sSearch+"%",
							"field":"section.name",
							"comparison": "like"
						  },{
						    "type":"string",
							"value":"%"+sSearch+"%",
							"field":"typezone.name",
							"comparison": "like"
							},{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"typezone.name",
							"comparison": "like"
						  }
							
													  
					   ]
					}];
					
			
					
				}
				
				
				
				
				
				if($('#objectname').val()!=null && $('#objectname').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"employe_id",
									"value": parseInt($('#objectname').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#mine').val()!=null && $('#mine').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"minefields_id",
									"value": parseInt($('#mine').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#placetype').val()!=null && $('#placetype').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"typezone_id",
									"value": parseInt($('#placetype').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#typeobject').val()!=null && $('#typeobject').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"employetype_id",
									"value": parseInt($('#typeobject').val()),
									"comparison":"eq"
								}
							);
				}				
				if($('#placename').val()!=null && $('#placename').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"section_id",
									"value": parseInt($('#placename').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#change').val()!=null && $('#change').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"shift_id",
									"value": parseInt($('#change').val()),
									"comparison":"eq"
								}
							);
				}
				if($('#viewofplace').val()!=null && $('#viewofplace').val().length>0){
					rules.conditions.push(
								{
									"type":"numeric_long",
									"field":"vidzone_id",
									"value": parseInt($('#viewofplace').val()),
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
			        "data": JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction, "rules":rules}),
			        "success": fnCallback
			      } );
			    },
		    
		  aoColumns: [
				{ "mData": "date","defaultContent": ""},
	            { "mData": "shift.shift.name","defaultContent": ""},
	            { "mData": "employeFio" ,"defaultContent": ""},
	            { "mData": "employetype.employeType.name","defaultContent": ""},
	            { "mData": "","defaultContent": ""},
	            { "mData": "minefields.name","defaultContent": ""},
	            { "mData": "section.name","defaultContent": ""},
            
	            { "mData": "periodSeconds","defaultContent": ""},
	            { "mData": "count","defaultContent": ""},
	            { "mData": "typezone.name","defaultContent": ""},
	            { "mData": "vidzone.name","defaultContent": ""}
	            
	            
	          ],
	          

	  
	        
	    
	        
	   

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
