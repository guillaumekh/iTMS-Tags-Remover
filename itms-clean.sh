#!/bin/bash  
echo 'This will remove iTunes-specific personal metadata in all .m4a files in the current directory and subdirectories.'
read -p "Are you sure you want to continue? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	dir=$(pwd)
	for d in */ ; do
		cd "$d"
		for i in *.m4a; do
			atomicparsley "$i" --apID "" --cnID "" --geID "" --purchaseDate "" -W
		done
		cd "$dir"
	done
fi

# atomicparsley 0.9.6 does not recognize these tags for some reason. Could be a bug.
# --atID "" --plID "" --sfID "" 
