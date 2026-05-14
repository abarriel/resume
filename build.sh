#!/usr/bin/env bash
set -euo pipefail

echo "Building resume PDF..."
pdflatex -interaction=nonstopmode -jobname=resume short.tex
pdflatex -interaction=nonstopmode -jobname=resume short.tex

echo "Generating preview PNGs..."
pdftoppm -png -r 200 resume.pdf images/resume-preview

echo "Done. Output: resume.pdf, images/resume-preview-*.png"
