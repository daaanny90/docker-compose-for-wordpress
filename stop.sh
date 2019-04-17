#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p $CURRENT_DIR/docker/data/backup

docker exec CONTAINER_NAME_1 sh -c 'exec mysqldump --databases DATABASE_NAME -uroot -p"$MYSQL_ROOT_PASSWORD"' > "$CURRENT_DIR/docker/data/backup/local.sql"

docker-compose stop
