#!/bin/bash

while ! nc -z postgres 5432; do   
  echo "Esperando pelo PostgreSQL..."
  sleep 1
done


airflow db migrate

airflow scheduler &

exec airflow webserver
