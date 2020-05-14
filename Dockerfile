FROM nginx:1.17-alpine

# Upgrade packages
RUN apk -U upgrade

# Copy content
COPY docroot /usr/share/nginx/html

# Change Port to 8080
RUN sed -i '/^.*listen/s/80;/8080;/' /etc/nginx/conf.d/default.conf

# Group for temporary user data
#RUN addgroup -g 2000 www-data
#RUN addgroup nginx www-data

# Start up script
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 500 /docker-entrypoint.sh

# Entry and Port
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 8080
