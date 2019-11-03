---
title: SUPRA statistics
author: Craig Stuart Sapp
keywords: statistics
permalink: /stats/index.html
vegalite: true
vim: ts=3
summary: 
---

<article>
<h1> SUPRA statistics </h1>

<ul>
<li> <a href="#Basic">Basic statistics about the rolls</a> </li>
<li> <a href="#Scan">List of scan statics by DRUID</a> </li>
</ul>
</article>
<div style="height:10px;"></div>

<a name="Basic"></a>
<article>
<h2> Basic statistics </h2>
<div id="basic"></div>
</article>


<div id="lengthHistogram"></div>
<script>
//
// print a histograms of the roll durations here, but first need to 
//   get the duration of each roll performance.
//
var lengthHistogram = {
   "$schema": "https://vega.github.io/schema/vega-lite/v4.json",
   "data": {"values": null},
   "width": 1000,
   "height": 300,
   "mark": "bar",
   "encoding": {
      "x": {
         "bin": true,
         "field": "PDT",
         "title": "Publication year",
         "bin": {
            "binned": true,
            "step": 1
         },
         "type": "ordinal"
      },
      "y": {
         "aggregate": "count",
         "title": "Number of settings published",
         "type": "quantitative"
      }
   }
};

// vegaEmbed('#lengthHistogram', lengthHistogram);

</script>

<a name="Scan"></a>
<article>
<h2> Scanning statistics </h2>

The following table lists scanning statistics related to the extracted
MIDI files.  Highlighted cells indicate potential problems.  Click
on the DRUID entry in the first column to view the scan in the
Universal Viewer.  Colored cells indicate sub-optimal values in
three levels: yellow is marginally bad, orange is somewhat bad, and
red is bad.  Roll images with red-level warnings should be checked
for problems.  Edge tears can affect the expression interpretation;
excessive "bad holes" could indicate tape edits or lots of internal
tears; excessive shifts indicates a novice scanning operator;
excessive drift is unusually (but extraction software can compensate
for very large drifts); tiny holes usually indicate thin paper
(and/or image overexposure); very large dust scores probably indicates
a very narow scanning margin.  Click on the table headers to sort the
table by values in that column.

<div id="scan"></div>
</article>


{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}



