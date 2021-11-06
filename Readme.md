# Symfony 4.4 + MySQL 8 + NginX + APIDoc + Docker

A Docker-based installer and runtime for the [Symfony 4.4](https://symfony.com) web framework.

## Getting Started

1. [install Docker Compose](https://docs.docker.com/compose/install/)
2. Run `make build` to build fresh images
3. Run `make up` (the logs will be displayed in the current shell)

```
Creating symfony-docker_db_1    ... done
Creating symfony-docker_php_1   ... done
Creating symfony-docker_nginx_1 ... done
```

4. Run `make composer_install` to Install bundles and create vendor folder
5. Open `http://localhost/api/doc` in your favorite web browser
6. Run `make down` to stop the Docker containers.

## Credits

Created by [Milad Ghofrani](https://miladghofrani.com/).
