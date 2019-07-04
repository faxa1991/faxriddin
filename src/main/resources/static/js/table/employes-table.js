	



(function( $ ) {

	'use strict';

	var datatableInit = function() {

		var $table = $('#datatable-ajax');
		$table.dataTable({
			bProcessing: true,
			sAjaxSource: $table.data('url'),
			/*sServerMethod: "POST",*/
			bServerSide: true,
			fnServerData: function ( sSource, aoData, fnCallback, oSettings ) {
				
				var start = 0;
				var length = 10;
				var sortCol = 0;
				var sortColName;
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
					
					
				}
				
				for(var i=0;i<aoData.length;i++){
					if(aoData[i].name=='mDataProp_'+sortCol)
						sortColName = aoData[i].value; 
				}
				if(direction=='asc')
					direction = 'ASC';
				else
					direction = 'DESC';
				
				
				console.log(aoData);
			      oSettings.jqXHR = $.ajax( {
			        "dataType": 'json',
			        "contentType": "application/json",
			        "type": "POST",
			        "url": sSource,
			        "data": JSON.stringify({"first":start,"length":length, "sortField":sortColName,"sortDirection":direction}),
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
	        				return "<a  href='/employes-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='ccc' recordid='"+source.id+"'  style='margin-left:10px;'>A<i class='fa fa-glass'></i></a>";
	        			else
	        				return "<a  href='/employes-edit?id="+source.id+"'><i class='fa fa-pencil'></i></a> <a class='cccc' recordid='"+source.id+"'  style='margin-left:10px;'>X<i class='fa fa-glass'></i></a>";
	        			
	        			                           
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
		        				   
		        				   if(data.data.shift!=undefined)
		        					   $("#employe-type-select2").select2("data", { id: data.data.shift.id, text: data.data.shift.shift.name });
		        				   else{
		        					   $("#employe-type-select2").select2("data", null);
		        				   }
		        				   
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
	        			var id = $(this).attr('id');
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
	        	
	        
	        	
	        	
	          }
			    
			    
	   
			    
		
		//"+source.id+"
		
		});

	};

	$(function() {
		datatableInit();
		
		
		
		
		
	});

}).apply( this, [ jQuery ]);
