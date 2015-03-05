#!/bin/bash  

read -p "This will remove iTunes-specific personal metadata. Are you sure you want to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	for i in *.m4a; do
		atomicparsley "$i" --apID "" --cnID "" --geID "" --purchaseDate "" -W
	done
fi

# atomicparsley 0.9.6 does not recognize these tags for some reason. Could be a bug.
# --atID "" --plID "" --sfID "" 