
index:
	bin/makeindex > index.aton


# Make type-0 MIDI files:
0: type0
type-0: type0
type0:
	bin/maketype0 welte-red

metadata: m1

m1: welte-red-m1

welte-red-m1:
	bin/createMetadataCommands welte-red/midi-exp/*.mid > commands

welte-red-m2:
	chmod 0755 ./commands
	./commands > commands2

welte-red-m3:
	chmod 0755 ./commands2
	./commands2




