# Apache-2.4-with-PHP-7.4-cert-SSL
Example Dockerfile php7 apache2.4 with Self-signed certificate.


# Create Self-signed certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout myweb.key -out myweb.crt -subj '/CN=myweb.cl'
