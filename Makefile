CFLAGS?=-pedantic -Wall

all:
	$(CC) $(CFLAGS) -o xdmshutdown xdmshutdown.c -lXm -lXt -lX11 -lSM  -lICE -lXext

clean:
	rm -f xdmshutdown
install: 
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	cp -f xdmshutdown $(DESTDIR)$(PREFIX)/bin/xdmshutdown
