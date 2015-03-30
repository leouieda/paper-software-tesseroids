MS := manuscript
TEX := $(MS).tex
BIB := references.bib
PDF := $(MS).pdf
FIGS := $(wildcard figs/*.eps)
SUP := tesseroids-supplementary-material

all: $(PDF)

$(PDF): $(TEX) $(FIGS)
	pdflatex $<
	bibtex $(MS)
	pdflatex $<
	pdflatex $<

spell:
	aspell $(TEX)

words:
	@detex $(TEX) | wc -w

page-estimate:
	@python -c "print `detex $(TEX) | wc -w`/1000. + 0.35*`ls figs/*.eps | wc -l`"

check:
	write-good $(TEX)

check-notebooks:
	write-good notebooks/*.ipynb

clean:
	rm -rf $(PDF) *.out *.aux *.log *.bbl figs/*-eps-converted-to.pdf *.fls \
		*.blg *.fff *.lof *.lot *.ttt $(SUP).zip

package:
	git archive -o $(SUP).zip master
