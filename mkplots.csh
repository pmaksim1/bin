#! /bin/tcsh -f
# Usage:
# 
#  $ mkplots.csh  *.eps > temp_plots.tex
#_____________________________________________________________

if (! -e plots.list) then
  # echo "% No local file plots.list."
  set plist = "$argv[*]"
#  exit 2
else 
  set plist = "`cat plots.list`"
endif

# if (-e plots.tex) then
#  echo "File plots.tex found.  Appending to it."
# endif

# touch plots.tex

foreach p ($plist) 
   # echo "%  Processing graphics file $p"
   # echo '\n\n\n' >> plots.tex
   echo '\n'
   # sed "s,GRAPHICSFILE,$p,g" ~petar/a/doc/teh/plot_template.tex >> plots.tex
   sed "s,GRAPHICSFILE,$p,g" ~petar/a/doc/teh/plot_template.tex
   echo '\n'
   # echo '\n\n\n' >> plots.tex
end

