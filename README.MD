### RUN composer utility container to install laravel app
- start docker app first then run
`docker-compose run composer create-project laravel/laravel .` (. - means it will install on the src folder (bind mount configured in docker-compose))