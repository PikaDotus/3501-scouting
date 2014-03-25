function createRadarChart() {
	jQuery.each(gon.matches, function(i, val) {
		console.log("#" + i + " - " + val.top_made_auton);
	});

	var data = {
		labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
		datasets : [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				data : [65,59,90,81,56,55,40]
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : [28,48,40,19,96,27,100]
			}
		]
	}

	var options = {
		scaleFontFamily: "'Helvetica'",
		scaleLineColor: 'rgba(255, 255, 255, .5)',
		angleLineColor: 'rgba(255, 255, 255, .5)',
		pointLabelFontColor : "#ffffff",
		scaleFontColor : "#ffffff"
	}

	// get the context with jQuery
	var context = $("#myChart").get(0).getContext('2d');
	// get first returned node
	var myNewChart = new Chart(context).Radar(data, options);
}

function createLineChart() {
	var data = {
		labels : ["January","February","March","April","May","June","July"],
		datasets : [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,1)",
				pointColor : "rgba(220,220,220,1)",
				pointStrokeColor : "#fff",
				data : [65,59,90,81,56,55,40]
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : [28,48,40,19,96,27,100]
			}
		]
	}

	var options = {
		scaleFontFamily: "'Helvetica'",
		scaleFontColor : "#ffffff"
	}

	var context = $("#lineChart").get(0).getContext('2d');
	var myLineChart = new Chart(context).Line(data, options);
}
