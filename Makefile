

all: ts2mkvd queuerecording

install:
	install -d $(DESTDIR)/usr/bin
	install -m 755 ts2mkvd $(DESTDIR)/usr/bin
	install -m 755 queuerecording $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/etc/vdr/command-hooks
	install -m 644 reccmds.ts2mkv.conf $(DESTDIR)/etc/vdr/command-hooks
	install -d $(DESTDIR)/usr/share/vdr/command-hooks
	ln -s /etc/vdr/command-hooks/reccmds.ts2mkv.conf $(DESTDIR)/usr/share/vdr/command-hooks/reccmds.ts2mkv.conf
	install -d -o 666 -g 666 $(DESTDIR)/var/cache/ts2mkvd/joinqueue
	install -d $(DESTDIR)/var/cache/ts2mkvd/transcodequeue

