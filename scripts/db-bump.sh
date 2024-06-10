#!/bin/sh
docker exec -it --user root serposcope_db /script/db-dump.sh
exit 0;
