# SUPRA
Stanford University Piano Roll Archive

This repository contains MIDI files extracted from scans of piano rolls collected by the Stanford Libraries, a majority coming from the [Condon Collection](https://library.stanford.edu/collections/denis-condon-collection-reproducing-pianos-and-rolls). The [SUPRA](https://supra.stanford.edu) website contains links to the original scans of the rolls, and this repository collects the individual MIDI files from each scan.

There are two types of MIDI files in the repository: 

(1) "raw" MIDI files, which contain MIDI notes that represent holes in the original scan.  This sort of MIDI file is useful for making recuts (copies) of piano rolls, as well as for creating your own expression realizations.  Software to generate these MIDI files is available in [this repository](https://github.com/pianoroll/roll-image-parser).

(2) "expression" MIDI files, which have interpreted loudnesses applied to notes based on the expression tracks on each side of the original piano roll.  This sort of MIDI file is suitable for listening and playback as well as for computational performance analysis.  Software to generate these MIDI files from the raw ones is available at [this repository](https://github.com/pianoroll/midi2exp).

Renderings of the expression MIDI files into audio recordings are also available.  These can currently be listened to on the [SUPRA](https://supra.stanford.edu) website, but will be made available for download soon.

MIDI files are organized into directories based on the format of the roll (which type of piano the original roll is compatible with).  Currently only the earliest Welte-Mignon rolls are available in the `welte-red`, meaning "red-colored paper" Welte-Mignon rolls, or more specifically T-100 WM rolls, since there are 100 tracker bar holes on the pianos that play these rolls.
