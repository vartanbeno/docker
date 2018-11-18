# MySQL

This is a brief explanation on how to get a MySQL database up and running with Docker. Click [here](https://hub.docker.com/_/mysql/) for the MySQL repository on Docker Hub.

## Getting Started

1. First, create a `data/` directory in this directory (if you don't, one is created for you). This will be used as the mounted volume to the container, so that you don't lose your data everytime you `rm` the container and `run` another one (for the `mysql-dev` service).
2. When a MySQL container is first spun up (i.e. the `data` folder is either empty or non-existent), all `.sh`, `sql`, and `sql.gz` files in `/docker-entrypoint-initdb.d` are executed.
    - The `mysql_init/` directory is mounted to `/docker-entrypoint-initdb.d`, and the `init.sql` script in it is run.
3. `docker-compose up`
4. To interact with the database on the command line, you can run either of the following:
    - `docker-compose run --rm client`
    - `docker-compose exec mysql-dev mysql -uvartanbeno -ppassword blogapp`
        - If you plan to run this, you don't really need the `client` service.
    - Same 2 commands for the `mysql-legacy` and `client-legacy` containers.
5. When you're done, `docker-compose down`.

## Acknowledgement

[This tutorial](https://www.youtube.com/watch?v=q5J3rtAGGNU) on YouTube helped me out a lot.
