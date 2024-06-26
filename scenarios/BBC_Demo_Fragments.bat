rem  Experimental batch file 
rem  GHA_Demo 
rem  uses fragments
rem results.csv and html_results must not exist
rem 
java -Xms2g -Xmx2g -jar C:\performance_testing\apache-jmeter-5.6.3\bin\ApacheJMeter.jar   -n ^
    -t C:\performance_testing\GHA_Demo\scenarios\BBC_Demo_Fragments.jmx ^
    -l C:\performance_testing\GHA_Demo\results\result.csv ^
    -q C:\performance_testing\GHA_Demo\properties\Short_Smoke_Test.properties ^
    -q C:\performance_testing\GHA_Demo\properties\Smoke_Test_NFR.properties ^
    -J includecontroller.prefix=C:\performance_testing\GHA_Demo\fragments\ ^
    -e  -o C:\performance_testing\GHA_Demo\results\html_results