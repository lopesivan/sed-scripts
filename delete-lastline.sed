#!/bin/sed -f
# Usage:
# cat file | sed.delete-lastline -n

/^$/{x
	d
}

/./x
p
