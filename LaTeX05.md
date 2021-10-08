---
layout: "layout"
title:  "Contoh Tesis IF-ITB (LaTeX)"
author: "Petra Novandi"
address: "Jakarta"
permalink: /LaTeX05/
---

* [Downloard TARBALL](../tarballs/LaTeX05.tar.bz2)
* [PDF](thesis.pdf)

# Templat LaTeX Tesis Informatika ITB
oleh: Petra Novandi <me@petrabarus.net>

Dokumen ini merupakan templat LaTeX yang ditujukan untuk laporan
tesis di program studi Teknik Informatika ITB. Templat ini penulis
gunakan dalam penulisan laporan tesis penulis dan dengan semangat
berbagi penulis memutuskan untuk mempublikasikan templat ini agar
dapat digunakan oleh banyak orang.

Silakan mengunduh, menggunakan, memodifikasi, dan menyebarkan
templat ini. :)

## Kebutuhan

Program telah diuji dalam sistem operasi Linux Ubuntu 20.04 (RMS). Untuk melakukan instalasi
perangkat lunak yang dibutuhkan, eksekusi perintah berikut.

```
sudo apt-get update && sudo apt-get install -y --no-install-recommends \
   biber  \
   dvipng \
   texlive-fonts-recommended \
   texlive-latex-extra texlive-fonts-extra \
   texlive-latex-recommended \
   texlive-bibtex-extra      \
   texlive-lang-other        \
   xzdec

```

## Penggunaan

Templat ini telah dilengkapi oleh skrip untuk melakukan kompilasi
Makefile. Untuk melakukan kompilasi cukup eksekusi perintah berikut

```
make

```

Hasil kompilasi akan berada pada berkas  [thesis.pdf](thesis.pdf).


## Kontribusi

Templat ini dapat digunakan secara gratis, akan tetapi penulis sangat
berharap adanya kritik serta saran dari pengguna untuk meningkatkan
kualitas hasil dan penggunaan templat ini.

Kritik dan saran tersebut dapat dikirim melalui URL
<https://github.com/petrabarus/if-itb-latex/issues>.

## Terima Kasih

* Steven Lolong atas pemberian templat LaTeX yang asli.
* Peb Ruswono Aryan atas bantuan pelengkapan struktur dokumen.

## Catatan Tambahan

* Ini merupakan fork dari <https://github.com/petrabarus/if-itb-latex/>.
* Telah di test dengan Ubuntu 20.04 dengan sedikit penyesuaian.

<br>
### THESIS

```
{% raw %}
%--------------------------------------------------------------------%
% REV01: Fri 23 Jul 2021 20:08:29 WIB (RMS)
% Berkas utama templat LaTeX.
% author Petra Barus, Peb Ruswono Aryan
%--------------------------------------------------------------------%
% Berkas ini berisi struktur utama dokumen LaTeX yang akan dibuat.
%--------------------------------------------------------------------%
\documentclass[11pt, a4paper, onecolumn, oneside, final]{book}

\input{configs/if-itb-thesis.sty}
\makeatletter
\makeatother
%\bibliography{references}
\begin{document}

%Basic configuration
%\title{Pengembangan Aplikasi Pengumpulan Data Menggunakan \textit{Spreadsheet}}
\title{Pengembangan Kakas Pengumpulan Data dalam Format \textit{Spreadsheet}}
\date{}
\author{
    Feryandi Nurdiantoro \\
    NIM : 13513042
}

\frontmatter
\input{frontpages/000-cover}
\input{frontpages/001-approval}
\input{frontpages/002-statement}
\pagestyle{plain}
\input{frontpages/003-abstract-id}
%\input{004-abstract-en}
\input{frontpages/005-forewords}
\titleformat*{\section}{\centering\bfseries\Large\MakeUpperCase}
\tableofcontents
\addcontentsline{toc}{chapter}{DAFTAR ISI}
% \afterpage{\null\newpage}
% \addcontentsline{toc}{chapter}{DAFTAR LAMPIRAN}
{%
    \let\oldnumberline\numberline%
    \renewcommand{\numberline}{\figurename~\oldnumberline}%
    \listoffigures%
}
\addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
{%
    \let\oldnumberline\numberline%
    \renewcommand{\numberline}{\tablename~\oldnumberline}%
    \listoftables%
}
\addcontentsline{toc}{chapter}{DAFTAR TABEL}

%----------------------------------------------------------------%
% Konfigurasi Bab
%----------------------------------------------------------------%
\renewcommand{\chaptername}{BAB}
\renewcommand{\thechapter}{\Roman{chapter}}
%----------------------------------------------------------------%

\titleformat*{\section}{\bfseries\large}
\mainmatter
%----------------------------------------------------------------%
% Dafter Bab
% Untuk menambahkan daftar bab, buat berkas bab misalnya `chapter-6` di direktori `chapters`, dan masukkan ke sini.
%----------------------------------------------------------------%
\input{chapters/01-chapter-1}
\input{chapters/02-chapter-2}
\input{chapters/03-chapter-3}
\input{chapters/04-chapter-4}
\input{chapters/05-chapter-5}
%----------------------------------------------------------------%

% Daftar pustaka
% Bibliography to Daftar Pustaka
\renewcommand{\bibname}{Daftar Pustaka}
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
%\printbibliography
%\bibliography{references}
%ZCZC RMS 202107023
%\bibstyle{apa}
\bibliography{references}
\bibliographystyle{apalike}

\backmatter
% Index
\appendix
\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}

\cleardoublepage
\phantomsection
%\part*{Lampiran}
%\addcontentsline{toc}{part}{LAMPIRAN}

% Setting judul appendix
\chapterfont{\Large}
\titleformat{\chapter}[hang]
{\Large\bfseries}
{\chaptertitlename\ \thechapter.\ }{0pt}
{\Large\bfseries}
\titlespacing*{\chapter}{0pt}{-25pt}{10pt}

\input{appendixes/0A1-appendix-1}
\input{appendixes/0A2-appendix-2}

\end{document}

{% endraw %}
```

<br>
### [Makefile](Makefile)

```
{% raw %}
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

{% endraw %}
```

