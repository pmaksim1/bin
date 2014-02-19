#
#-- Setup script made by Pacman 3.16.1 and is often regenerated.  DO NOT EDIT
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Common
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Core
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Environment
#
setenv VDT_LOCATION "/opt/vdt"
setenv VDT_INSTALL_LOG "vdt-install.log"
setenv VDT_POSTINSTALL_README "/opt/vdt/post-install/README"
if ($?PATH) then 
        setenv PATH /opt/vdt/vdt/bin:${PATH}
else
        setenv PATH /opt/vdt/vdt/bin
endif
if ($?PATH) then 
        setenv PATH /opt/vdt/vdt/sbin:${PATH}
else
        setenv PATH /opt/vdt/vdt/sbin
endif
source /opt/vdt/vdt/etc/vdt-man-setup.csh
source /opt/vdt/vdt/etc/vdt-local-setup.csh
setenv PACMAN_LOCATION "/grid/pacman-3.16.1"
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /grid/pacman-3.16.1/src:${PYTHONPATH}
else
        setenv PYTHONPATH /grid/pacman-3.16.1/src
endif
if ($?PATH) then 
        setenv PATH /grid/pacman-3.16.1/src:${PATH}
else
        setenv PATH /grid/pacman-3.16.1/src
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Core-Bin
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Version
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Version-Info
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-System-Profiler
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Restore-VDT-Configuration
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Questions-Base
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:CA-Certificates
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:CA-Certificates-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:CA-Certificates-Base
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:EDG-CRL-Update
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:EDG-CRL-Update-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Licenses
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Licenses-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:EDG-Environment
#
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/edg/lib:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/edg/lib
endif
if ($?PATH) then 
        setenv PATH /opt/vdt/edg/sbin:${PATH}
else
        setenv PATH /opt/vdt/edg/sbin
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/edg/share/man
else
        setenv MANPATH /opt/vdt/edg/share/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-EDG-CRL-Update
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Install-Service
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Configure-Base
#
if ($?PERL5LIB) then 
        setenv PERL5LIB /opt/vdt/vdt/lib:${PERL5LIB}
else
        setenv PERL5LIB /opt/vdt/vdt/lib
endif
setenv X509_CERT_DIR "/opt/vdt/globus/TRUSTED_CA"
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Condor
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Condor-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Condor-Environment
#
source /opt/vdt/vdt/etc/condor-env.csh
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:JDK-1.4
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:JDK-1.4-Questions
#
setenv JAVA_HOME "/opt/vdt/jdk1.4"
if ($?PATH) then 
        setenv PATH /opt/vdt/jdk1.4/bin:${PATH}
else
        setenv PATH /opt/vdt/jdk1.4/bin
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/jdk1.4/man
else
        setenv MANPATH /opt/vdt/jdk1.4/man
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/jdk1.4/jre/lib/i386:/opt/vdt/jdk1.4/jre/lib/i386/server:/opt/vdt/jdk1.4/jre/lib/i386/client:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/jdk1.4/jre/lib/i386:/opt/vdt/jdk1.4/jre/lib/i386/server:/opt/vdt/jdk1.4/jre/lib/i386/client
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Condor
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GPT
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Environment
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-User-Environment
#
setenv GLOBUS_LOCATION "/opt/vdt/globus"
setenv GLOBUS_ERROR_VERBOSE "true"
source /opt/vdt/globus/etc/globus-user-env.csh
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Perl-Modules
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Perl-Environment
#
source /opt/vdt/perl/perl-setup.csh
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/perl/man
else
        setenv MANPATH /opt/vdt/perl/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Expat
#
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/expat/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/expat/lib
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/expat/man
else
        setenv MANPATH /opt/vdt/expat/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Berkeley-DB
#
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/berkeley-db/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/berkeley-db/lib
endif
setenv GPT_LOCATION "/opt/vdt/gpt"
if ($?PATH) then 
        setenv PATH /opt/vdt/gpt/sbin:${PATH}
else
        setenv PATH /opt/vdt/gpt/sbin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Cert-Request
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Cert-Request-Questions
#
setenv GRID_SECURITY_DIR "/etc/grid-security"
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-MDS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Logrotate
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Logrotate-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Logrotate
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Logrotate-Questions
#
if ($?PATH) then 
        setenv PATH /opt/vdt/logrotate/bin:${PATH}
