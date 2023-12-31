#/bin/bash
rgb=$(printf "%02x%02x%02x\n" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))&&asusctl led-mode static -c $rgb
