# Up docker compose
sudo docker compose up -d

# Drop databases and create databases
sudo docker compose exec mariadb bash -c "mysql -u root -proot -e \"DROP DATABASE IF EXISTS payment; CREATE DATABASE payment CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\""
sudo docker compose exec mariadb bash -c "mysql -u root -proot -e \"DROP DATABASE IF EXISTS wordpress; CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\""

# Import data
sudo docker compose exec mariadb bash -c "mysql -u root -proot payment < /data/payment.sql"
sudo docker compose exec mariadb bash -c "mysql -u root -proot wordpress < /data/wordpress.sql"