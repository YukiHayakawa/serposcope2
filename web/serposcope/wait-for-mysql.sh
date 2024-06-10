#!/bin/ash

set -e

host="$1"
shift
user="$1"
shift
password="$1"
shift
cmd="$@"
echo "mysql -h${host} -u${user} -p${password}"
until mysql -h"$host" -u"$user" -p"$password" &> /dev/null; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $cmd
