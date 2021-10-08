# (c) 2016-2021 Rahmat M. Samik-Ibrahim
# REV04 Fri 23 Jul 2021 21:00:00 WIB
# START Tue Jul 12 15:02:37 WIB 2016

all:	thesis move clean

cleans: clean cleanpdf

thesis:	thesis.tex
	pdflatex thesis
	pdflatex thesis
	bibtex   thesis
	pdflatex thesis
	pdflatex thesis
	python3 scripts/includeScript.py < LaTeX05.pmd > LaTeX05.md

move:
	mv thesis.pdf output/

clean:
	rm -f *.aux *.log *.idx *.toc *.bbl *.blg
	rm -f *.lof *.lol *.lot *.out *.fls *.fdb_latexmk

cleanpdf:	clean
	rm -f *.pdf

