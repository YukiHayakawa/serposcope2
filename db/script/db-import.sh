#!/bin/sh

cd /docker-entrypoint-initdb.d/
echo "import example..."
zcat ./serposcope.dump.gz | mysql -h localhost -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" -P 3306 "${MYSQL_DATABASE}"

echo "done."
