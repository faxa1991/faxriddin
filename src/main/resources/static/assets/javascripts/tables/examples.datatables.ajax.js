
(function( $ ) {

	'use strict';

	var datatableInit = function() {

		var $table = $('#datatable-ajax');
		$table.dataTable({
			bProcessing: true,
			sAjaxSource: $table.data('url'),
			aoColumns: [
				{ "mData": "name" },
	            { "mData": "position" },
	            { "mData": "office" },
	            { "mData": "extn" },
	            { "mData": "start_date" },
	            { "mData": "salary" }
	        ]
		
		
		
		});

	};

	$(function() {
		datatableInit();
	});

}).apply( this, [ jQuery ]);