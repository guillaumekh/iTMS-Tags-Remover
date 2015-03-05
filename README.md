# iTMS-Tags-Remover
iTunes Music Store personal data cleaning bash script.
Removes identifying tags from .m4a files.

Removes the following tags inside *.m4a files in current directory :
* apID : apple account email address
* ownr : full name of owner
* purd : date purchased

For the paranoid :
* You can replace the `atomicparsley "$i" --apID...` line with the `atomicparsley "$i" -t` line below to print all tags to see for yourself that all the tags mentioned above have been removed.

Dependency :
* atomicparsley https://bitbucket.org/wez/atomicparsley

For more info on iTMS-specific tags :
* https://code.google.com/p/mp4v2/wiki/iTunesMetadata
* http://atomicparsley.sourceforge.net/mpeg-4files.html
