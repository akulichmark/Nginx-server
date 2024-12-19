FROM nginx:1.27.3-alpine

RUN apk update

RUN mkdir -p /var/www/html/image/ /var/www/html/music/
RUN rm /etc/nginx/conf.d/default.conf

COPY ./data/nginx/ /etc/nginx/conf.d/
COPY ./data/site/ /var/www/html/

COPY ./data/music/ /var/www/html/music/
COPY ./data/image/ /var/www/html/image/

RUN chmod a+rx  /var/www/html/music/good.mp3 /var/www/html/image/cow.webm
