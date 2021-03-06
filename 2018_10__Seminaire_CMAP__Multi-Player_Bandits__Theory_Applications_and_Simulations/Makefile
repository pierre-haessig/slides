# Quick Makefile to easily compile the slides (make pdf) and run the slide (make showtime)
default: all

all:	pandoctex pandocpdf clean show
all169:	pandoctex169 pandocpdf169 clean show169

pandoctex:
	pandoc -N -s --template=../my.beamer -t beamer slides.md -o slides.tex
	./preprocess_tex.sh slides.tex

pandocpdf:
	# pdflatex slides.tex
	latexmk -xelatex -gg -pdf slides.tex
	rm slides.toc slides.snm slides.out slides.nav slides.aux slides.log slides.vrb

open:
	xdg-open slides.pdf &

show:
	pdfpc -d 45 slides.pdf

pandoctex169:
	pandoc --variable=aspectratio:169 -N -s --template=../my.beamer -t beamer slides.md -o slides_169.tex
	./preprocess_tex.sh slides_169.tex

pandocpdf169:
	# latexmk -gg -pdf -pdflatex="pdflatex %O %S" slides_169.tex
	latexmk -xelatex -gg -pdf slides_169.tex
	rm slides_169.toc slides_169.snm slides_169.out slides_169.nav slides_169.aux slides_169.log slides_169.vrb

pandocxelatexpdf169:
	latexmk -gg -pdf -pdflatex="xelatex %O %S" slides_169.tex
	rm slides_169.toc slides_169.snm slides_169.out slides_169.nav slides_169.aux slides_169.log slides_169.vrb

open169:
	xdg-open slides_169.pdf &

show169:
	pdfpc -d 45 slides_169.pdf

clean:
	-mv -vf *.fls *.fdb_latexmk *.ps *.dvi *.htoc *.tms *.tid *.lg *.log *.id[vx] *.vrb *.toc *.snm *.nav *.htmp *.aux *.tmp *.out *.haux *.hidx *.bbl *.blg *.brf *.lof *.ilg *.ind *.meta *.gz*busy* *busy* /tmp/ 2>/dev/null

Marp:
	Marp slides.md

typora:
	typora slides.md

theme = league

reveal-md:
	reveal-md --theme $(theme) --title "State of the art about Multi-Player Bandits  |  Date : 31 November 2018  |  Lilian Besson  |  CMAP Seminar" slides.md
