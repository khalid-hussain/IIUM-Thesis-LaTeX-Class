PROPOSAL=myProposal.md
THESIS=thesis.tex
THESISW=thesis
THESIS-CLS=thesis-cls.tex
THESIS-PDF=thesis.pdf
PANDOC-CONTENT=content-from-pandoc-source.tex
PANDOC-SOURCE=pandoc-source.md
TO-CLEAN=*.aux *.lof *.lot *.toc *.log *.out *.synctex.gz frontmatter/*.aux frontmatter/*.lof frontmatter/*.lot frontmatter/*.toc frontmatter/*.log frontmatter/*.out frontmatter/*.synctex.gz frontmatter/*.bbl frontmatter/*.blg *.blg *.run.xml *.bcf *.bbl
DOC-SOURCE=doc/doc-source.md
DOC-TEMPLATE=doc/tufte-handout-pandoc.tex
DOC=doc/iiumthesis-manual.pdf

default: pdf

content-from-pandoc:
	pandoc -t latex -o $(PANDOC-CONTENT) --smart $(PANDOC-SOURCE) --top-level-division=chapter --biblatex --listings

pdf: $(THESIS) content-from-pandoc
	pdflatex $(THESIS)
	biber $(THESISW)
	pdflatex $(THESIS)
	pdflatex $(THESIS)

pdff: $(THESIS) content-from-pandoc
	pdflatex $(THESIS)

cls-pdf: $(THESIS-CLS) content-from-pandoc
	pdflatex $(THESIS-CLS)
	pdflatex $(THESIS-CLS)

doc: $(DOC-SOURCE)
	pandoc $(DOC-SOURCE) -t latex -o $(DOC) --template=$(DOC-TEMPLATE) --smart

.PHONY: clean

clean:
	rm -f $(TO-CLEAN)