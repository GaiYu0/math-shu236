file=$1
bib=$2
pdflatex -interaction=nonstopmode $file.tex
if [[ ! -z "$bib" ]]; then
    bibtex $file.aux
    pdflatex -interaction=nonstopmode $file.tex
    pdflatex -interaction=nonstopmode $file.tex
fi
