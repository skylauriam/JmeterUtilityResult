#!/bin/bash

# example execution command : sh jmeterUtilityResult_DashHtml.sh INPUT_JTL_FILE THREAD_NUMBER

sh ../JMeterPluginsCMD.sh --generate-csv aggregateResultsTC_$2U_`date +%Y%m%d-%H%M`.csv --input-jtl $1.jtl --plugin-type AggregateReport --include-label-regex true --include-labels "^_(.*)"
sh ../JMeterPluginsCMD.sh --generate-csv aggregateResultsAPI_$2U_`date +%Y%m%d-%H%M`.csv --input-jtl $1.jtl --plugin-type AggregateReport --exclude-label-regex true --exclude-labels "^_(.*)"

