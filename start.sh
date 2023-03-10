if [ $1 -eq 'dev' ]; then
  sudo docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d 
else
  sudo docker compose up -d
fi