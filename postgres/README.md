# PostgreSQL

This is a brief explanation on how to get a PostgreSQL database up and running with Docker. Click [here](https://hub.docker.com/_/postgres/) for the MySQL repository on Docker Hub.

## Getting Started

1. First, create a `pgdata` volume with docker by running `docker volume create pgdata`. This will be used as the mounted volume to the container, so that you don't lose your data everytime you `rm` the container and `run` another one.
2. `docker-compose up`
3. To interact with the database on the command line, run `docker-compose exec pgdb psql -U root blogapp`.
4. When you're done, `docker-compose down`.

**Note:** If there's a script you'd like to initially run when the container is created, mount another volume, like so:
- `/directory/of/script:/docker-entrypoint-initdb.d`

## Some Useful Information

- To create a Bash session in the container:
    - `docker-compose exec pgdb bash`
- To specify which database to use:
    - `psql -U root DBNAME`
- To prompt for a password:
    - `psql -U root -W`
- When in the PostgreSQL terminal (`psql`):
    - `\du` to see list of users.
    - `\l` to see list of databases.
    - `\dt` to see list of tables/relations.
    - `SELECT current_database()` to see which database you're using currently.
    - `\c DBNAME` to connect to another database. `\c` is short for `\connect`.
