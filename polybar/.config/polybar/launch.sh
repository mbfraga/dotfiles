#!/usr/bin/env sh

while getopts ":e" opt; do
   case $opt in
      e)
         bar2="$(hostname)-ext"
         ;;
      \?)
         echo "Invalid Option..."
         exit 1
         ;;
   esac
done
shift $((OPTIND-1))

if [[ $# -gt 0 ]]; then
   bar="$1"
else
   bar="$(hostname)"
fi

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar "$bar" &
if [[ -n "$bar2" ]]; then
   echo "launching second bar $bar2"
   polybar "$bar2" &
fi


echo "Polybars launched..."
