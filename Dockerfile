FROM nginx:latest


COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf


COPY ./static /usr/share/nginx/html/static


COPY ./nginx/get-certificate.sh /usr/local/bin/get-certificate.sh


RUN chmod +x /usr/local/bin/get-certificate.sh


RUN /usr/local/bin/get-certificate.sh


EXPOSE 80 443


CMD ["nginx", "-g", "daemon off;"]


