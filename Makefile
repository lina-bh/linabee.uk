.POSIX:

NPMRUNNER := npx

all: output.css index.html

index.html: index.md template.html
	    pandoc -t html5 \
		-c output.css \
		--template=template.html \
		-o $@ \
		--section-divs \
		index.md

output.css: input.css index.html
	    tailwindcss -i input.css -o $@ --content ./*.html
