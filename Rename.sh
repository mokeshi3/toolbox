#!/sh/bash
if [ $# -ne 2 ]; then
	echo "usage: $0 [target file] [new name file]"
	exit
fi

tempfile=./ChangeFileCase.$RANDOM
cp $1 $tempfile
rm $1
cp $tempfile $2
rm $tempfile
