# Drupal Persistent Setup with Docker

This project provides a Docker-based setup for a persistent Drupal website with a pre-configured MariaDB database. It includes configuration files for Docker Compose to manage the services and uses Docker Hub to store the custom Drupal image.

## Project Structure

- **drupal-data/**: Directory containing Drupal site data.
- **mariadb-data/**: Directory containing MariaDB data.
- **docker-compose.yml**: Docker Compose configuration file.
- **Dockerfile**: Dockerfile to build the custom Drupal image.
- **.gitignore**: Git ignore file to exclude unnecessary files from version control.

## Getting Started

### Prerequisites

- Docker installed on your machine.
- Docker Compose installed on your machine.
- Git installed on your machine.

### Clone the Repository

```sh
git clone git@github.com:mesfint/drupal2.git
cd drupal2
