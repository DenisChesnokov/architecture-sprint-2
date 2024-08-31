# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализируем шарды, роутер и конфигсервер. Заполняем mongodb данными

```shell
./scripts/mongo-sharding-init.sh 
```

Проверяем количество записей на каждом шарде

```shell
./scripts/mongo-sharding-check.sh 
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://localhost:8080/docs
