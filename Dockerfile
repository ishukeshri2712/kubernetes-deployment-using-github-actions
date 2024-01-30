FROM ubuntu:20.04

WORKDIR /app

RUN apt update && \
    apt install -y fortune-mod cowsay && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    ln -s /usr/games/fortune /usr/bin/fortune 

COPY wisecow.sh /app/wisecow.sh

EXPOSE 4499

ENTRYPOINT ["/bin/bash", "wisecow.sh"]
