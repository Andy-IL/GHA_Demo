@echo off
rem batch file to start JMeter GUI 
rem with a specific jmx
rem and properties to set ramp, VU and duration
rem and output dir ? 
C:\performance_testing\apache-jmeter-5.5\bin\jmeter.bat ^
  -q C:\performance_testing\GHA_Demo\properties\Short_Smoke_Test.properties ^
  -t C:\performance_testing\GHA_Demo\scenarios\BBC_Demo.jmx