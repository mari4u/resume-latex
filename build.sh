#!/bin/bash

echo "Start building CV..."

cd /app/CV

pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

echo "Build finished!"