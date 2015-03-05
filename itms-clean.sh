#!/bin/bash  
echo 'This will remove iTunes-specific personal metadata in all .m4a files in the current directory and subdirectories.'
echo 'The following files will be modified :'
echo ''
dir=$(pwd)
	for d in */ ; do
		cd "$d"
		for i in *.m4a; do
			echo "$d""$i"
		done
		cd "$dir"
	done
echo ''
read -p "Are you sure you want to continue? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	dir=$(pwd)
	for d in */ ; do
		cd "$d"
		for i in *.m4a; do
			atomicparsley "$i" --apID "" --purchaseDate "" --manualAtomRemove "moov.udta.meta.ilst.ownr" -W
			# atomicparsley "$i" -t
		done
		cd "$dir"
	done
fi