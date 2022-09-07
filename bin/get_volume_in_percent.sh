#!/bin/sh
volstring=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | sed 's/[^0-9.]*//g')

volpercent=$(bc -l <<< "${volstring}*100" | sed 's/[.][0-9]*//g')

muted="notmuted"

if wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -q "MUTED"
then
   volpercent=0
fi

if [ "$volpercent" -eq "0" ]; then
   muted="muted"
fi

echo "{ \"percentage\": $volpercent, \"alt\": \"$muted\" }"