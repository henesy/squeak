all: 
	cd Plan9
	mk clean
	mk

install: 
	cp Plan9/squeak /$objtype/bin/squeak
	cp rc/run_squeak /rc/bin/run_squeak
	cp man/squeak /sys/man/1/squeak
	mkdir -p $home/lib/squeak_image
	dircp image $home/lib/squeak_image
	echo The command run_squeak will start Squeak!

uninstall:
	rm -r $home/lib/squeak_image
	rm /sys/man/1/squeak
	rm /rc/bin/run_squeak
	rm /$objtype/bin/squeak

nuke:
	cd Plan9
	mk clean

