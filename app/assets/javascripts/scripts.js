$(document).on('turbolinks:load', function() { 
  console.log("document ready");
  $(".alert").delay(5000).fadeOut(1000);
});
