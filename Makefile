mascab.pdf : mascab.tex $(wildcard *.bib)
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab

all      : mascab.pdf

clean    :
	@rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.toc *.xml

spotless : clean
	@rm -f *.pdf
