
SHELL = /bin/bash

inputs := $(wildcard Dockerfile*.in)
outputs := $(foreach rl,$(inputs),$(subst .in,,$(rl)))

# The files with the build rules for each dependency

rules_full := $(wildcard rules/*)
rules_sh := $(foreach rl,$(rules_full),$(subst rules/,,$(rl)))
rules := $(foreach rl,$(rules_sh),$(subst .sh,,$(rl)))


all : $(outputs)

% : %.in
	@while IFS='' read -r line || [[ -n "$${line}" ]]; do \
	match="no"; \
	for rule in $(rules); do \
	rulefile="rules/$${rule}.sh"; \
	if [[ "$${line}" =~ @$${rule}@ ]]; then \
	match="yes"; \
	echo -n "RUN " >> $@; \
	cat "$${rulefile}" >> $@; \
	break; \
	fi; \
	done; \
	if [ "$${match}" = "no" ]; then \
	echo "$${line}" >> $@; \
	fi; \
	done < $<


clean :
	@rm -f ${outputs} *~

