# iTMS-Tags-Remover
iTunes Music Store personal data cleaning bash script
Removes identifying tags from `.m4a` files
Searches current folder and subfolders (but not subsubfolders and beyond)

Removes the following tags inside *.m4a files in current directory :
* `apID` : apple account email address
* `ownr` : full name of owner
* `purd` : date purchased

### Installation instructions :
  1. Open Terminal
  2. Install `atomicparsley` if you don't have it already
    * OSX : In Terminal, type `brew install atomicparsley` ([Homebrew](http://brew.sh/) required)
    * Linux : In Terminal, type `sudo apt-get install atomicparsley`
  3. Download `itms-clean.sh` to any directory of your choice and run `chmod +x` on it to make it executable

### Usage :
  1. In Terminal, `cd` to directory where `.m4a` files are stored
  2. Run `itms-clean.sh` script
  3. The script will print the list of files about to be modified and ask for confirmation

###### Dependencies :
* `atomicparsley` https://bitbucket.org/wez/atomicparsley

###### For the paranoid :
You can replace the `atomicparsley "$i" --apID...` line with the `atomicparsley "$i" -t` line below to print all tags to see for yourself that all the tags mentioned above have been removed.

For more info on iTMS-specific tags :
* https://code.google.com/p/mp4v2/wiki/iTunesMetadata
* http://atomicparsley.sourceforge.net/mpeg-4files.html
