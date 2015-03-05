#!/bin/bash  
echo 'This will remove iTunes-specific personal metadata in all .m4a files in the current directory and subdirectories.'
read -p "Are you sure you want to continue? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	dir=$(pwd)
	for d in */ ; do
		cd "$d"
		for i in *.m4a; do
			atomicparsley "$i" --apID "" --cnID "" --geID "" --purchaseDate "" --manualAtomRemove "moov.udta.meta.ilst.ownr" --manualAtomRemove "moov.udta.meta.ilst.atID" --manualAtomRemove "moov.udta.meta.ilst.plID" --manualAtomRemove "moov.udta.meta.ilst.sfID" -W
		done
		cd "$dir"
	done
fi