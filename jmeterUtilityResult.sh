#!/bin/bash

# example execution command : sh jmeterUtilityResult.sh INPUT_JTL_FILE THREAD_NUMBER


sh ../JMeterPluginsCMD.sh --generate-png ResponseTimesOverTime_$2U_`date +%Y%m%d-%H%M`.png --input-jtl $1.jtl --plugin-type ResponseTimesOverTime --width 800 --height 600
sh ../JMeterPluginsCMD.sh --generate-png ThroughputVsThreads_$2U_`date +%Y%m%d-%H%M`.png --input-jtl $1.jtl --plugin-type ThroughputVsThreads --width 800 --height 600
sh ../JMeterPluginsCMD.sh --generate-png TimesVsThreads_$2U_`date +%Y%m%d-%H%M`.png --input-jtl $1.jtl --plugin-type TimesVsThreads --width 800 --height 600
sh ../JMeterPluginsCMD.sh --generate-png ThreadsStateOverTime_$2U_`date +%Y%m%d-%H%M`.png --input-jtl $1.jtl --plugin-type ThreadsStateOverTime --width 800 --height 600
sh ../JMeterPluginsCMD.sh --generate-png TransactionsPerSecond_$2U_`date +%Y%m%d-%H%M`.png --input-jtl $1.jtl --plugin-type TransactionsPerSecond --width 800 --height 600
sh ../JMeterPluginsCMD.sh --generate-csv aggregateResultsTC_$2U_`date +%Y%m%d-%H%M`.csv --input-jtl $1.jtl --plugin-type AggregateReport --include-label-regex true --include-labels "^_(.*)"
sh ../JMeterPluginsCMD.sh --generate-csv aggregateResultsAPI_$2U_`date +%Y%m%d-%H%M`.csv --input-jtl $1.jtl --plugin-type AggregateReport --exclude-label-regex true --exclude-labels "^_(.*)"

