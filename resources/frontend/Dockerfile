FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY dist/admin /usr/share/nginx/html/admin
COPY dist/web /usr/share/nginx/html/web

EXPOSE 80 81
