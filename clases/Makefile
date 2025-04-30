LATEX=latexmk -lualatex
# LATEX=lualatex

.PHONY: all clean force-build

# define default targets for `make
all: main_clase_1.pdf main_clase_2.pdf main_clase_3.pdf
	# main_clase_1.pdf

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.nav
	rm -f *.out
	rm -f *.run.xml
	rm -f *.snm
	rm -f *.synctex.gz
	rm -f *.toc
	rm -f *.xml

# this target is never made, listing it as a dependency forces the make tasks
# below to be always executed.
force-build:

main_clase_1.pdf: force-build
	TEXINPUTS=$(PWD)/:$(PWD)/clase_1:$(TEXINPUTS) \
	lualatex clase_1/main_clase_1.tex

main_clase_2.pdf: force-build
	TEXINPUTS=$(PWD)/:$(PWD)/clase_2:$(TEXINPUTS) \
	lualatex clase_2/main_clase_2.tex

main_clase_3.pdf: force-build
	TEXINPUTS=$(PWD)/:$(PWD)/clase_3:$(TEXINPUTS) \
	$(LATEX) clase_3/main_clase_3.tex

images/feedback-form-qr.png:
	echo https://forms.gle/8b82uYx1ZYbvKZQQA | qrencode -t png -o $@

qr: images/feedback-form-qr.png

