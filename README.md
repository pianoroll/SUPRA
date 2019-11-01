# SUPRA [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Stanford University Piano Roll Archive

This repository contains MIDI files extracted from scans of piano
rolls collected by the Stanford Libraries, a majority coming from
the [Condon Collection](https://library.stanford.edu/collections/denis-condon-collection-reproducing-pianos-and-rolls).
The [SUPRA](https://supra.stanford.edu) website contains links to
the original scans of the rolls in the Libraries' digital repository,
and this repository collects the individual MIDI files of notes
extracted from each scan.

There are two types of MIDI files in the repository:

(1) "raw" MIDI files, which contain MIDI notes that represent holes
in the original scan.  This sort of MIDI file is useful for making
recuts (copies) of piano rolls, as well as for creating your own
expression realizations.  Software to generate these MIDI files is
available in [this
repository](https://github.com/pianoroll/roll-image-parser).

(2) "expression" MIDI files, which have interpreted loudnesses
applied to notes based on the expression tracks on each side of the
original piano roll.  This sort of MIDI file is suitable for listening
and playback as well as for computational performance analysis.
Software to generate these MIDI files from the raw ones is available
at [this repository](https://github.com/pianoroll/midi2exp).

Renderings of the expression MIDI files into audio recordings are
also available.  These can currently be listened to on the
[SUPRA](https://supra.stanford.edu) website, but will be made
available for download soon.

MIDI files are organized into directories based on the format of
the roll (which type of piano the original roll is compatible with).
Currently only the earliest Welte-Mignon rolls are available in the
`welte-red` directory, meaning "red-colored paper" Welte-Mignon
rolls, or more specifically T-100 WM rolls, since there are 100
tracker bar holes on the pianos that play these rolls.


## MIDI file types ##

There are two MIDI files for each piano roll in this repository as
discussed above: (1) raw MIDI files and (2) Expression-enhanced
MIDI files.  This section describes these two version of MIDI files
as how to create other derivatives of the MIDI files.  Here is a schematic
of the productions of the MIDI files:

<img width="1143" alt="Screen Shot 2019-10-29 at 8 30 24 PM" src="https://user-images.githubusercontent.com/3487289/67826796-fbe48880-fa8a-11e9-9e49-d5799142dc3e.png">

More technical information about the MIDI files are available in the
[MIDI specs](https://supra.stanford.edu/midi-spec/) on the SUPRA website.

### Raw MIDI files ###

For each roll brand/format, there is a subdirectory called `midi-raw`,
such as for the [Welte-Mignon red
rolls](https://github.com/pianoroll/SUPRA/tree/master/welte-red).
This directory contains the MIDI files that represent each hole on
the piano roll as a separate note.  There are usually multiple holes
representing each musical note.  The raw MIDI files also represent
the expression holes (dynamics and pedaling) as audible notes.

The raw MIDI files are suitable for (1) projects that want to
implement their own expressive MIDI files, and (2) audio-to-image
alignment applications.  The raw MIDI files are not intended for
listening, although it is interesting to listen to the machine-gun
version of the music that is produced.  The automatically identified
note attacks are played loudly, while the hole-notes that should
be merged with the attacks are played quietly to give an approximate
impression of the music that is contained on the roll.  No dynamics
are otherwise given to the notes (see the expression MIDI files
below).


### Expression MIDI files ###

The expression MIDI files take the expression holes from the raw MIDI files
and convert them into note attacks velocities, as well as generate sustain
and soft pedaling.  Notes representing the expression holes are removed
from the final expression MIDI file.


## Further derivative files ##


### Type-0 Expression MIDI files ###

For audio rendering of the expression MIDI files, it was necessary
for us to convert the files into type-0 MIDI files with the tempo
changes emulating roll acceleration converted into tick values.
For projects needing similar accuracy, the [type0](https://github.com/pianoroll/midiroll/blob/master/tools/type0.cpp) utility program can be used
to generate the type-0 MIDI file from the expression MIDI file.


### Audio renderings ###

For the best listening experience you should listen to the
audio renderings of the expression MIDI files that are found
on the [SUPRA](https://supra.stanford.edu) website.  These
audio files were rendered using the Ivory Keys II software
synthesizer.


## Citation ##
If using this dataset, please cite the following paper:

Zhengshan Shi, Craig Stuart Sapp, Kumaran Arul, Jerry McBride, Julius O. Smith III. SUPRA: Digitizing the Stanford University Piano Roll Archive. In Proc. of the 20th Int. Soc. for Music Information Retrieval Conf. (ISMIR), pages 517-523, Delft, The Netherlands, 2019.

```bibtex
@INPROCEEDINGS{supra2019,
  TITLE={SUPRA: Digitizing the Stanford University Piano Roll Archive.},
  AUTHOR={Shi, Zhengshan and Sapp, Craig Stuart and Arul, Kumaran and McBride, Jerry and Smith, Julius O.},
  BOOKTITLE={Proceedings of the 20th International Society for Music Information Retrieval},
  pages={517-523},
  year={2019},
}
```

