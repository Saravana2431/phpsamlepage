FROM php:7.4-apache

# Set environment variables for RDS connection
ENV DB_HOST php-database.cbftugwdmk1k.ca-central-1.rds.amazonaws.com
ENV DB_PORT 3306
ENV DB_USER admin
ENV DB_PASS admin123
ENV DB_NAME SARAVANA

# Enable Apache modules and configure PHP
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli pdo pdo_mysql


# Copy your PHP application files to the container
COPY . /var/www/html/

# Expose port 80
EXPOSE 80
