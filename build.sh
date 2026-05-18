#!/bin/bash

echo "Start building CV..."

cd /app/CV

pdflatex main.tex
pdflatex main.tex

echo "Build finished!"