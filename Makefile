PROJECT = sed-scripts

prefix ?= /usr/local

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
	@(for f in $(SRCS); \
		do sudo ln -s `pwd`/$$f $(prefix)/bin/sed.$${f%.sed};  \
	done)

clean: chmod-644-$(PROJECT)
	@(for f in $(SRCS); \
		do sudo rm $(prefix)/bin/sed.$${f%.sed};  \
	done)
