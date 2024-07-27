IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'airflow')
BEGIN
    CREATE DATABASE airflow;
END
