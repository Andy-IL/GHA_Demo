rem docker command to use image of jmeter 
rem assumes image justb4/jmeter is available 
rem see https://www.youtube.com/watch?v=Z4Oe8xz6ens&list=PLJ9A48W0kpRIjLkZ32Do9yDZXnnm7_uj_&index=51
docker tag justb4/jmeter jmeter_tag
docker run --mount type=bind,source="C:\performance_testing\GHA_Demo\\",target="/performance_testing/" jmeter_tag  -n -t /performance_testing/scenarios/BBC_noJUnit_Reporter.jmx -l /performance_testing/results/Run2.csv
