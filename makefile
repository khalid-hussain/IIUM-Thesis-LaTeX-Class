PROPOSAL=myProposal.md
THESIS=thesis.tex
THESIS-PDF=thesis.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md

4rmpandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --filter pandoc-citeproc --top-level-division=chapter

pdf: $(THESIS) 4rmpandoc
	pdflatex $(THESIS)
	pdflatex $(THESIS)

view: $(THESIS-PDF)
	start $(THESIS-PDF)

.PHONY: clean

clean:
	rm *.aux *.lof *.lot *.toc *.log