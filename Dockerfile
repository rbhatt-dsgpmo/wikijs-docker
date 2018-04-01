FROM requarks/wiki:latest

WORKDIR /var/wiki

RUN mkdir keys
ADD config.yml config.yml

VOLUME /var/wiki/keys

EXPOSE 3000
ENTRYPOINT [ "node", "server" ]
