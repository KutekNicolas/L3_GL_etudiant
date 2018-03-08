#!/bin/sh
echo test
for i in $@; do
    cat ${i}
done



