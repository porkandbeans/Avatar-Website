#!/usr/bin/env bash

# simple bash script I wrote to make pushing a little bit easier

CMESG=$1
if [ -z "$CMESG" ]
then
	CMESG="lazy auto push"
fi

doas cat /root/github_keys
git add -A
git commit -m "$CMESG"
git push
clear
echo "Done! screen cleared to protect github key."
