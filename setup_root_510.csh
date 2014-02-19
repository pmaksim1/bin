#
#  Local setup for ROOT 5.10
#
setenv ROOTSYS /d/local/root_5.10
setenv PATH    "$ROOTSYS/bin:${PATH}"
if ($?LD_LIBRARY_PATH) then
  setenv LD_LIBRARY_PATH "$ROOTSYS/lib:${LD_LIBRARY_PATH}"
else
  setenv LD_LIBRARY_PATH "$ROOTSYS/lib"
endif

setenv OGLHOME "/usr/lib"
setenv CRNLIB  ""
setenv CERNLIB ${CRNLIB}
setenv OPENGL  ${OGLHOME}
setenv XPM     ${ROOTSYS}/lib
setenv TTF     ${ROOTSYS}/ttf

