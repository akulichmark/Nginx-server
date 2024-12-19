FROM nginx:1.27.3-alpine

RUN apk update

RUN mkdir /etc/nginx/image/ /etc/nginx/music/
WORKDIR /usr/src/
COPY default.conf /etc/nginx/conf.d/
COPY index.html 404.html /usr/share/nginx/html/
COPY chillers.jpg /usr/share/nginx/html/image/
COPY good.mp3 /usr/share/nginx/html/music/

RUN chmod a+rx /usr/share/nginx/html/image/chillers.jpg /usr/share/nginx/html/music/good.mp3
