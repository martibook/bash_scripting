#! /bin/bash


DATABASE_HOST="x"
DATABASE_PORT="x"
DATABASE_USER="x"

DIR="x"

REMOTE_HOST="x"
REMOTE_USER="x"
REMOTE_DIR="x"

read -p 'database: ' DATABASE
read -p 'sql statement: ' SQL_STAT
read -p 'filename: ' FILE_NAME

COPY_STAT="COPY ($SQL_STAT) TO STDOUT"

echo ""
echo "SAVE    $SQL_STAT   TO   $FILE_NAME"
psql -h ${DATABASE_HOST} -p ${DATABASE_PORT} -d ${DATABASE} -U ${DATABASE_USER} -c "$COPY_STAT" > ~/${DIR}${FILE_NAME}

echo ""
echo "UPLOAD    $FILE_NAME   TO   ${REMOTE_HOST}:${REMOTE_DIR}"
scp ~/${DIR}${FILE_NAME} ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}


