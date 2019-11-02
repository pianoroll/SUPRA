---
title: SUPRA Homepage
author: Craig Stuart Sapp
keywords: homepage
permalink: /index.html
vim: ts=3
summary: 
---


<style>

table#sss:hover, table#sss tbody:hover, table#sss tr:hover, table#sss td:hover {
	background: transparent !important;
}

#textlink:hover {
	color: #8b1515;
}

input:focus {
	outline-width: 0;
}

</style>

<table id="sss" style="margin-bottom:20px;">
<tr><td>
<span style="margin-left: 18px; padding-top: 30px; visibility:hidden; display: block;" title="Copy search link." id="textlink" class="link" onclick="copyTextSearchLink()"><i class="fa fa-link" aria-hidden="true"></i></span>
</td><td style="padding-left:-50px;">
<input style="margin-left:40px;" id="search" placeholder="search" value="" autocomplete="off">
</td><td>
<span id="search-count"></span>
</td></tr>
</table>


<div id="list"></div>

{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}
{% include_relative listeners.html %}

