#!/bin/bash
CONTENTS=`cat $1`
REPLACED=`echo $CONTENTS | sed -e 's/\\n//g'`
cd ~/Library/Mail/V4/MailData/Signatures
SIGFILE=`ls -lt | egrep -m 1 -o '(([A-Z]|[a-z]|[0-9])*-)*([A-Z]|[a-z]|[0-9])*(.mailsignature)'`
chflags nouchg $SIGFILE
sed -i '' '7,$ d' $SIGFILE
sed -i '' -e '6a\'$'\n'"$REPLACED" $SIGFILE
chflags uchg $SIGFILE
