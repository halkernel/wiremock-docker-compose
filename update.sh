#!/bin/bash
docker cp ./wiremock/mappings/. "$(docker-compose ps -q)":/home/wiremock/mappings
docker cp ./wiremock/__files/. "$(docker-compose ps -q)":/home/wiremock/__files
echo "Files copied successfully!"
docker-compose restart
echo "Restart completed!"