docker-compose run --rm redash /opt/redash/current/manage.py database create_tables
docker-compose run --rm redash /opt/redash/current/manage.py users create --admin --password admin "Admin" "admin"
docker-compose run --rm redash /opt/redash/current/manage.py ds new -n "re:dash metadata" -t "pg" -o "{\"user\": \"redash_reader\", \"password\": \"redash_reader\", \"host\": \"postgres\", \"dbname\": \"postgres\"}"
