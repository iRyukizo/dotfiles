scrot /tmp/screen.png

convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /tmp/screen.png -strokewidth 0 -fill 'rgba(70, 70, 70, 0.5)' \
	-draw 'rectangle 68,690 212,736' /tmp/screen.png
convert /tmp/screen.png -gravity southwest ~/.config/i3/i3lock/lock-32.png \
	-geometry +74+40 -composite -matte /tmp/screen.png
#convert /tmp/screen.png -font 'San-Francisco-Text-Heavy' -pointsize 20 \
#	gravity southwest -fill white -stroke black -strokewidth 0.2 \
#	'Locked' -annotate +120+45 'Locked' /tmp/screen.png
convert /tmp/screen.png -font 'San-Francisco-Text-Heavy' -pointsize 26 \
	-draw "gravity southwest fill white text 120,42 'Locked' " /tmp/screen.png

i3lock -n -i /tmp/screen.png \
	--insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
	--keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
	--insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
	--ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+60:y+490" \
	--radius=10 --ring-width=4 --veriftext="" --wrongtext=""

rm /tmp/screen.png
