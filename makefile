PROPOSAL=myProposal.md
THESIS=thesis.tex
THESIS-PDF=thesis.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md
TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out

content-from-pandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --filter pandoc-citeproc --top-level-division=chapter

pdf: $(THESIS) content-from-pandoc
	pdflatex $(THESIS)
	pdflatex $(THESIS)

.PHONY: clean

clean:
	rm -f *.aux *.lof *.lot *.toc *.log *.out