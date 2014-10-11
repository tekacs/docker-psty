#!/bin/sh
if [ $# -ne 1 ]; then
	echo "Usage: $0 <data_dir>"
	exit 1
fi
docker run --rm -itv $1:/home -p 127.0.0.1:50937:50937 tekacs/psty:latest
