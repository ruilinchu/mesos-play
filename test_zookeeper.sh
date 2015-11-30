#!/bin/sh

for i in `seq 1 3`; do
    echo stat | nc node$i 2181
    echo ruok | nc node$i 2181
done
