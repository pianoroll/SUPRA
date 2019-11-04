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

<i onclick='displayPrevDruid()' class='navy fa fa-caret-left'></i>&nbsp;
<i onclick='displayNextDruid()' class='navy fa fa-caret-right'></i>

<div id="plot"></div>
<div id="info"></div>

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



