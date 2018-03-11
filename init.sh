#!/usr/bin/env bash

docker build --tag lexusalex/scratch .

docker run --name scratch-db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=scratch -v /home/alex/docker/scratch/mysql-data:/var/lib/mysql -d bianjp/mariadb-alpine

docker run --name scratch --link scratch-db -p 80:80 -d -v "$PWD":/var/www/localhost/htdocs lexusalex/scratch:latest

