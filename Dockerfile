FROM ubuntu:16.04

MAINTAINER Dao Van Hung

RUN DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y ruby curl ruby-dev gcc make

RUN gem install sass

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install -y nodejs

RUN npm install -g yarn gulp webpack

RUN apt install -y nginx

CMD ["/usr/sbin/nginx", "-g", "deamon off;"]