else
        setenv PATH /opt/vdt/logrotate/bin
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/logrotate/man
else
        setenv MANPATH /opt/vdt/logrotate/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-VDT-Logrotate
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Jobmanager-Common
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Jobmanager-Common-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Globus-Gatekeeper
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Data-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Data-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-GridFTP
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDT-Get-Job-Info
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RM-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-Info-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Simple-CA
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Simple-CA-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Condor-Setup
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Condor-Setup-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MySQL
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MySQL-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-MySQL
#
setenv GLOBUS_MYSQL_PATH "/opt/vdt/mysql"
setenv MYSQL_UNIX_PORT "/opt/vdt/vdt-app-data/mysql/var/mysql.sock"
if ($?PATH) then 
        setenv PATH /opt/vdt/mysql/bin:${PATH}
else
        setenv PATH /opt/vdt/mysql/bin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/mysql/lib/mysql:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/mysql/lib/mysql
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/mysql/man
else
        setenv MANPATH /opt/vdt/mysql/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MyODBC
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MyODBC-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:IODBC
#
setenv MYODBCINSTALL "/opt/vdt/iodbc/lib"
setenv IODBCINSTALL "/opt/vdt/iodbc"
setenv ODBCINIDIR "/opt/vdt/iodbc/var"
setenv GLOBUS_IODBC_PATH "/opt/vdt/iodbc"
setenv ODBCINI "/opt/vdt/iodbc/var/odbc.ini"
if ($?PATH) then 
        setenv PATH /opt/vdt/iodbc/bin:${PATH}
else
        setenv PATH /opt/vdt/iodbc/bin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/iodbc/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/iodbc/lib
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/iodbc/man
else
        setenv MANPATH /opt/vdt/iodbc/man
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/myodbc/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/myodbc/lib
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-RLS-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-RLS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:KX509
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:KX509-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MyProxy
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MyProxy-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GSIOpenSSH
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GSIOpenSSH-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GLUE-Schema
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Generic-Information-Provider
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Generic-Information-Provider-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-GIP
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Fault-Tolerant-Shell
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Fault-Tolerant-Shell-Questions
#
if ($?PATH) then 
        setenv PATH /opt/vdt/ftsh/bin:${PATH}
else
        setenv PATH /opt/vdt/ftsh/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:EDG-Make-Gridmap
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:EDG-Make-Gridmap-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Perl-Modules-SSL
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Perl-Modules-SSL-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-EDG-Make-Gridmap
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MonaLisa
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:MonaLisa-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-MonaLisa
#
setenv MonaLisa_HOME "/opt/vdt/MonaLisa"
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/MonaLisa/Service/VDTFarm/pgsql/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/MonaLisa/Service/VDTFarm/pgsql/lib
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VDS-Questions
#
setenv VDS_HOME "/opt/vdt/vds"
setenv VDS_HOME "/opt/vdt/vds"
setenv VDS_JAVA_HEAPMAX "1024"
source /opt/vdt/vds/setup-user-env.csh
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:UberFTP
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:UberFTP-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:ClassAds
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGlobus
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGlobus-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-SDK
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-SDK-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Core
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Python
#
if ($?PATH) then 
        setenv PATH /opt/vdt/python/bin:${PATH}
else
        setenv PATH /opt/vdt/python/bin
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/python/man
else
        setenv MANPATH /opt/vdt/python/man
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/globus/lib/python:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/globus/lib/python
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGlobusURLCopy
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGlobusURLCopy-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Netlogger
#
if ($?PATH) then 
        setenv PATH /opt/vdt/netlogger/bin:${PATH}
else
        setenv PATH /opt/vdt/netlogger/bin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/netlogger/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/netlogger/lib
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/netlogger/lib/python2.2/site-packages:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/netlogger/lib/python2.2/site-packages
endif
if ($?PATH) then 
        setenv PATH /opt/vdt/pyglobus-url-copy/bin:${PATH}
else
        setenv PATH /opt/vdt/pyglobus-url-copy/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:DRM
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:DRM-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-DRM
#
setenv DRM_HOME "/opt/vdt/drm"
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Server-Base
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Server-Base-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Environment
#
setenv VOMS_LOCATION "/opt/vdt/voms"
setenv EDG_LOCATION "/opt/vdt/voms"
setenv VOMS_USERCONF "/opt/vdt/voms/etc"
if ($?PATH) then 
        setenv PATH /opt/vdt/voms/bin:${PATH}
else
        setenv PATH /opt/vdt/voms/bin
endif
if ($?PATH) then 
        setenv PATH /opt/vdt/voms/sbin:${PATH}
