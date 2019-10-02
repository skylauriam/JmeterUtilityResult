

set JTL=%JTL%
set USERS=%2%

set timefmt=%time%
set timefmt=%TIMEFMT:~0,2%%TIMEFMT:~3,2%%TIMEFMT:~6,2%
set timefmt=%TIMEFMT: =0%

call ..\JMeterPluginsCMD.bat --generate-png ResponseTimesOverTime_%USERS%U_%timefmt%.png --input-jtl %JTL%.jtl --plugin-type ResponseTimesOverTime --width 800 --height 600
call ..\JMeterPluginsCMD.bat --generate-png ThroughputVsThreads_%USERS%U_%timefmt%.png --input-jtl %JTL%.jtl --plugin-type ThroughputVsThreads --width 800 --height 600
call ..\JMeterPluginsCMD.bat --generate-png TimesVsThreads_%USERS%U_%timefmt%.png --input-jtl %JTL%.jtl --plugin-type TimesVsThreads --width 800 --height 600
call ..\JMeterPluginsCMD.bat --generate-png ThreadsStateOverTime_%USERS%U_%timefmt%.png --input-jtl %JTL%.jtl --plugin-type ThreadsStateOverTime --width 800 --height 600
call ..\JMeterPluginsCMD.bat --generate-png TransactionsPerSecond_%USERS%U_%timefmt%.png --input-jtl %JTL%.jtl --plugin-type TransactionsPerSecond --width 800 --height 600
call ..\JMeterPluginsCMD.bat --generate-csv aggregateResultsTC_%USERS%U_%timefmt%.csv --input-jtl %JTL%.jtl --plugin-type AggregateReport --include-label-regex true --include-labels "^_(.*)"
call ..\JMeterPluginsCMD.bat --generate-csv aggregateResultsAPI_%USERS%U_%timefmt%.csv --input-jtl %JTL%.jtl --plugin-type AggregateReport --exclude-label-regex true --exclude-labels "^_(.*)"