#!/bin/csh -f
#
# You must be at the top level of your working release before
# executing this script!
#________________________________________________________________

if ( ! -d tmp/$BFARCH ) then
    echo "  You must be at the top level of your working release before"
    echo "  executing this script!"
    exit 2
endif

set procs = $$
set xsd_dir = /tmp/${procs}_xsd
set cur_dir = `/bin/pwd`
set tar_file = $cur_dir/xsd.tgz

echo "xsd_dir : $xsd_dir"
echo "cur_dir : $cur_dir"
echo "tar_file: $tar_file"

if ( -e $xsd_dir ) /bin/rm -f $xsd_dir
mkdir -p $xsd_dir

echo "Copying xsd files..."
cp tmp/$BFARCH/*/*.xsd.xml $xsd_dir/

echo "Creating a tar file."
cd $xsd_dir
tar cvzf $tar_file *
cd ..
rm -rf $xsd_dir

echo "And here it is:"
cd $cur_dir
ls -l $tar_file

exit 0
