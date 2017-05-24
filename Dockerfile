FROM nginx

COPY /nginx/nginx.conf /etc/nginx/nginx.conf

COPY /dist /dist

COPY /index.html /

