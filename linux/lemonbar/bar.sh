#!/usr/bin/bash

workspace() {
	workspacenext="A4:i3-msg workspace next_on_output:"
        workspaceprevious="A5:i3-msg workspace prev_on_output:"
        wslist=$(\
                wmctrl -d \
                | awk '/ / {print $2 $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20}' ORS=''\
                | sed -e 's/\s*  //g' \
                -e 's/\*[ 0-9A-Za-z]*[^ -~]*/%{B#666699}  &  /g' \
                -e 's/\-[ 0-9A-Za-z]*[^ -~]*/%{B-}%{F#ccccff}  &  %{F#ffffff}/g' \
                -e 's/\*//g' \
                -e 's/ -/ /g' \
                )
        echo -n "%{$workspacenext}%{$workspaceprevious}%{B#292a44}$wslist%{B-}"
}
windowtitle() {
	# Grabs focused window's title
	# The echo "" at the end displays when no windows are focused.
	TITLE=$(xdotool getactivewindow getwindowname 2>/dev/null | sed -n 1p || echo "")
	TITLECUT=$(xdotool getactivewindow getwindowname 2>/dev/null | sed -n 1p | sed 's/\///g;s/-//g;s/ /\\/g' | cut -c 1-6 || echo "")

	if [ $TITLECUT = "timdouglas@" ]; then
		echo "$(printf '%b' "\ue1d9") $(echo "$TITLE" | cut -c 15-50)"
	else
		echo "$TITLE" | cut -c 1-50
	fi
}

clock() {
	DATE=$(date "+%d %B %Y")
	TIME=$(date "+%I:%M%p")
	echo -e -n "%{F#ccccff}${DATE} %{F#FFFFFFFF}${TIME}"
}

while true; do
	echo -e "%{l}$(workspace) $(windowtitle) %{r}$(clock) "
	sleep 0.1s
done