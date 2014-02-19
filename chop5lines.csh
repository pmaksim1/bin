#! /bin/tcsh -f

set infile = $argv[1]

set outfile = $argv[2]
set tmpfile = /tmp/chop10lines.$$

cat $infile | awk 'BEGIN{n=0; c=1;}{if ($0!=""){print "+"c"+",$0}; n=n+1; if (n==5) {n=0; c=c+1;}}'  > $tmpfile


@ n10 = `wc tttStrippedFiles.txt | awk '{printf "%d\n", $2/5+1}'`

@ i = 1
while ($i <= $n10) 
    echo "Processing $i"
    grep +${i}+ $tmpfile | awk '{print "include file ",$2}' >! ${outfile}_${i}.tcl
    @ i = $i + 1
end

rm -rf $tmpfile
