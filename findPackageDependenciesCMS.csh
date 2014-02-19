#! /bin/tcsh -f

grep \#include `find . -name \*.h -o -name \*.hh -o -name \*.icc -o -name \*.cc` | cut -f2 -d' ' | awk -F/ '{print $1"/"$2}' | sort | uniq | sed 's/"//'


# This could be further piped into the following command in order to
# make the link_<packageName>.mk file:
#
##  cat | awk '{print "override LINK_"$1" += BottomTaggers"}'
