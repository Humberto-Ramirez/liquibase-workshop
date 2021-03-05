#!/usr/bin/env bash
./gradlew workshop-database:startContainer

export STATUS=0
i=0
host="workshop-db"
echo "waiting for MySQL!"
while [[ ${STATUS} -eq 0 ]] && [[ ${i} -lt 60 ]]; do
       sleep 1
       i=$((i+1))
       STATUS=$(docker logs $host 2>&1 | grep "MySQL init process done. Ready for start up" | wc -c)
done
echo "MySQL: Ready for Connections!"
