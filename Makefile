
type = journal
output = journal

all: $(type).pdf	
	cp $(type).pdf ~/Desktop/$(output).pdf

#histall.png: histall.gnu atwv.dat
#	gnuplot histall.gnu

$(type).pdf: $(type).tex $(type).bib histall.png james.pdf hang.pdf
	pdflatex $(type)
	bibtex $(type)
	pdflatex $(type)
	pdflatex $(type)

clean:
	-rm -f $(type).aux $(type).dvi $(type).log $(type).pdf  $(type).ps $(type).bbl $(type).blg
