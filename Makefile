
all: iso

iso:
	NONFREE_COMPONENTS="contrib non-free non-free-firmware" \
	OUT="$(CURDIR)/dist" \
	CDNAME="tabian" \
	build-simple-cdd --conf cdd.conf
clean:
	rm -rf tmp dist
