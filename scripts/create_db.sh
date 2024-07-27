#!/bin/bash
# Aguarda o SQL Server iniciar
sleep 30s

# Conecta ao SQL Server e cria o banco de dados "airflow"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -Q "CREATE DATABASE airflow;"
