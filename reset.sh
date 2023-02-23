# Up docker compose
docker compose up -d

# Drop databases and create databases
docker compose exec mariadb bash -c "mysql -u root -proot -e \"DROP DATABASE IF EXISTS payment; CREATE DATABASE payment CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\""
docker compose exec mariadb bash -c "mysql -u root -proot -e \"DROP DATABASE IF EXISTS wordpress; CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\""

# Import data
docker compose exec mariadb bash -c "mysql -u root -proot payment < /data/payment.sql"
docker compose exec mariadb bash -c "mysql -u root -proot wordpress < /data/wordpress.sql"