#!/bin/bash

for file in `\find /docker-entrypoint-initdb.d/sql -name '*.sql'`; do
    mysql -u root -proot < "${file}"
done
