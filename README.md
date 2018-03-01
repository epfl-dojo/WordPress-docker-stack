# Docker WordPress MariaDB PHPMyAdmin
A simple docker-compose.yml for WordPress development.
> This is not secure. **Don't use it on a production environment**

## Installation

Install docker:
* Docker installation [for Mac](https://docs.docker.com/docker-for-mac/install/)
* Docker installation [for Windows](https://docs.docker.com/docker-for-windows/install/)
* Docker installation [for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

Install docker-compose: [multi-platform documentation](https://docs.docker.com/compose/install/#install-compose)

## Launch the stack

Create your project directory:
```
git clone git@github.com:loichu/docker-wp-mariadb-phpmyadmin.git your-project-name
cd your-project-name
```
Run docker:
```
docker-compose up -d
```
* `-d` means detach, the process will be detach of the tty (terminal)

## Connection

Find your WordPress website at http://localhost:8080.

Find your PHPMyAdmin at http://localhost:8181.

## Credentials

DB root password: `secret`

DB WordPress user: `wordpress`

DB WordPress password: `wordpress`

Connect to PHPMyAdmin:
* Server: `db`
* User: `root`
* Password: `secret`

## Directory structure

* db: Persistent volume to store MariaDB database.
* wp: Persistent volume to store WordPress files.

## Other commands

Stop the stack:
```
docker-compose down
```
Start the stack and see logs in terminal:
```
docker-compose up
```
