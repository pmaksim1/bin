#! /cdf/cdfsoft/products/perl/v5_005/Linux+2/bin/perl

#
# rename series of frames
#
if ($#ARGV != 0) {
    print "usage:\n\t\t chopIntoTables.pl <big_dbf_file>\n";
    print "\n\t\t The output will be split into <big_dbf_file>-<table>.dbf\n";
    print "\t\t for each table <table> found.\n";
    exit;
}


$big_dbf_file = $ARGV[0];
$reading_file = 0;
$reading_table = "NONE";
$table = "NONE";
$nlines = 0;

open(BIG_DBF, $big_dbf_file.".dbf");

# read in each line of the file
while ($line = <BIG_DBF>) {
  # now must chop $line into pieces
  $lineonly = $line;
  chomp $lineonly;
  @token    = split (/ /,$lineonly);

  #---Debug:
  # print "Line=$line\n";
  # print "Lineonly=$lineonly\n";
  # print "Token0=$token[0]\n";
  # print "Token1=$token[1]\n";
  # print "Token2=$token[2]\n";

  if ($token[1] eq "DebugBegin") {
    #--- Beginning of parsing.
    $reading_file = 1;

    @table_token = split(/=/,$token[2]);
    $reading_table = $table_token[1];

    @cid_token = split(/=/,$token[3]);
    $reading_cid = $cid_token[1];

    $table_dbf_file = $big_dbf_file."-".$reading_table."-".$reading_cid.".dbf";
    open(TABLE_DBF,"> $table_dbf_file") or die "Can't open $table_dbf_file\n";
    $nlines = 0;
 
    #--- Debug:
    print "DebugBegin found for table $reading_table\n";
  }
  
  # does line contain a DebugBegin as the 2nd token?
  if ($reading_file) {
    #--- Just reading a normal line, move into a table.dbf file
    print TABLE_DBF $line; 
    $nlines++;
    #--- Debug:
    # print "In $reading_table: $line\n";
  } 

  if ($token[1] eq "DebugEnd") {
    #--- End of parsing, close file, check.
    close(TABLE_DBF);
    $reading_file = 0;
    @table_token = split(/=/,$token[2]);
    $table = $table_token[1];
    if ($reading_table != $table) {
      die "Table mismatch.\n";
    }
    
    #--- Debug:
    # print "DebugEnd found for table $table\n";
    print "Written $nlines lines into $table_dbf_file\n";
  }
  
}

close(BIG_DBF);
