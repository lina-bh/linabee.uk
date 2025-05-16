.POSIX:

NPMRUNNER := bunx

all: dist/output.css dist/index.html

dist/index.html: index.md template.html
	mkdir -p dist || :
	pandoc -t html5 \
		-c output.css \
		--template=template.html \
		-o $@ \
		--section-divs \
		index.md

dist/output.css: input.css dist/index.html
	    $(NPMRUNNER) tailwindcss -i input.css -o $@ --content './*.html'
