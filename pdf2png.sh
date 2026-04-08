#!/bin/bash

find static/images -maxdepth 1 -type f -iname '*.pdf' -print0 |
    while IFS= read -r -d '' f; do
        base="${f%.*}"
        rm -f "${base}.png" "${base}"-*.png
        pdftocairo -png -r 600 "$f" "$base"
    done