else
        setenv PATH /opt/vdt/voms/sbin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/voms/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/voms/lib
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/voms/share/man
else
        setenv MANPATH /opt/vdt/voms/share/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Admin
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Admin-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Tomcat-5
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Tomcat-5-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Apache
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Apache-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Apache
#
if ($?PATH) then 
        setenv PATH /opt/vdt/apache/bin:${PATH}
else
        setenv PATH /opt/vdt/apache/bin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/apache/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/apache/lib
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/apache/lib/python:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/apache/lib/python
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/apache/man
else
        setenv MANPATH /opt/vdt/apache/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Tomcat
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:BC-Provider
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:gLite-Environment
#
setenv GLITE_LOCATION "/opt/vdt/glite"
setenv GLITE_LOCATION_VAR "/opt/vdt/glite/var"
setenv GLITE_LOCATION_LOG "/opt/vdt/glite/log"
setenv GLITE_LOCATION_TMP "/opt/vdt/glite/tmp"
setenv X509_CADIR "/opt/vdt/globus/TRUSTED_CA"
if ($?PATH) then 
        setenv PATH /opt/vdt/glite/bin:${PATH}
else
        setenv PATH /opt/vdt/glite/bin
endif
if ($?PATH) then 
        setenv PATH /opt/vdt/glite/sbin:${PATH}
else
        setenv PATH /opt/vdt/glite/sbin
endif
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/glite/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/glite/lib
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Admin-Java-Lib
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens-Publisher
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens-Publisher-Questions
#
if ($?PATH) then 
        setenv PATH /opt/vdt/jclarens-publisher/bin:${PATH}
else
        setenv PATH /opt/vdt/jclarens-publisher/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:VOMS-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-VOMS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Service
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Service-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Service-Extras
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Service-Extras-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-GUMS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:GUMS-Client-Questions
#
if ($?PATH) then 
        setenv PATH /opt/vdt/gums/bin:${PATH}
else
        setenv PATH /opt/vdt/gums/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PPDG-Cert-Scripts
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PPDG-Cert-Scripts-Questions
#
setenv CERT_SCRIPTS_HOME "/opt/vdt/cert-scripts"
if ($?PATH) then 
        setenv PATH /opt/vdt/cert-scripts/bin:${PATH}
else
        setenv PATH /opt/vdt/cert-scripts/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PRIMA
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PRIMA-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-PRIMA
#
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/prima/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/prima/lib
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/prima/man
else
        setenv MANPATH /opt/vdt/prima/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens-Discovery
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens-Discovery-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:jClarens-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-jClarens
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-jClarens-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-jClarens-Discovery
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:CEMon
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:CEMon-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-CEMon
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Clarens-JobMon
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Clarens-JobMon-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Clarens
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Clarens-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Clarens
#
if ($?LD_LIBRARY_PATH) then 
        setenv LD_LIBRARY_PATH /opt/vdt/clarens/lib:${LD_LIBRARY_PATH}
else
        setenv LD_LIBRARY_PATH /opt/vdt/clarens/lib
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/clarens/lib/clarens-server:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/clarens/lib/clarens-server
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/clarens/lib:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/clarens/lib
endif
if ($?MANPATH) then 
        setenv MANPATH ${MANPATH}:/opt/vdt/clarens/man
else
        setenv MANPATH /opt/vdt/clarens/man
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WS-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WS-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Ant
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Ant-Questions
#
setenv ANT_HOME "/opt/vdt/ant"
if ($?PATH) then 
        setenv PATH /opt/vdt/ant/bin:${PATH}
else
        setenv PATH /opt/vdt/ant/bin
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Options
#
source /opt/vdt/vdt/etc/vdt-globus-options.csh
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Globus-WS
#
setenv GLOBUS_OPTIONS "-Xmx512M"
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSMDS-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSMDS-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-Globus-WSGRAM
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Server
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Server-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Essentials
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Essentials-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-RFT
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-WSGRAM-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Client
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-Base-RFT-Client-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Condor-Setup
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-WS-Condor-Setup-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGridWare
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PyGridWare-Questions
#
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/globus/lib/python:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/globus/lib/python
endif
if ($?PYTHONPATH) then 
        setenv PYTHONPATH /opt/vdt/pygridware/lib/python2.3/site-packages:${PYTHONPATH}
else
        setenv PYTHONPATH /opt/vdt/pygridware/lib/python2.3/site-packages
endif
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PRIMA-GT4
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:PRIMA-GT4-Questions
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Configure-PRIMA-GT4
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-ManagedFork-Setup
#
#
#-- package http://vdt.cs.wisc.edu/vdt_1310_cache:Globus-ManagedFork-Setup-Questions
#
