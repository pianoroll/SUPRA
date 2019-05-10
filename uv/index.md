---
title: SUPRA Universal Viewer
author: Craig Stuart Sapp
keywords: enhanced universal viewer
permalink: /uv/index.html
vim: ts=3
summary: 
---

<div id="info"></div>

<div style="height:54px; width:100%;"><audio style="margin-top:-7px; width:100%;" id="audio"></audio></div>

<div id="uv" class="uv"></div>

<div style="height:5000px"></div>

{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}


<style>
#mycontent.container {
	margin-left: 20px;
	margin-right: 0;
}
#uv {
	margin-left: -5px;
}
</style>

<!--
	This is what the embed iframe src links to. It doesn't need to communicate with the parent page, only fill the available space and look for #? parameters
	vim: ts=3
-->

<link rel="stylesheet" type="text/css" href="uv.css">
<script type="text/javascript" src="lib/offline.js"></script>
<script type="text/javascript" src="helpers.js"></script>
<script type="text/javascript" src="uv.js"></script>

<!--
<script type="text/javascript">
	window.addEventListener('uvLoaded', function(e) { 
         var urlDataProvider = new UV.URLDataProvider(true);
			var options = {
				root: '.',
				iiifResourceUri: 'https://purl.stanford.edu/dp563zh2166/iiif/manifest',
				configUri: undefined,
				collectionIndex: 0,
				manifestIndex: 0,
				sequenceIndex: 0,
				canvasIndex: 0,
				rangeId: 0,
				rotation: 270,
				xywh: "",
				embedded: false,
				locales: [{name: "en-GB"}]
			}
			uv = createUV('#uv', options, urlDataProvider);
		}, false);
</script>
-->


<script>
    $(function() {
        var $UV = $('#uv');
        var $AUDIO = $('#audio');
        function resize() {
            var windowWidth = window.innerWidth;
            var windowHeight = window.innerHeight;
            $UV.width(windowWidth);
            $UV.height(windowHeight);
            $AUDIO.width(windowWidth);
        }
        $(window).on('resize' ,function() {
            resize();
        });

        resize();
    });
</script>


