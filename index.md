---
title: SUPRA Homepage
author: Craig Stuart Sapp
keywords: homepage
permalink: /index.html
vim: ts=3
summary: 
---


## List of Red Welte Rolls ##



<div id="list"></div>

<style>
td {
	vertical-align: baseline;
	padding-right: 10px;
}

tr:hover {
	background: #f3f3f3;
}

</style>

<script>

document.addEventListener("DOMContentLoaded", function () {
	var request = new XMLHttpRequest();
	request.addEventListener("load", function () {
		var aton = new ATON;
		displayList(aton.parse(this.responseText).ROLL);
	});
	request.open("GET", "https://raw.githubusercontent.com/pianoroll/SUPRA/master/index.aton");
	request.send();
});


function displayList(index) {
	var output = "";
	output += "<table>";
	output += "<tr>";
	output += "<th>Catalog</th>";
	output += "<th>Title</th>";
	output += "<th>Composer</th>";
	output += "<th>Performer</th>";
	output += "</tr>";
	for (var i=0; i<index.length; i++) {
		if (!index[i].TITLE) {
			continue;
		}
		output += "<tr>";
		output += "<td style='white-space:pre;'>" + index[i].LABEL.replace("Welte-Mignon", "WM") + "</td>";
		output += "<td style='max-width:250px;'>" + index[i].TITLE + "</td>";
		output += "<td style='min-width:250px;'>";
		if (index[i].COMPOSER) {
		 	output += index[i].COMPOSER.replace("-1", "&ndash;1");
		}
		output += "</td>";
		output += "<td>" + index[i].PERFORMER + "</td>";
		output += "</tr>";
	}
	output +=  "</table>";

	var element = document.querySelector("div#list");
	element.innerHTML = output;
}

</script>




