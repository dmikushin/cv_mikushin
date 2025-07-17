# Makefile for CV compilation with bibliography

# Main document name (without extension)
MAIN = cv

# Default target
all: $(MAIN).pdf

# Full compilation cycle with bibliography
$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN).tex
	bibtex $(MAIN)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

# Clean temporary files
clean:
	rm -f $(MAIN).aux
	rm -f $(MAIN).log
	rm -f $(MAIN).out
	rm -f $(MAIN).bbl
	rm -f $(MAIN).blg
	rm -f $(MAIN).run.xml
	rm -f $(MAIN)-blx.bib
	rm -f cv_publications.bib

# Clean all including PDF
cleanall: clean
	rm -f $(MAIN).pdf

.PHONY: all clean cleanall