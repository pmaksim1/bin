#!/usr/bin/perl
##  ! /home/cdfsoft/products/perl/v5_005/Linux+2/bin/perl

#
# 
#
#if ($#ARGV != 4) {
#    print "usage:\n\t\t splitByNLines.pl <N> <big_file> <out_template>\n";
#    exit;
#}

$nLines          = $ARGV[0];
$big_file        = $ARGV[1];
$output_template = $ARGV[2];
$debug = $ENV{SPLIT_BY_NLINES_DEBUG};

print "nLines = ",$nLines,"\n";
print "big_file = ",$big_file,"\n";
print "output_template = ",$output_template,"\n";


open(BIG_FILE, $big_file) or die "Can't open $big_file\n";


$nLineIn  = 0;
$nLineOut = 0;
$nFileOut = 0;

# read in each line of the file
while ($line = <BIG_FILE>) {

  $nLineIn++;

  if ($nLineOut == 1) {
    # It's time to open a new output file.
    $nFileOut++;
    $out_file = $output_template."_".$nFileOut.".tcl";
    open(OUT_FILE,"> $out_file") or die "Can't open $out_file\n";
    if ($debug) {
      print "Opening file $out_file\n";
    }
  }

  # Copy one line from the input to the output
  print OUT_FILE $line;
  $nLineOut++;
  if ($debug) {
    print "Printing line # $nLineOut into file $out_file\n";
  }

  if ($nLineOut == $nLines) {
    # We have reached $nLines, so let's close the output and reset the counter
    close(OUT_FILE);
    # print "Closing file $out_file\n";
    $nLineOut = 0;
  }
}
if ($nLineOut != 0) {
  close(OUT_FILE);
  if ($debug) {
    print "Closing file $out_file\n";
  }
}
close(BIG_FILE);

#--- Debug:
# print "DebugEnd found for table $table\n";
print "Written $nLineIn lines into $nFileOut files\n";

exit 0;
