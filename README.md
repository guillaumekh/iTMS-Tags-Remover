# iTMS-Tags-Remover
iTunes Music Store personal data cleaning bash script.
Removes identifying tags from .m4a files.

Removes the following tags inside *.m4a files in current directory :
* apID : apple account email address
* cnID : iTunes Catalog ID
* geID : genre ID
* purd : date purchased

Dependency :
* atomicparsley https://bitbucket.org/wez/atomicparsley

For more info on iTMS-specific tags :
* https://code.google.com/p/mp4v2/wiki/iTunesMetadata
* http://atomicparsley.sourceforge.net/mpeg-4files.html
