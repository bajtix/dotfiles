function dayfolder
	set -f val (date "+%y-%b-%d")
	mkdir $val 2>/dev/null
	echo $val
end
