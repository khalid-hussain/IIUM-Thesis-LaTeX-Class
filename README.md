# IIUM-Thesis-LaTeX-Class

A document style class for the IIUM Thesis format.
Partial pandoc support is available but a template would be appreciated.

# Usage

The project comes with a makefile. Edit `pandoc-source.md` and run:

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

# License

This project is licensed under GNU GPLv3.

The files under the `_reference` directory are not.
They are for project development purposes only.
The rights are reserved by their respective owners.

The `tufte-handout-pandoc.tex` under the `doc` folder may not be. It was created by Iago Mosqueira - JRC. 2013, and is available from [Gist](https://gist.github.com/reinholdsson/7426608/566d8104363cd2fef2d6dd50e90aceab377b4a45#file-tufte-handout-template).
