#!/bin/sh
docker exec -it --user root t-cr-web-nginx /script/clear-nginx-cache.sh
docker exec -it --user root t-cr-api-nginx /script/clear-nginx-cache.sh
docker exec -it --user root t-cr-static-nginx /script/clear-nginx-cache.sh
exit 0;
