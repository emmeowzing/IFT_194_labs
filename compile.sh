#! /bin/bash
# compile.sh
#
# (©) 2018 Brandon Doyle <bjd2385@aperiodicity.com
#

FILE="$1"

for i in {1..2}; do
    pdflatex -output-directory=pdfs "$FILE"
done
