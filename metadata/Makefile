.PHONY: commands

# Download marcxml for pairings of DRUID/catkey entries in the
# druid-to-catkey-mapping.txt index.  These stored marcxml are
# used to insert metadata records into SUPRA MIDI files.
download:
	bin/downloadMarcxml -d marcxml druid-to-catkey-mapping.txt



# Create a list of commands to insert metadata records into
# the MIDI files.
commands:
	bin/marcxml2commands ../welte-red/midi-exp > commands

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
	bin/checkForMissingMarcXml ../welte-red/midi-exp





