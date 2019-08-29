echo "Know the name of the devices connected"

xrandr | grep " connected" | cut -f1 -d " "

echo "Change the brightness at your will modifying the brightness parameter"

xrandr --output <<output from the previous command>> --brightness <<0-10>>
