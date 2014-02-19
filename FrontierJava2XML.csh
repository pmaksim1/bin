#!/bin/tcsh -f

set javaFile = $argv[1]
shift argv

if ($#argv) then
  set version  = $argv[2]
  shift argv
else
  set version  = 1
endif


set tableName = `echo $javaFile | cut -d. -f1 | awk -F/ '{print $NF}'`

set tmpFileBase = ${USER}_$$
set qualifiedVarListFile = ${tmpFileBase}.qvl
set xmlFile = ${tableName}.xml

egrep 'double|float|long|int|byte|String' $javaFile | grep -v '(' | egrep -v 'import|http://' | cut -d\; -f1 | cut -d= -f1 | sed 's/public//g' >! $qualifiedVarListFile

set qualifiedVarList = `cat $qualifiedVarListFile | awk '{print $2}' | sed 's/;//g'`


#--- Writing the output XML file.  First, remove the old one.
#
if (-e $xmlFile) then
  echo "Removing the old XML file $xmlFile"
  rm -f $xmlFile
endif

#--- Write the header
echo '<definition type='$tableName version=${version}'>'  > $xmlFile
 
cat $qualifiedVarListFile | awk '{print "<attr type="$1" name="$2"/>"}' >> $xmlFile

echo '<returned-attr-list>'$qualifiedVarList'</returned-attr-list>' >> $xmlFile

cat $qualifiedVarListFile | awk '{print "<key>"$2"</key>"}' >> $xmlFile

echo '<private-stuff>'$tableName table'</private-stuff>' >> $xmlFile
echo '</definition>' >> $xmlFile


rm -f $qualifiedVarListFile

echo "All done!"
exit

