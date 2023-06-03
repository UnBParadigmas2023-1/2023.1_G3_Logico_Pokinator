FROM swipl

WORKDIR /app

COPY app/ .

RUN apt-get update

RUN apt-get install -y curl

VOLUME /app

