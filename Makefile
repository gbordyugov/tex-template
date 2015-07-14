PDFS     = template.pdf

all: $(PDFS)

.SUFFIXES: .tex .pdf

.tex.pdf:
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

clean:
	rm -rf *.log *.aux *.bbl *.blg *.out *.toc *~ $(PDFS)
