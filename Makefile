BIBTEX = bibtex
PDFLATEX = pdflatex

FILE_BASE = baseSystem
FILE_TEX = $(FILE_BASE).tex

all: pdfbib

pdfbib: $(FILE_TEX)
	$(PDFLATEX) $(FILE_TEX)
	$(BIBTEX) $(FILE_BASE)
	$(PDFLATEX) $(FILE_TEX)
	$(PDFLATEX) $(FILE_TEX)

pdf: $(FILE_TEX)
	$(PDFLATEX) $(FILE_TEX)

clean:
	-rm *.log *.aux *.out *.blg *.bbl *.toc

