---
title: SUPRA Homepage
author: Craig Stuart Sapp
keywords: random
permalink: /image-analysis/index.html
vim: ts=3
summary: 
---

<i onclick='displayPrevDruid()' title='Go to previous roll (left-arrow)' class='navy fa fa-caret-left'></i>&nbsp;
<i onclick='displayNextDruid()' title='Go to next roll (right-arrow)' class='navy fa fa-caret-right'></i>

<h1>Image analysis for <span id="druid"></span></h1>


<div id="plot"></div>
<div id="info"></div>



<!--
<div id="info"></div>
<div style="height:300px; overflow-y:visible; overflow-x:scroll; width:100%;" id="image"></div>
<div id="analysis"></div>
-->


<h2> Edge tear analysis</h2>
<div style="width:100%;" id="tear"></div>


<h2> Suspicious hole analysis</h2>
<div style="width:100%;" id="holes"></div>


<h2> Shift analysis</h2>
<div style="width:100%;" id="shifts"></div>


<h2> Drift analysis</h2>
<div style="width:100%;" id="drift"></div>

<h2> Hole-position histogram</h2>

The following plot shows histograms of hole centroid positions along
the width of the piano roll.  The blue bars are the raw hole positions
in the scan, the red bars show their positions after drift correction.
The x-axis labels indicates the pixel position along the width of
the image from the bass side to treble side of the roll.  Scroll
to the right to see histogram positions for more tracker bar
positions. Intermediate spaces between tracker bar positions with
0 histogram counts are removed from the plot (otherwise the plot
cannot be displayed).

<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-0"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-1"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-2"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-3"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-4"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-5"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-6"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-7"></div>

<div style="height:300px"></div>

{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}
{% include_relative drift-vega.html %}



