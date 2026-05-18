#!/bin/bash

echo "Start building CV..."

cd /app/CV

pdflatex -interaction=nonstopmode sample.tex
pdflatex -interaction=nonstopmode sample.tex

echo "Build finished!"