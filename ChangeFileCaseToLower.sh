#!/sh/bash
tempfile=./ChangeFileCase.$RANDOM
for n in $@
do
	cp $n $tempfile
	file=${n%.*}
	ext=${n##*.}
	rm $n
	cp $tempfile ${file,,}.$ext
done
rm $tempfile
