#!/bin/bash

dd=.??*

for f in $dd; do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    echo "$f"
done

