#!/bin/sh
mysqldump -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" "${MYSQL_DATABASE}" | gzip > /docker-entrypoint-initdb.d/"${MYSQL_DATABASE}".dump.gz

# バックアップファイルを何日分残しておくか（一ヶ月分）
period=31
# バックアップファイルを保存するディレクトリ
dirpath='/root/backup/mysql'

# ファイル名を定義(※ファイル名で日付がわかるようにしておきます)
filename=`date +%y%m%d`

# mysqldump実行（ファイルサイズ圧縮の為gzで圧縮しておきます。）
mysqldump  -u "${MYSQL_ROOT_USER}" -p"${MYSQL_ROOT_PASSWORD}" "${MYSQL_DATABASE}" | gzip > $dirpath/$filename.dump.gz

# 古いバックアップファイルを削除
oldfile=`date --date "$period days ago" +%y%m%d`
rm -f $dirpath/$oldfile.dump.gz
