#!/bin/bash

# Script that remembers you to break your working sessions, in order to keep
# your mind and body healthy.

logfile="$HOME/Temporal/breakwork.log"
sound="$HOME/Binaries/bell.wav"
work_mins="25"
rest_mins="5"

function timer() {
  echo -n "           [" >> $logfile
  mins=0
  while [ $mins -lt $1 ]
  do
    sleep 1m
    echo -n "*" >> $logfile
    
    ((++mins))
  done
  echo "]" >> $logfile
}

date +"%T - Starting work day... (%D)" >> $logfile
xmessage -nearmouse -timeout 2 "Good day!"

button=0
activity="starting day"
while [ $button -ne 3 ]
do
  if [ $button -eq 1 ]; then
    date +"%T - Working time started..." >> $logfile
    xmessage -nearmouse -timeout 2 "Work, don't distract!"
    timer $work_mins
    activity="working"
  elif [ $button -eq 2 ]; then
    date +"%T - Relax time started..." >> $logfile
    xmessage -nearmouse -timeout 2 "Stand up, walk, stretch, look away"
    timer $rest_mins
    activity="relaxing"
  fi

  aplay $sound
  xmessage -nearmouse -buttons "Work:1,Rest:2,Exit:3"                         \
      "Are you $activity? What will you do?"

  button=$?
done

date +"%T - Work day ended..." >> $logfile
xmessage -nearmouse -timeout 1 "Good bye!"

