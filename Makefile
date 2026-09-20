
all: iso

iso:
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
