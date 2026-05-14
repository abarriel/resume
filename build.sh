#!/usr/bin/env nix-shell
#! nix-shell -i bash -p texliveFull poppler_utils

set -euo pipefail

echo "Building resume PDF..."
pdflatex -interaction=nonstopmode -jobname=resume short.tex
pdflatex -interaction=nonstopmode -jobname=resume short.tex

echo "Generating preview PNGs..."
pdftoppm -png -r 200 resume.pdf images/resume-preview

echo "Done. Output: resume.pdf, images/resume-preview-*.png"
