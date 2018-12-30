#!/bin/sh
set -e

convert $1 -colorspace Gray -resize 400% -density 300 -depth 8 -background white -alpha Off /tmp/ocr.tif
tesseract /tmp/ocr.tif -l por stdout quiet | sed '/^[[:space:]]*$/d'
