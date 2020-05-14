#!/bin/sh

# Ensure environment variables are set
if [ -z "$REDIRECT_URL" ]; then
  REDIRECT_URL=#
fi

if [ -z "$REDIRECT_TIME" ]; then
  REDIRECT_TIME=10
fi

# Edit the index for environment variables
sed -i "s@REDIRECT_URL@$REDIRECT_URL@g" /usr/share/nginx/html/index.html
sed -i "s@REDIRECT_TIME@$REDIRECT_TIME@g" /usr/share/nginx/html/index.html

# Default Command
/usr/sbin/nginx -g 'daemon off;'
