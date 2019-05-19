---
title: SUPRA Homepage
author: Craig Stuart Sapp
keywords: random
permalink: /image-analysis/index.html
vim: ts=3
summary: 
---

# Image analysis reports #

View the raw report files <a target="_blank"
href="https://bitbucket.org/craigsapp/piano-roll-analyses/src/master">here</a>.
View descriptions of the parameters on the <a target="_blank"
href="/midi-spec">MIDI file description page</a>.



<div style="font-size:2.25rem; margin-bottom:20px;" id="menu"></div>

<div id="info"></div>

<div style="height:300px; overflow-y:visible; overflow-x:scroll; width:100%;" id="image"></div>

<div id="analysis"></div>




<h1> Drift analysis</h1>

<div style="width:100%;" id="drift"></div>




<h1> Hole-position histogram</h1>

The following plot shows histograms of hole centroid positions along the width of the
piano roll.  The blue plot are the raw hole positions in the scan, the red plot shows
their positions after drift correction.  The x-axis labels indicates the pixel position
along the width of the image from bass side to treble side of the roll.  Scroll to the right
to see histogram positions for more tracker bar positions. Intermediate spaces between
tracker bar positions with 0 histogram counts are removed from the plot (otherwise
the plot cannot be displayed).

<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-0"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-1"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-2"></div>
<div style="overflow-y:visible; overflow-x: scroll; width:100%;" id="hole-histogram-3"></div>

<div style="height:300px"></div>

{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}



