#!/bin/sh
echo test
rm fibo.csv 
for i in `seq 1 42`;do
    ./fibo.out $i | tail -n 1 >> fibo.csv 
done
gnuplot -e "set out 'fibo_gnuplot.svg'; \
    set terminal svg size 640,360; \
    set style data linespoints; \
    set grid xtics ytics; \
    plot 'fibo.csv' using 1:3"
