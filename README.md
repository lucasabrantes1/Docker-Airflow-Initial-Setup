# How to execute
## Starting Docker Containers
1. BEES-Data-Engineering-Breweries-Case
2. docker-compose build
3. docker-compose up -d
4. docker ps (to ensure thath container is up)


## Stopping Docker Containers
1. docker-compose down
2. docker-compose down --rmi all --volumes
3. docker ps -a (to ensure thath everythin is closed)


## Command to create a user in aiflow in docker
1. First, list the containers with their IDs that are currently running:
docker ps

2. Execute the command below, substituting <airflow-container-id> with the ID listed from the docker ps command and Replace <FirstName>, <LastName>, and admin@example.com with your desired values:

docker exec -it <airflow-container-id> airflow users create \
    --username admin \
    --firstname <FirstName> \
    --lastname <LastName> \
    --role Admin \
    --email admin@example.com

