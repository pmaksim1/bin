#!/bin/csh -f 
#
#--- Goal: complete the filename, given a reasonable defaults.
#
#--- Examples:
# % fullname.csh /. z/k.t b.c.d
# z/k.t
#
# % fullname.csh b.c.d /. z/k.t 
# z/b.c.d
#
# % fullname.csh b.c. /. z/k.t
# z/b.c.t
#
#--- Defaults.
set noglob
set dir = ""
set nam = ""
set ext = ""

@ n = $#argv
while ( $n > 0 )
  
  set arg = $argv[$n]
  
  #--- Split $arg around the last slash.
  #
  set _dir = `echo $arg | awk -F/ '{for(i=1;i<NF;i++){printf("%s/",$i)}}'`
  set _end = `echo $arg | awk -F/ '{print $NF}'` 

  #--- Split $_nam around the last dot.
  #
  set _nam = `echo $_end | awk -F. '{if(NF==1){print $1"."}else {for(i=1;i<NF;i++){printf("%s.",$i)}}}'`
  set _ext = `echo $_end | awk -F. '{if(NF>1)print $NF}'`

  ## echo "In this round: $_dir + $_nam + $_ext"
 
  #--- Now see what we have.
  if ( "$_dir" != "" && "$_dir" != "/" ) then
    ## echo "$_dir overrides $dir"
    set dir = $_dir
    set need_dir = 0
  endif

  if ( "$_nam" != "" && "$_nam" != "." ) then
    ## echo "$_nam overrides $nam"
    set nam = $_nam
    set need_nam = 0
  endif

  if ( "$_ext" != "" ) then
    ## echo "$_ext overrides $ext"
    set ext = $_ext
    set need_ext = 0
  endif

  @ n = $n - 1
end

#--- Expand any ~'s in the directory name (but don't expand *'s in filenames!)
unset noglob
set   dir = $dir
set   noglob

echo "${dir}${nam}${ext}"

exit

