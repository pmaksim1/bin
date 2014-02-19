#! /bin/tcsh -f

foreach p ( cout endl cerr vector map multimap list dqueue pair string set )

    echo "Processing keyword $p"

    grep $p `find . -name \*.$1` | grep '<' | grep '>' | grep -v 'std::'$p | grep -v '//' | grep -v '#include' 

end
