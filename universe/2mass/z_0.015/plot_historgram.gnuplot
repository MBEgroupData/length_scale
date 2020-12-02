set terminal pngcairo size 647,540 enhanced font 'Helvetica-normal,16' linewidth 2

set output "pixel_intensity_histogram.png"

set datafile separator comma

set xlabel "Pixel Intensity"
set ylabel "Counts"

set key autotitle columnhead

set xrange [*:350]

plot "pixel_intensity_hist.csv" title "extracted" with points,\
"curve_1_fit.dat" title "disordered" with lines lw 2,\
"curve_2_fit.dat" title "ordered" with lines lw 2,\
"curve_total_fit.dat" title "over-all fit" with lines lw 2,\
