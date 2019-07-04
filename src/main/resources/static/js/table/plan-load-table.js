	



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
							 "field":"equipment.name",
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
	            { "mData": "startSection.name","defaultContent":""},
	            { "mData": "endSection.name","defaultContent":""},
	            { "mData": "plannedPayloadsCount","defaultContent":""},
	            { "mData": "plannedTrips","defaultContent":""},
	            { "mData": "plannedPayloadMass","defaultContent":""},
	            { "mData": "plannedDepoTrips","defaultContent":""},
	            { "mData": "equipment.name","defaultContent":""}
	        ],
	        
	        aoColumnDefs:[
	        	{
	        		"aTargets": [8],
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
		        			   url: $('body').attr('backend_url')+"/api/reports/v1/planassetpayload/one?id="+recordid,
		        			   method:"POST",
		        			   contentType: "application/json",
		        			   data:recordid,
		        			   success:function(data){
			                        $("#equipment2").val(data.equipment.id);
			                        $("#equipment2").trigger('change');
			                        //$("#equipment2").select2("data", { id: data.equipment.id});
			                        console.log(data.equipment.equipmentType.id);
			                        
			     				    $("#section_2").val(data.startSection.id);
			     				    $("#section_2").trigger('change');
			  					    $("#section_22").val(data.endSection.id);
			  					    $("#section_22").trigger('change');
			  						$("#plannedPayloadsCount2").val(data.plannedPayloadsCount); 
		      						$("#plannedTrips2").val(data.plannedTrips);
		      						$("#plannedPayloadMass2").val(data.plannedPayloadMass);
		      						$("#plannedDepoTrips2").val(data.plannedDepoTrips);
		        		              
		        		              
		        		              
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
