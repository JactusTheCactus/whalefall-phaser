.ONESHELL :
.SILENT :
.PHONY : all
SHELL := /usr/bin/bash
PUG := $(wildcard *.pug)
HTML := $(patsubst %.pug,%.html,$(PUG))
TS := $(wildcard src/*.js)
JS := $(patsubst src/%.js,dist/%.js,$(TS))
all : $(HTML) $(JS)
%.html : %.pug
	npx pug3 $<
dist/%.js : src/%.js
	cp $< $@