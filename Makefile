MDs := $(shell find -name '*.md')
PDFs := $(patsubst %.md,%.pdf,$(MDs))
HTMLs := $(patsubst %.md,%.html,$(MDs))
CSS = .kultiad-serif.css
HTML_FLAGS = -S -c $(CSS) --self-contained
PDF_FLAGS = -S -V geometry:margin=1in \
			-Vpapersize=A4 -Vfontsize=12pt \
			-Vdocumentclass=article

all: $(PDFs)

html: $(HTMLs)

clean:
	@rm -f $(PDFs) $(HTMLs)

%.pdf: %.md
	pandoc $(PDF_FLAGS) -o $@ $<

%.pdf: %.md %.bib
	pandoc $(PDF_FLAGS) --biblatex --bibliography $*.bib -o $@ $<

%.html: %.md
	pandoc $(HTML_FLAGS) -o $@ $<

%.html: %.md %.bib
	pandoc $(HTML_FLAGS) --bibliography $*.bib -o $@ $<
