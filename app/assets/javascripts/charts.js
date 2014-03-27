function range(start, count) {
    if(arguments.length == 1) {
        count = start;
        start = 0;
    }

    var ret = [];
    for (var i = 0; i < count; i++) {
        ret.push(start + i);
    }
    return ret;
}

function getAllInRange(matchAttribute) {
	var ret = [];

	$(gon.matches).each(function(i, val) {
		ret.push(val[matchAttribute]);
	});

	return ret.reverse();
}

function createLinePlot(matchAttributeMade, matchAttributeMissed) {
	var made = getAllInRange(matchAttributeMade);
	var missed = getAllInRange(matchAttributeMissed);

	var data = {
		labels : range(1, made.length), // match # instead
		datasets : [
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : made
			},
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				data : missed
			}
		]
	}

	var options = {
		scaleFontFamily	: "'Helvetica'",
		scaleFontColor : "#ffffff",
		scaleShowGridLines : false,
		scaleLineColor : "rgba(255, 255, 255, 0.4)"
	}

	var context = $("#" + matchAttributeMade + "_chart").get(0).getContext('2d');
	var theChart = new Chart(context).Line(data, options);
}
