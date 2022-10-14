
PREFIX = /usr/local

dra: dra.sh dra.awk dra.tsv
	cat dra.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar czf - dra.awk dra.tsv >> $@
	chmod +x $@

test: dra.sh
	shellcheck -s sh dra.sh

clean:
	rm -f dra

install: dra
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dra $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dra

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dra

.PHONY: test clean install uninstall
