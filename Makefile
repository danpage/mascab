mascab.pdf : $(wildcard *.bib) mascab.tex 
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab
	@biber    mascab
	@pdflatex mascab

mascab.tax : $(wildcard *.bib)
	@cat ${?} | grep STRING | sed -e 's|@STRING{KEYWORDS={\(.*\)}}|\1|g' | sort | uniq > ${@}

all      : mascab.pdf mascab.tax

clean    :
	@rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.toc *.xml

spotless : clean
	@rm -f *.pdf *.tax
