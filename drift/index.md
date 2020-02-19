---
title: SUPRA drift analysis
author: Craig Stuart Sapp
keywords: feedback
permalink: /drift/index.html
vega-lite: true
summary:
---

{% include_relative listeners.html %}


<style>
.navy {
	color: #999;
}
.navy:hover {
	color: #8b1515;
	cursor: pointer;
}

table.info td:first-child {
	font-weight: bold;
	text-align:right;
	padding-right:20px;
	margin-right:20px;
}

</style>

<div align="center">
<i onclick='displayPrevDruid()' title='Go to previous roll (left-arrow)' class='navy fa fa-caret-left'></i>
Browse drift plots for other scans: 
<i onclick='displayNextDruid()' title='Go to next roll (right-arrow)' class='navy fa fa-caret-right'></i>
</div>


<h1>Drift plot</h1>


<div id="info"></div>

This page shows a drift plot for the roll listed above.  The next plot shows the left-to-right drift of the roll 
throughout the scan.  The axis units are in pixels, with the image scanned at 300 dpi.  So the total range of the plot
represents about 0.2 inches, or 5 mm.  The horizontal axis if the plot is the position in feet from the first 
musical hole on the roll (drift is not analyze before or after the music).

<div id="plot"></div>

The following plot (in red) shows the slope of the drift plot.  The slope is taken as the difference between the current
position on the roll and the position one inch (300 pixels) later.  This value is then smoothed to remove
irregularities caused by small-scale deviations.

<div id="plot-slope"></div>

The third plot in green shows the acceleration, which is the slope of the slope of the drift plot.  This plot
is also smoothed to remove small-scale features.

<div id="plot-accel"></div>

<script>

var PLOT = {
	"$schema": "https://vega.github.io/schema/vega-lite/v4.0.0-beta.1.json",
	"description": "Drift plot",
	"width": 1200,
	"height": 250,
	"transform": [
		{"calculate": "datum.r/12/300.25", "as": "feet"}
	],
	"data": {
		"url": "data/b/bc072xf6791_drift.json"
	},

	"encoding": {
		"x": {
			"field": "feet", 
			"title": "length of roll [feet]", 
			"type": "quantitative"
		},
		"y": {
			"field": "d", 
			"title": "drift [300 DPI pixels]", 
			"scale": {"domain": [-35, 35]},
			"type": "quantitative"
		}
	},
	"mark": "line"
}


</script>



