# Ensure you have "Traditional Arabic" font, otherwise compilation for Arabic
# abstract will fail. You may also change the font from the TeX file instead.

clean(){
  rm -f *.aux
  rm -f *.log
  rm -f *.bbl
}

compileArabic(){
  # echo "Arabic"
  xelatex arabicAbstractPage.tex
  clean
}

compileEnglish(){
  for i in *.tex; do
    if [ "$i" != "arabicAbstractPage.tex" ]; then
      # echo "$i"
      pdflatex $i;
    fi
  done
  clean
}

compileAll(){
  compileNonArabic
  compileArabic
  clean
}

if [ "$1" == "arabic" ]; then
  compileArabic
elif [ "$1" == "english" ]; then
  compileEnglish
else
  compileAll
fi