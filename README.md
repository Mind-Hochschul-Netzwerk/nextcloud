# Nextcloud

## Launch

1. Have [Traefik](https://github.com/Mind-Hochschul-Netzwerk/traefik) and [Ldap](https://github.com/Mind-Hochschul-Netzwerk/ldap) running.
2. Rename remove .sample suffix from .sample files and adjust settings to Launch.
3. Run [ensurevolumes.sh](ensurevolumes.sh) as root to create the volume folder.
4. Run `make prod`

## Login

Go to [http://nexccloud.docker.localhost/](http://nexccloud.docker.localhost/) to open the Pretix Control interface.

    login: admin@localhost
    Password: admin
