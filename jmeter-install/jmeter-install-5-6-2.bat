bitsadmin.exe /transfer "GetJmeter" https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.zip C:\temp\jmeter.zip
tar -xf c:\temp\jmeter.zip -C c:\temp

bitsadmin.exe /transfer "GetCMDRunner" https://repo1.maven.org/maven2/kg/apc/cmdrunner/2.3/cmdrunner-2.3.jar C:\temp\apache-jmeter-5.6.2\lib\

bitsadmin.exe /transfer "GetPluginManager" https://search.maven.org/remotecontent?filepath=kg/apc/jmeter-plugins-manager/1.9/jmeter-plugins-manager-1.9.jar C:\temp\apache-jmeter-5.6.2\lib\ext

java -cp C:\temp\apache-jmeter-5.6.2\lib\ext\jmeter-plugins-manager-1.9.jar org.jmeterplugins.repository.PluginManagerCMDInstaller


C:\temp\apache-jmeter-5.6.2\bin\PluginsManagerCMD.bat install \
jpgc-functions,\
jpgc-cmd,\
jpgc-graphs-basic,\
jpgc-graphs-additional,\
jpgc-graphs-dist,\
jpgc-graphs-vs,\
jpgc-ggl,\
jpgc-graphs-composite,\
tilln-junit,\
jpgc-csl,\
jpgc-mergeresults,\
jpgc-ffw,\
jpgc-casutg,\
jpgc-tst,\
jpgc-dummy,\
bzm-parallel,\
jpgc-autostop,\
jpgc-synthesis,\
bzm-random-csv >/dev/null 2>&1
