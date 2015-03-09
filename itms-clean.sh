#!/bin/bash  
echo 'This will remove iTunes-specific personal metadata in all .m4a files in the current directory and subdirectories.'
echo 'The following files will be modified :'
echo ''
# Print list of files about to be modified
dir=$(pwd)
for d in */ ; do
	cd "$d"
	for i in *.m4a; do
		echo "$d""$i"
	done
	cd "$dir"
done
#Ask for confirmation
echo ''
read -p "Are you sure you want to continue? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	dir=$(pwd)
	for d in */ ; do
		cd "$d"
		for i in *.m4a; do
			# Switch lines below to print all tags of all m4a files instead of changing them
			atomicparsley "$i" --apID "" --purchaseDate "" --DeepScan --manualAtomRemove "moov.udta.meta.ilst.ownr" --manualAtomRemove "moov.udta.meta.ilst.sfID" --manualAtomRemove "moov.trak.mdia.minf.stbl.stsd.mp4a.pinf" --manualAtomRemove "moov.trak.mdia.minf.stbl.stsd.mp4a.UUID" -W
			# atomicparsley "$i" -t
		done
		cd "$dir"
	done
fi