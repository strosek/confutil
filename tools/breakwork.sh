#!/bin/bash

# Script that remembers you to break your working sessions, in order to keep
# your mind and body healthy.

logfile="breakwork.log"
worktime="25m"
resttime="5m"

date +"%T - Starting work day... (%D)" >> $logfile
xmessage -nearmouse -timeout 2 "Good day!"

button=0
activity="starting day"
while [ $button -ne 3 ]
do
  if [ $button -eq 1 ]; then
    date +"%T - Working time started..." >> $logfile
    xmessage -nearmouse -timeout 2 "Work, don't distract!"
    sleep $worktime
    activity="working"
  elif [ $button -eq 2 ]; then
    date +"%T - Relax time started..." >> $logfile
    xmessage -nearmouse -timeout 2 "Stand up, walk, stretch, look away"
    sleep $resttime
    activity="relaxing"
  fi

  xmessage -nearmouse -buttons "Work:1,Rest:2,Exit:3"                         \
      "Are you $activity? What will you do?"

  button=$?
done

date +"%T - Work day ended..." >> $logfile
xmessage -nearmouse -timeout 1 "Good bye!"
