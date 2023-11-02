# Wait for database server and set up the initial database
if [ -f .devcontainer/setup-mariadb.sql ]; then
  sleep 20
  mysql -h 127.0.0.1 -uroot -pmariadb < .devcontainer/setup-mariadb.sql
fi

if [ -f .devcontainer/H_Plus_Sports_MySQL.sql ]; then
  sleep 20
  mysql -h 127.0.0.1 -umariadb -pmariadb < .devcontainer/H_Plus_Sports_MySQL.sql
fi