function Ctrl($scope) {
}

$(function() {
	$( "#draggable" ).draggable({ containment: "#containment-wrapper", scroll: false });
});

$(function() {

	var getSpeedText = function(value) {
		if (value == 0) {return "please select"};
		if (value == 1) {return "very slow"};
		if (value == 2) {return "slow"};
		if (value == 3) {return "okay"};
		if (value == 4) {return "good"};
		if (value == 5) {return "great"};
	}

  $( "#speed_slider" ).slider({
    value: 0,
    min: 0,
    max: 5,
    step: 1,
    slide: function( event, ui ) {
      $( "#speed" ).val( getSpeedText(ui.value) );
    }
  });

  $( "#speed" ).val( getSpeedText($( "#speed_slider" ).slider( "value" )) );

});

$(function() {
  $( "input[type=submit]" )
    .button()
    .click(function( event ) {



    });
});
