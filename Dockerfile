FROM nginx
RUN apt-get update
RUN apt-get upgrade
RUN apt-get -y install curl dnsutils wget
wget https://raw.githubusercontent.com/imaidev/nginx-proxy/master/nginx.conf
COPY nginx.conf /etc/nginx/
