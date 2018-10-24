#!/bin/sh

sass jottings.scss:dist/jottings.css
cp jottings.* ~/.pandoc/templates/
pandoc --template=jottings.html --section-divs --toc -o "test/test.html" "test/test.md"
