#!/bin/bash

## Проверка количества документов шарда 1 БД mongo
docker-compose exec -T shard1 mongosh --quiet --port 27018 <<EOF
  use somedb;
  db.helloDoc.countDocuments();
EOF
echo ""
## Проверка количества документов шарда 2 БД mongo
docker-compose exec -T shard2 mongosh --quiet --port 27019 <<EOF
  use somedb;
  db.helloDoc.countDocuments();
EOF
echo ""