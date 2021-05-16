# Nextcloud

## Launch

1. Have [Traefik](https://github.com/Mind-Hochschul-Netzwerk/traefik) and [Ldap](https://github.com/Mind-Hochschul-Netzwerk/ldap) running.
2. Rename remove .sample suffix from .sample files and adjust settings to Launch.
3. Run [ensurevolumes.sh](ensurevolumes.sh) as root to create the volume folder.
4. Run `make bootstrap` to lounch without the Notify Push Backend
5. Login

## Notify Push backend

1. Install the `client_push` app in nextcloud
2. `docker-compose exec --user www-data app php occ notify_push:setup https://cloud.yourdomain.com/push`
3. `make prod`

## Login

Go to [http://nexccloud.docker.localhost/](http://nexccloud.docker.localhost/) to open the Pretix Control interface.
    # What you set in .env
    login: admin
    Password: admin
