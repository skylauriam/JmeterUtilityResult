# JmeterUtilityResult
Script to generate the aggregate report &amp; graphs

# PRECONDITIONS

- The Jmeter execution should generate a output jtl file 
- Install the Jmeter plugin manager (please see the following guide : https://jmeter-plugins.org/wiki/JMeterPluginsCMD/ )
- check if the JMeterPluginsCMD file is present under /apache-jmeter-x.x.x/bin folder

# HOW TO USE 

1. Create a folder under /apache-jmeter-x.x.x/bin 

2. Move the "jmeterUtilityResult" script under the new folder 
(jmeterUtilityResult.sh for Mac users or jmeterUtilityResult.bat for windows users)

3. clear all the folder spaces 
(e.g. from "C:/User/test script/apache-jmeter-x.x.x/bin/new folder" to "C:/User/test_script/apache-jmeter-x.x.x/bin/new_folder" ) 

4. Move the jtl output file under the new folder

5. Open the command line in the new folder

6. Execute the script using the command line

# EXECUTION COMMAND 

sh jmeterUtilityResult.sh [INPUT_JTL_FILE] [THREAD_NUMBER]

Legend

INPUT_JTL_FILE : jtl file name without extension

THREAD_NUMBER : threads number used in the test case

# SCRIPT OUTPUT

Graphs

- ResponseTimesOverTime
- ThroughputVsThreads
- TimesVsThreads
- ThreadsStateOverTime
- TransactionsPerSecond

Csv

- AggregateReport
