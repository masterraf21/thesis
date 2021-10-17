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
