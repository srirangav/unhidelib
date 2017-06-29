# Makefile - Makefile for unhidelib
# $Id: Makefile 1317 2013-05-17 01:24:43Z ranga $

PGM_NAME = unhidelib
PGM_REL  = 0.1.1
WORKDIR  = work
FILES    = org.calalum.ranga.$(PGM_NAME).plist.in \
	   README.txt \
           Makefile

all:
	@echo Nothing to do

tgz:
	/bin/rm -rf $(WORKDIR)
	mkdir -p $(WORKDIR)/$(PGM_NAME)-$(PGM_REL)
	cp $(FILES) $(WORKDIR)/$(PGM_NAME)-$(PGM_REL)
	cd $(WORKDIR) && \
        tar -cvf ../$(PGM_NAME)-$(PGM_REL).tar $(PGM_NAME)-$(PGM_REL)
	gzip $(PGM_NAME)-$(PGM_REL).tar
	mv $(PGM_NAME)-$(PGM_REL).tar.gz $(PGM_NAME)-$(PGM_REL).tgz

plist:
	sed -e "s@##HOME##@$$HOME@" < \
            org.calalum.ranga.$(PGM_NAME).plist.in > \
            org.calalum.ranga.$(PGM_NAME).plist

install: plist
	mkdir -p "$$HOME/Library/LaunchAgents/"
	cp org.calalum.ranga.$(PGM_NAME).plist \
           "$$HOME/Library/LaunchAgents/" && \
	/bin/launchctl load \
           "$$HOME/Library/LaunchAgents/org.calalum.ranga.$(PGM_NAME).plist" \
        && /usr/bin/killall Dock

clean:
	/bin/rm -rf *~ .*~ .DS_Store $(WORKDIR) $(PGM_NAME)*.tgz \
                org.calalum.ranga.$(PGM_NAME).plist
