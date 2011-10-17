var Ajax;
if (Ajax && (Ajax != null)) {
	Ajax.Responders.register({
	  onCreate: function() {
        if($('spinner') && Ajax.activeRequestCount>0)
          Effect.Appear('spinner',{duration:0.5,queue:'end'});
	  },
	  onComplete: function() {
        if($('spinner') && Ajax.activeRequestCount==0)
          Effect.Fade('spinner',{duration:0.5,queue:'end'});
	  }
	});
}

$("#login_form").bind("submit", function() {

	if ($("#login_name").val().length < 1 || $("#login_pass").val().length < 1) {
	    $("#login_error").show();
	    $.fancybox.resize();
	    return false;
	}

	$.fancybox.showActivity();

	$.ajax({
		type		: "POST",
		cache	: false,
		url		: "/data/login.php",
		data		: $(this).serializeArray(),
		success: function(data) {
			$.fancybox(data);
		}
	});

	return false;
});

/*
jQuery('#poop').fancybox();
jQuery('#poop1').fancybox();
jQuery('#poop2').fancybox();
*/
