PUBLIC_DIR = $(HOME)/Public

.SUFFIXES: .md .html
.md.html:
	Markdown.pl $< > $@

MARKDOWN = $(wildcard *.md)
HTML = $(MARKDOWN:.md=.html)

.PHONY: all clean install
all: $(HTML)
clean:
	rm -f $(HTML)
install: all
	install -d $(PUBLIC_DIR)
	install -m 644 $(HTML) $(PUBLIC_DIR)
