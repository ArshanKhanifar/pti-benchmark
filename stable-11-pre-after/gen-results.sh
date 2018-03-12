rm -rf results;
mkdir results;
name=$1
for folder in $(ls | grep $name | grep -v tar); do
	for respath in $(find $folder | grep syscall_timing); do
		resfile=$(basename $respath)
		filename=${resfile%.*}
		i=${folder##*.}
		cat $respath | tail -n 10 | awk '{print $5*1e9}' > results/$filename.$i;
	done;
done;

for file in $(ls $(ls | grep $name | grep -v tar | head -n 1 )/syscall_timing); do
	filename=${file%.*}
	ministat results/$filename.* > results/$filename.mini
done

rm results/*.4
rm results/*.2


