

COW=$(cowsay -l | tail  +2 | tr ' ' "\n" | sort -R | head -n 1)
COWCMD=$(echo "cowsay\ncowthink" | sort -R | head -n 1 )
fortune | $COWCMD -f $COW | lolcat