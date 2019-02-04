from ubuntu:latest

RUN apt-get update&& apt-get install -y wget

RUN wget -O toxiproxy-2.1.4.deb https://github.com/Shopify/toxiproxy/releases/download/v2.1.4/toxiproxy_2.1.4_amd64.deb && dpkg -i toxiproxy-2.1.4.deb

ENV HOST="localhost"
ENV PORT="8474"

