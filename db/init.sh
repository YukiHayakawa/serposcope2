docker-compose down
sudo rm -rf data/*
docker-compose up -d
docker logs -f serposcope_db

