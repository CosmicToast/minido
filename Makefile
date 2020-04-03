SHELL := zsh

all: minido.zwc

minido.zwc: $(wildcard lib/*)
	zcompile -U $@ $^

.PHONY: clean
clean:
	rm -f minido.zwc