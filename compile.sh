#! /bin/bash
# compile.sh
#
# (©) 2018 Brandon Doyle <bjd2385@aperiodicity.com
#

FILE="$1"
N=2
SUB="pdfs"

# Compile N times (for \autoref, etc.)
for _ in $(seq $N); do
    pdflatex -output-directory=pdfs "$FILE"
done

# Clean up
CLEANUP="$(find "$SUB" -type f | awk '/.*[^(pdf)]$/ { print $0 }')"

for f in $CLEANUP; do
    rm "$f"
done
