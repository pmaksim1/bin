#! /bin/tcsh -f

grep \#include `find . -name \*.hh -or -name \*.icc -or -name \*.cc` | cut -f2 -d' ' | cut -f1 -d/ | sort | uniq | sed 's/"//'


# This could be further piped into the following command in order to
# make the link_<packageName>.mk file:
#
##  cat | awk '{print "override LINK_"$1" += BottomTaggers"}'
