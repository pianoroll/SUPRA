---
title: SUPRA Homepage
author: Craig Stuart Sapp
keywords: homepage
vim: ts=3
permalink: /player/index.html
---

{% include_relative listeners.html %}

<style>

#mycontent {
	margin-left:  0px;
	margin-right: 0px;
}

#image {
	touch-action: pan-x;
	will-change: transform;
	transform: translateX(0px);
	margin-left: 20px;
	overflow-x: scroll;
	width: 100%;
}

div #audio {
	height: 54px;
	width: 100%;
	padding-left: 20px;
	margin-left: 20px;
}

#audio {
	margin-top: -7px;
	width: 100%;
}


table.info * {
	font-size: 2rem;
	margin-left: 20px;
}



</style>

<div id="info"></div>

<div>
	<audio id="audio"></audio>
</div>

<div id="image"></div>



