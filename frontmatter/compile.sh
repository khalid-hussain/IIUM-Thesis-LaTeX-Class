for i in *.tex; do pdflatex $i;done

rm *.aux
rm *.log