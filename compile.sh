#! /bin/bash
# compile.sh
#
# (©) 2018 Brandon Doyle <bjd2385@aperiodicity.com
#

FILE="$1"

pdflatex -output-directory=pdfs "$FILE"
