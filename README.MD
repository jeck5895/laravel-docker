### RUN composer utility container to install laravel app
- start docker app first then run
`docker-compose run --rm composer create-project laravel/laravel .` (. - means it will install on the src folder (bind mount configured in docker-compose))

### RUN all services except utility container (compose)
- run `docker-compose up -d server php mysql` 
- or `docker-compose up -d server` when adding `depends_on` in server compose instructions
-  or `docker-compose up -d --build server` to force rebuild of images especially when there are file changes
- -d : detach mode
- server, php, mysql are service names