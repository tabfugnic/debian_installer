
all: iso

iso:
	NONFREE_COMPONENTS="contrib non-free non-free-firmware" \
	OUT="$(CURDIR)/dist" \
	CDNAME="tabian" \
	build-simple-cdd --conf cdd.conf
clean:
	rm -rf tmp dist

test:
	qemu-system-x86_64 \
		-enable-kvm \
		-m 4096 \
		-cdrom dist/tabian-14-amd64-DVD-1.iso \
		-boot d
