#!/usr/bin/env bash

BASE_DIR="$(dirname "$(dirname "$(readlink -f "$0")")")"
source "${BASE_DIR}/lib/config.sh"
source "${BASE_DIR}/lib/utils.sh"


read -p "Enter the number of hours to work: " hours_to_work
total_cycle=$((hours_to_work * 2))
cycle=1

while [ $cycle -le $total_cycle ]; do
  echo "pomo cycle $(($cycle)) started!!!"
  run_timer $work_duration 
  if (($cycle % 4 == 0)); then 
#    echo " you can have a long break "
  notify-send "⏰ Pomodoro Done!" "Take a 10-minute break."
    run_timer $long_break
  else
    notify-send "⏰ Pomodoro Done!" "Take a 5-minute break."
 #   echo " sorry , its a short break "
    run_timer $short_break	
  fi
 ((cycle++))
done

  notify-send "⏰ Pomodoro Done!" "all your $hours_to_work hour(s) of Pomodoro complete!! "
  #echo "All your $hours_to_work hour(s) of Pomodoro complete!"
