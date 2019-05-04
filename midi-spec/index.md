---
title: SUPRA MIDI file descriptions
author: Craig Stuart Sapp
keywords: midi
permalink: /midi-spec/index.html
vim: ts=3
summary: 
---

# SUPRA MIDI files #

## Raw MIDI files ##

### Pixel ticks ###

### Acceleration emulation ###

## Expressive MIDI files ##

## Metadata parameters ##

All SUPRA MIDI files contain metadata fields describing the MIDI
file, such as the title, composer, and performer, as well as detailed
parameters describing the analysis of the original roll image and
interpretation of expression applied to the roll.  The metadata is
stored as text meta messages in the tempo track of the MIDI file.
Each parameter is stored in a separate text meta message.  The basic
structure of an entry is:

```
@KEY: VALUE
```

In other words, the parameter key is prefixed by an `@` character
and is followed by a `:` character.  The KEY does not contain
spaces, but uses underscores to represent spaces in the parameter
name.  The value contains any number of characters, with accented
letters in title/composer/performer names represented by hexadecimal
unicode numeric entities, such as "&#xE9" for the letter "é" (this
encoding is taken directly from the Stanford Libraries' XML catkey
entries for the rolls).  The order of the parameters is not fixed, 
since processing of the MIDI file may rearrange the ordering.

Metadata parameters can be extracted SUPRA MIDI files using the <a
target="_blank"
href="https://github.com/pianoroll/midiroll/blob/master/tools/rolltext.cpp">rolltext</a>
program (to be described more later).

All metadata entries from all files in the SUPRA digital archive 
are available in <a target="_blank" href="https://github.com/pianoroll/SUPRA/blob/master/index.aton">this file</a> 
in the <a target="_blank" href="https://github.com/pianoroll/SUPRA">SUPRA Github repository</a>.
The file can be converted into JSON data by using the <a target="_blank" href="https://aton.sapp.org"> ATON Javascript library</a>.
Additionally, you can view this metadata in the javascript console of your browser by typing the variable name <b>ROLLINFO</b>:


<figure class="figure">
  <img src="rollinfo.png" width="800" class="figure-img img-fluid center-block rounded" alt="figure.">
</figure>




{% include_relative metadata.html %}

<div style="height:300px"></div>

{% include_relative styles-local.html %}
{% include_relative scripts-local.html %}



