PROJECT = sed-scripts

prefix ?= /usr/local

SRCS = $(shell ls *.sed)

install: install-$(PROJECT)

install-$(PROJECT):
	@(for f in $(SRCS); \
		do ln -s `pwd`/$$f $(prefix)/bin/sed.$${f%.sed};  \
	done)

clean:
	@(for f in $(SRCS); \
		do rm $(prefix)/bin/sed.$${f%.sed};  \
	done)
