

.PHONY: commands


# Download marcxml for pairings of DRUID/catkey entries in the
# druid-to-catkey-mapping.txt index.  These stored marcxml are
# used to insert metadata records into SUPRA MIDI files.
download:
	bin/downloadMarcxml -d marcxml druid-to-catkey-mapping.txt


# Create a list of commands to insert metadata records into
# the MIDI files.
commands:
	#bin/marcxml2commands ../welte-red/midi-exp > commands
	bin/marcxml2commands ../welte-red/midi-raw > commands


# Run the list of commands to insert metadata records into
# the MIDI files.
commands2:
	chmod 0755 commands
	./commands


# Check for cases where a MIDI file does not have a matching
# Searchworks entry in the marcxml file cache.  If the program
# does not output any text, then all MIDI files have matching
# marcxml data.
missing:
	#bin/checkForMissingMarcXml ../welte-red/midi-exp
	bin/checkForMissingMarcXml ../welte-red/midi-raw


# The ROLL_TYPE field is required in MIDI files in order for links
# to the MIDI files and audio files on the supra website to be correct.
# The ROLL_TYPE must match one of the subdirectories containing MIDI files
# in the master branch (such as welte-red):
rolltype: rolltype-welte-red
rolltype-welte-red:
	#bin/setRollType -t welte-red ../welte-red/midi-exp/*.mid
	bin/setRollType -t welte-red ../welte-red/midi-raw/*.mid


