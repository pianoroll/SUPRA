---
title: SUPRA drift analysis
author: Craig Stuart Sapp
keywords: feedback
permalink: /drift/index.html
vega-lite: true
summary:
---

{% include_relative listeners.html %}

<div id="plot"></div>

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
		"x": {"field": "feet", "type": "quantitative"},
		"y": {"field": "d", "title": "drift [pixels]", "type": "quantitative"}
	},
	"mark": "line"
}


</script>



