$(document).ajaxError(function myErrorHandler(event, xhr, ajaxOptions, thrownError) {
	     $("#modalDanger").modal("show");
	     if(xhr.status==403){
	    	 window.location.href='/login';
	     }else
	    	 $("p").text(xhr.responseJSON.message)
	  


});



function success(text){
	$("#modalHeaderColorSuccess").modal("show");
    $("p").text(text);
}
function successOnNextPage(text){
	localStorage.setItem('success',text);
	$("#modalHeaderColorSuccess").modal("show");
    $("p").text(text);
}

if(localStorage.getItem('success')!=null){
	$("#modalHeaderColorSuccess").modal("show");
    $("p").text(localStorage.getItem('success'));
    localStorage.removeItem('success')
}


 $(document).ajaxSend(function(e, xhr, opt){  
	 xhr.setRequestHeader('Authorization', localStorage.token);
	      
 });
 
 
 
 function deleteRecord(text, submitter){
	 $("#modalconfirmation").modal("show");   
	 $("#modalconfirmation").find("p").html(text);
	 
	 $("#modalconfirmation").find(".btn-primary").unbind("click");
	 $("#modalconfirmation").find(".btn-primary").on("click",function(e){
		 submitter();
		  
		 
	 });
	 
 }
 
 
 
 function attachValidator(formid, submitter){
	 $('#'+formid).validate({
			settings:{onsubmit: true},
			highlight: function( label ) {
				$(label).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			success: function( label ) {
				$(label).closest('.form-group').removeClass('has-error');
				label.remove();
			},
			errorPlacement: function( error, element ) {
				var placement = element.closest('.input-group');
				if (!placement.get(0)) {
					placement = element;
				}
				if (error.text() !== '') {
					placement.after(error);
				}
			},
			submitHandler: function(form) {
				submitter();
			  },
			  invalidHandler: function(event, validator) {
			  }
			  
		});
	 
		$('#'+formid).submit(function(e) {
			e.preventDefault(); 
		
		});

		$('#'+formid).find('.save').unbind('click');
		$('#'+formid).find('.save').on('click',function(e){
			$('#'+formid).submit();	
		});
		
		
		
		
		
 }
 
 
 
 
 /*
  * 
  * Для устранения ошибки в консоли браузера.
  * Ошибка: [Violation] Added non-passive event listener to a scroll-blocking 'wheel' event. Consider marking event handler as 'passive' to make the page more responsive. 
  * 
  * Объяснение тут: http://qaru.site/questions/49877/zonejs-violation-warnings-on-console-in-angular-project-only-on-chrome
  * 
  * 
  */
//will NOT throw violation
 document.addEventListener("wheel", function(e) {
   e.preventDefault(); // does nothing since the listener is passive
 }, {
   passive: true
 });
 
 
