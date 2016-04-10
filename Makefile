.PHONY: clean all

LATEX := pdflatex
LATEXFLAGS := -interaction=nonstopmode

PDFS := main.pdf

all: $(PDFS)

%.pdf: %.tex
	$(LATEX) $(LATEXFLAGS) $<
	$(LATEX) $(LATEXFLAGS) $<

clean:
	rm -rf ./*.aux ./*.log ./*.tex~ ./*.toc ./*.pdf ./*.tex.backup ./*.snm ./*.vrb ./*.nav ./*.out ./*.fdb_latexmk ./*.maf ./*.mtc ./*.mtc0 ./*.synctex.gz ./*.fls
