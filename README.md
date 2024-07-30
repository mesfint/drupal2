# Drupal Persistent Setup with Docker

This project provides a Docker-based setup for a persistent Drupal website with a pre-configured MariaDB database. 

## Getting Started

### Prerequisites

- Docker installed on your machine.
- Docker Compose installed on your machine.

### Using the Docker Image

1. **Create a `docker-compose.yml` file:**

    ```yaml
    version: '3.8'
    services:
      drupal:
        image: mesfinm/drupal-persistent:latest
        ports:
          - "8081:80"
        volumes:
          - './drupal-data:/var/www/html'
        depends_on:
          - 'mariadb'
      mariadb:
        image: 'mariadb'
        environment:
          MARIADB_USER: 'mesfint'
          MARIADB_DATABASE: 'drupal'
          MARIADB_ROOT_PASSWORD: 'root'
          MARIADB_PASSWORD: '123_open'
        volumes:
          - './mariadb-data:/var/lib/mysql'
      adminer:
        image: 'adminer'
        ports:
          - "8092:8080"
        depends_on:
          - 'mariadb'
    volumes:
      drupal-data:
      mariadb-data:
    ```

2. **Start the Services:**

    ```sh
    docker-compose up -d
    ```

   The Drupal site will be accessible at `http://localhost:8081` and Adminer at `http://localhost:8092`.

### Persistent Data

- **drupal-data/**: Stores Drupal site data.
- **mariadb-data/**: Stores MariaDB data.

These directories are mounted as volumes in the Docker containers to ensure data persists across container restarts.

### Cleaning Up

To stop and remove the containers, run:

```sh
docker-compose down

```

To remove the persistent data, delete the drupal-data and mariadb-data directories:

```sh
rm -rf drupal-data mariadb-data

```
