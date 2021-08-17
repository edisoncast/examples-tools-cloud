#!/bin/bash
echo "What's your favorite color? "
read text1
echo "What's your best friend's favorite color? "
read text2
	if test $text1 != $text2; then
		echo "Opposites attract."
	else
		echo "You two do think alike!"
	fi
exit 0
