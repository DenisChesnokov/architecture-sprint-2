#!/bin/bash

docker compose exec -T mongos_router mongosh --port 27020 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


docker compose exec -T shard1-1 mongosh --port 27018 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard1-2 mongosh --port 27021 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard1-3 mongosh --port 27022 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


docker compose exec -T shard2-1 mongosh --port 27019 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


docker compose exec -T shard2-2 mongosh --port 27023 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

docker compose exec -T shard2-3 mongosh --port 27024 --quiet <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF


docker compose exec -T mongos_router mongosh --port 27020 --quiet <<EOF
db.adminCommand({ listShards: 1 });
EOF
