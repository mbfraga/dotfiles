#!/usr/bin/env sh

echo $#
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
polybar "$bar" || polybar example &


echo "Polybars launched..."
