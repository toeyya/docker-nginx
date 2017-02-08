FROM nginx

RUN rm /etc/nginx/conf.d/default.conf 


CMD ["nginx", "-g", "daemon off;"]

EXPOSE 7000

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/conf.d/ /etc/nginx/conf.d/
COPY conf/default.html /usr/share/nginx/html/default.html

