file=written
pdflatex -interaction=nonstopmode $file.tex
bibtex $file.aux
pdflatex -interaction=nonstopmode $file.tex
pdflatex -interaction=nonstopmode $file.tex
