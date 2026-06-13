FROM php:8.2-apache

# Change Apache port to 8080 for Fly.io
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html/

EXPOSE 8080

CMD ["apache2-foreground"]
