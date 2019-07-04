	



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
							{
								"type":"date",
								"field":"edate",
								"pattern":"yyyy-MM-dd",
								"comparison":"isnull"
							}
						]
				};
				
				
				
				if(sSearch!=undefined && sSearch.length>0){
					
					rules["rules"] =[{
						"operation":"OR",
						"conditions":[
							{
							"type":"string",
							"value":"%"+sSearch+"%",
							"field":"sensorName",
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
				{ "mData": "bdate","defaultContent":""},
	            { "mData": "sensorName","defaultContent":""},
	            { "mData": "plannedValue","defaultContent":""},
	            { "mData": "errorVal","defaultContent":""}
	         
	        ],
	        
	        aoColumnDefs:[
	        	{
	        		"aTargets": [4],
	        		"mData": function ( source, type, val ) {
	        				return "<a class='ccc' recordid='"+source.id+"'  style='margin-left:10px; cursor:pointer'><i class='fa fa-pencil'></i></a>";
	        			
	        			                           
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
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/planamsrisk/one?id="+recordid,
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
		        				  $("#sensorName2").val(data.sensorSerialNumber)
		        				  $("#sensorName2").trigger('change');
		        	        	  $("#plannedValue2").val(data.plannedValue);
		        	        	  $("#errorVal2").val(data.errorVal);
		        		              
		        		              
		        		              
		        			   }
		        		   })
		        		$('#modalForm2').modal('show');
	        		});
	        		
	        	});
	        	
	        
	        	
	      
	        	
	          }

		});

	};

	$(function() {
		datatableInit();
	
	});

}).apply( this, [ jQuery ]);
