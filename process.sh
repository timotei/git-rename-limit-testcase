#!/bin/bash
for f in *.sj; do
    fnew=`echo $f | sed 's/.sj/.js/'`
    mv $f $fnew
    echo "$f -> $fnew"

    printf "a" >> "$fnew"

    # skip adding the 201th file
    if [ "$f" != "file200.sj" ]; then
        git add "$f"
        git add "$fnew"
    fi
done
