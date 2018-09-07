mascab.pdf : $(wildcard *.bib) mascab.tex 
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab

mascab.tax : $(wildcard *.bib)
	@grep -H STRING ${?} > ${@}

all      : mascab.pdf mascab.tax

clean    :
	@rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.toc *.xml

spotless : clean
	@rm -f *.pdf *.tax
