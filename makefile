PROPOSAL=myProposal.md
THESIS=thesis.tex
THESIS-CLS=thesis-cls.tex
THESIS-PDF=thesis.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md
TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out *.synctex.gz frontmatter/*.aux frontmatter/*.lof frontmatter/*.lot frontmatter/*.toc frontmatter/*.log frontmatter/*.out frontmatter/*.synctex.gz frontmatter/*.bbl frontmatter/*.blg
DOC-SOURCE=doc/doc-source.md
DOC-TEMPLATE=doc/tufte-handout-pandoc.tex
DOC=doc/iiumthesis-manual.pdf

default: pdf

frontmatter:
	

content-from-pandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --top-level-division=chapter --biblatex

pdf: $(THESIS) content-from-pandoc
	pdflatex $(THESIS)
	pdflatex $(THESIS)

cls-pdf: $(THESIS-CLS) content-from-pandoc
	pdflatex $(THESIS-CLS)
	pdflatex $(THESIS-CLS)

doc: $(DOC-SOURCE)
	pandoc $(DOC-SOURCE) -t latex -o $(DOC) --template=$(DOC-TEMPLATE) --smart

.PHONY: clean

clean:
	rm -f $(TO-CLEAN)