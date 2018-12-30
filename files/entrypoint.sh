#!/bin/sh
set -e

tesseract $1 -l por stdout quiet | sed '/^[[:space:]]*$/d'