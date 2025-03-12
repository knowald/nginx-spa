ARG NGINX_VERSION=alpine

FROM nginx:${NGINX_VERSION}

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/

# Example / placeholder, your SPA index goes here
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
