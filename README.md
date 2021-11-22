# Apache-2.4-with-PHP-7.4-cert-SSL
Example Dockerfile php7 apache2.4 with Self-signed certificate.


# Create Self-signed certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout **myweb.key** -out **myweb.crt** -subj '/CN=**myweb.cl**'

# Build Image
docker build -t **php7-apache:1.0** .
-t imageName:tag

# RUN container
docker run -d -p443:443 --name **containerName** **imageName**
docker run -d -p443:443 --name **test1** **php7-apache:1.0**
