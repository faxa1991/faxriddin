$(document).ajaxError(function myErrorHandler(event, xhr, ajaxOptions, thrownError) {
			  alert(xhr.responseJSON.message);
			});