#!/bin/bash
set -e

if [ "$1" = 'postgres' ]; then
    exec su - postgres -c "$@ -D /var/lib/pgsql/data "
fi

exec "$@"
