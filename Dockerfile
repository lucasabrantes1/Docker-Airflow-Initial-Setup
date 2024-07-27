FROM python:3.9-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libpq-dev \
        netcat-openbsd \
        unixodbc \
        unixodbc-dev \
    && pip install --upgrade pip \
    && pip install apache-airflow[postgres,odbc] psycopg2-binary


COPY . /app

WORKDIR /app


CMD ["./scripts/start_airflow.sh"]
