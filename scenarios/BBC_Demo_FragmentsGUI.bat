rem  Experimental batch file 
rem  GHA_Demo BBC script GUI version
rem  uses fragments
rem results.csv and html_results must not exist
rem 
java -Xms2g -Xmx2g -jar C:\performance_testing\apache-jmeter-5.6.2\bin\ApacheJMeter.jar    ^
    -t C:\performance_testing\GHA_Demo\scenarios\BBC_Demo_Fragments.jmx ^
    -q C:\performance_testing\GHA_Demo\properties\Short_Smoke_Test.properties ^
    -q C:\performance_testing\GHA_Demo\properties\Smoke_Test_NFR.properties ^
    -J includecontroller.prefix=C:\performance_testing\GHA_Demo\fragments\ ^
