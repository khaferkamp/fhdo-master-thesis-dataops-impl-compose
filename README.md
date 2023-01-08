# Docker compose based prototype

This repository contaims the definition of the docker compose based 'all-in-ine (AIO)' prototype.
The infrastrcuture is provisioned by terraform in DigitalOcean and the different services are described in [docker-compose.yml](./services/docker-compose.yml).

This prototype uses a single linux host and provides several software packages including
* MinIO
* Apache Spark
* Apache Iceberg
* dbt core
* dagster
* Jupyter Notebooks
* Trino
* Apache Superset
* Datahub

