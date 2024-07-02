sudo docker exec -e MARIADB_ROOT_PASSWORD=admin mariadb-docker-compose-db-1 sh -c 'exec mariadb-dump -uroot -p"$MARIADB_ROOT_PASSWORD" TP_FLASHCOOKIE_MZT_ORZ' > ./dump.sql

docker exec -e MARIADB_ROOT_PASSWORD=root <container_name_or_id> sh -c 'exec mariadb-dump -uroot -p"$MARIADB_ROOT_PASSWORD" <database_name>' > dump.sql
