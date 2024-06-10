# serposcope

## 環境変数を変更

```
$ mv .env.sample .env
```

## ビルド

```
$ docker-compose build
```

## 起動

```
$ docker-compose up -d
```

## 停止

```
$ docker-compose down
```

## volume の削除

```
$ docker volume rm serposcope_mysql-data
```

## db bump

`db/init/serposcope.dump.gz`へ bump

```
$ ./scripts/db-bump.sh
```

## db import

`db/init/serposcope.dump.gz`を import

```
$ ./scripts/db-import.sh
```
