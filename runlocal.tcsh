#! /bin/tcsh -f

#set JOB_NAME=bu-phik
set JOB_NAME=d0-phiks
#set JOB_NAME=b0-phiks
#set JOB_NAME=b0-phikst
#set JOB_NAME=bs-phiphi
#set JOB_NAME=lb-philam
#set JOB_NAME=lb-lam2pi

# Output filename prefix
set prefix = ""

# Release and executable
#set RELEASE=4.11.2
set RELEASE=5.3.1
set executable=Sin2BetaModuleTest

if ( ${?CDFSOFT2_DIR} == 0 ) then
  echo "Setting up the run2 software."
  source ~cdfsoft/cdf2.cshrc
  setup cdfsoft2 $RELEASE
  #unsetenv CVS_RSH
  # d C a c h e   s e t u p
  #setup dcap v2_24_f0203
  #setup dcap v2_26_f0930  # Litvintsev
  #setenv LD_LIBRARY_PATH "${DCAP_DIR}/lib:${LD_LIBRARY_PATH}"
  #setenv DCACHE_DEBUG 2
endif

if ( $CDFSOFT2_DIR != "/cdf/cdfsoft/dist/releases/${RELEASE}" ) then
  echo "Current cdfsoft2 version is: " $CDFSOFT2_DIR
  echo "Software version is not compatible!  Exiting script."
  exit
endif

#Set the control variables to their default values
setenv TEST     "no"
setenv STRIP    "no"
setenv VERBOSE  "no"
setenv DATATYPE "defined"
setenv MCF      "no"
setenv REFLECT  "no"
setenv GDB      "no"
setenv DCACHE   "no"
setenv DCSPLIT  "false"

@ _gdb = 0
@ _tv = 0

#Turn on those control variables specified on the command line
foreach i ( $argv )
  switch ( $i )
    case dc*:
        setenv DCACHE "yes"
        if ( `echo $i | cut -c3-` == "si" ) then
          echo "Input type is dCache w/ splitInput enabled"
	  setenv DCSPLIT "true"
	  setenv DCACHE_ITER `expr $1 - 1`
	  # H a r d c o d e d   f o r   1 0 8 9   P h i X   D S T s
	  # (Ensures <=10 DSTs per CAF job)
  	  setenv NUM_SEGMENTS 109
	else
          echo "Input type is dCache filesets"
	endif
        breaksw

    case tf:
        echo TrackFilter method is being used
        set prefix = tf-
        breaksw

    case ts:
        echo TrackSelector method is being used   
        set prefix = ts-
        breaksw

    case t:
        echo TEST mode has been turned on
        setenv TEST "yes"
        breaksw

    case test:
        echo TEST mode has been turned on
        setenv TEST "yes"
        breaksw

    case s:
        echo STRIPPING has been turned on
        setenv STRIP "yes"
        breaksw

    case strip:
        echo STRIPPING has been turned on
        setenv STRIP "yes"
        breaksw

    case mc:
        setenv DATATYPE "MC"
        echo DATATYPE has been set to Monte Carlo
	set prefix=qsim-${prefix}
        breaksw

    case remc:
        setenv DATATYPE "REMC"
        echo DATATYPE has been set to Realistic Monte Carlo
	set prefix=realmc-${prefix}
        breaksw

    case mass:
        setenv MCF "yes"
        echo Mass constraint fit of Ks/Lambda turned ON
	set prefix=${prefix}mcf-
        breaksw

    case refl:
        setenv REFLECT "yes"
        if ( ${JOB_NAME} == "lb-philam" ) then
          echo "Searching Lam_b(Phi Lam) reflections in B0(Phi Ks) sample"
	  set prefix=${prefix}b0ref-
        else if ( ${JOB_NAME} == "b0-phiks" ) then
          echo "Searching B0(Phi Ks) reflections in Lam_b(Phi Lam) sample"
	  set prefix=${prefix}lbref-
        endif
        breaksw

    case gdb:
        setenv GDB "yes"
        @ _gdb = 1
        echo GDB has been turned on
        breaksw

    case ddd:
        setenv GDB "yes"
        @ _gdb = 2
        echo DDD has been turned on
        breaksw

    case tv:  
        setenv GDB "yes"
        @ _tv = 1
        echo Totalview has been turned on
        breaksw

    case v:
        setenv VLEVEL 30
        setenv VERBOSE "yes"
        echo  VERBOSITY has been set to $VLEVEL
        breaksw
  endsw
end

setenv INPUT_LIST  LocalInput.tcl
setenv RECON_TCL   ${JOB_NAME}.tcl
setenv ROOT_OUTPUT ./ntuples/${prefix}${JOB_NAME}.root
setenv DATA_OUTPUT ./data/${prefix}${JOB_NAME}.dst
setenv LOG_OUTPUT  ./logs/${prefix}${JOB_NAME}.log
setenv LUMI_OUTPUT ./lumi/${prefix}${JOB_NAME}.lum

setenv TRACKASSOCMOD TrackAssMod

echo ------------------------------
echo Input and output for local run
echo ------------------------------
# echo Input file list : $INPUT_LIST
echo Output root file: $ROOT_OUTPUT
echo Output Edm  file: $DATA_OUTPUT
echo Output log  file: $LOG_OUTPUT
echo Output lumi file: $LUMI_OUTPUT
echo 'use TrackAssocMod?' $TRACKASSOCMOD

##touch times.txt
##echo "Started the job at:" >> times.txt
##date >> times.txt

set X=0
if ( $_gdb > 0 ) then
  #if ( $_gdb == 1 ) kdb ${executable}
  #if ( $_gdb == 2 ) kdd ${executable}
  if ( $_gdb == 1 ) gdb ${executable}
  if ( $_gdb == 2 ) ddd ${executable}
  # Usage:
  # gdb> run ufind.tcl
else if ( $_tv > 0 ) then
  #  setup totalview
  totalview ${executable} -a ./debug.tcl
else
  ${executable} ${RECON_TCL} ufind.tcl >&! ${LOG_OUTPUT} & ; \
  sleep 2 ; tail -f ${LOG_OUTPUT}
  set X=$status
endif

##echo "Finished at:" >> times.txt
##date >> times.txt

exit $X
