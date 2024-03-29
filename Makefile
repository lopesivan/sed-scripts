PROJECT = sed-scripts

PREFIX ?= /usr/local

SRCS = $(shell ls *.sed)

install: install-$(PROJECT)

chmod-755-$(PROJECT):
	@(for f in $(SRCS);  \
		do chmod +x $$f; \
	done)

chmod-644-$(PROJECT):
	@(for f in $(SRCS);  \
		do chmod -x $$f; \
	done)

install-$(PROJECT): chmod-755-$(PROJECT)
	mkdir -p $(PREFIX)/bin
	@(for f in $(SRCS); \
		do  cp $$f $(PREFIX)/bin/sed.$${f%.sed};  \
	done)

clean: chmod-644-$(PROJECT)
	@(for f in $(SRCS); \
		do  rm $(PREFIX)/bin/sed.$${f%.sed};  \
	done)
