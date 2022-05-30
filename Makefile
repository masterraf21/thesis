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

rename:
	mv milestone2.pdf output/'Draf Pendahuluan Tugas Akhir - 18218027.pdf'
	mv milestone3.pdf output/'Draf Analisis Masalah Tugas Akhir - 18218027.pdf'
	mv bukuta1.pdf output/'Draf Buku Tugas Akhir 1 - 18218027.pdf'
	mv milestone5.pdf output/'Draf Bab Implementasi Tugas Akhir 2 - 18218027.pdf'
	mv milestone6.pdf output/'Draf Bab Kesimpulan Tugas Akhir 2 - 18218027.pdf'
clean:
	rm -f *.aux *.log *.idx *.toc *.bbl *.blg *.synctex.gz
	rm -f *.lof *.lol *.lot *.out *.fls *.fdb_latexmk

cleanpdf:	clean
	rm -f *.pdf

studio:
	texstudio thesis.tex
