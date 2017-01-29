# IIUM-Thesis-LaTeX-Class

A document style class for the IIUM Thesis format.
Partial pandoc support is available but a template would be appreciated.

# Usage

## Frontmatter

The frontmatter is a dependency for the thesis. The `compile.sh` script in the
`frontmatter` directory will help with this. This script has three options:

- `./compile.sh arabic` Compiles the Arabic abstract using XeLaTeX. Make sure you
  have the "Traditional Arabic" font available otherwise it will fail. You may change
  the font if you wish.
- `./compile.sh all` Compiles all the frontmatter, both the English and Arabic frontmatter.
- `./compile.sh` The default. Compiles only the English frontmatter.

At this point, ensure that you at least run the default option.

## General

The project comes with a makefile. Edit `pandoc-source.md` and run:

- Set up variables in `iiumthesis-config.tex`.
- Compile the frontmatter. Instructions given above.
- `make pdf` Creates the resultant PDF file entitled `thesis.pdf`.
- `make clean` Cleans working LaTeX files. Useful for development or once you've finalized ouput.

# To Do

- Get simple LaTeX document up and running with most of the style requirements.
- Conversion to actual style class.
- Pandoc template support.
- Chapter headings in all uppercase include the number in words. Small Caps hack is not acceptable.
- Get all the margins correct.
- Fix headers

## Front matter

- ~~Cover Page~~
- ~~Title Page~~
- Order of Abstract page
- Arabic Abstract
- ~~Approval Page (Masters)~~
- ~~Approval Page (PhD)~~
- ~~Declaration~~
- ~~Copyright Joint~~
- ~~Copyright IIUM~~
- ~~Copyright Student~~
- ~~Acknowledgements~~
- Page numbers
- Table of Contents, List of Figures, List of Tables

## Main matter

### Lists

- Table of Contents
- List of Figures
- List of Tables
- List of Symbols
- List of Cases
- List of Statutes

### Chapters

- Center chapter heading and title
- Size of chapter heading and title
- Spacing between chapter heading and title
- Spacing between first paragraph and chapter title

## Back matter

- Bibliography style
- Appendices

# Credits

Moaaz ibn Mahdi for creating the first template. I've also referenced and used parts of the [University of Malaya template](http://liantze.penguinattack.org/latextypesetting.html#umalayathesis) created by [Lim Lian Tze](http://liantze.penguinattack.org/).

# License

This project is licensed under GNU GPLv3.

The files under the `_reference` directory are not.
They are for project development purposes only.
The rights are reserved by their respective owners.

The rights to the IIUM emblem included in the `frontmatter` directory are
reserved by the International Islamic University Malaysia.

The `tufte-handout-pandoc.tex` under the `doc` folder may not be. It was created by Iago Mosqueira - JRC. 2013, and is available from [Gist](https://gist.github.com/reinholdsson/7426608/566d8104363cd2fef2d6dd50e90aceab377b4a45#file-tufte-handout-template).
