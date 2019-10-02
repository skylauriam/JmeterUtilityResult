# JmeterUtilityResult
Script to generate the aggregate report &amp; graphs

PRECONDITIONS

- The Jmeter execution should generate a output jtl file 
- Install the Jmeter plugin manager (please see the following guide : https://jmeter-plugins.org/wiki/PluginsManager/ )

HOW TO USE 

1. Create a folder under /apache-jmeter-x.x.x/bin 
2. Move the "jmeterUtilityResult.sh" under the new folder
3. Move the jtl output file under the new folder
4. Open the command line in the new folder
5. Execute the script using the command line

EXECUTION COMMAND 

sh jmeterUtilityResult.sh [INPUT_JTL_FILE] [THREAD_NUMBER]

*Legend

INPUT_JTL_FILE : jtl file name without extension

THREAD_NUMBER : threads number used in the test case

