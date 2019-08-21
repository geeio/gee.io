.PHONY: resume

HARP?=./node_modules/.bin/harp


server:
	$(HARP) server

resume:
	cp /src/resume/build/cv.pdf /src/geeio/gee.io/public
