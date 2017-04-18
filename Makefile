mascab.pdf : $(wildcard *.bib) mascab.tex 
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
