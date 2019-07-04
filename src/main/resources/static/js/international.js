function switchLocale(locale) {
  localStorage.localeName = locale;
  location.reload();
}

var localeName = localStorage.localeName;
if (localeName == undefined)
  localeName = 'ru';
$.ajax({
  url : '/locale/locale_' + localeName + '.json',
  method : 'GET',
  contentType : "application/json",
  async : false,
  success : function(e) {
    localeparams = e;
    
    
   
    
  }
});
function msg(key) {
  if (localeparams[key] == undefined)
    return key;
  return localeparams[key];
}

$(document).ready(function() {
  $('msg').each(function(index) {
    var key = $(this).html();
    var prnt = $(this).parent();
    $(this).remove();
    
    prnt.append(msg(key));

  });
  $('body').css('opacity', 'unset');
});