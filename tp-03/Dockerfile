FROM ubuntu AS carole

RUN apt-get update -y

RUN apt-get install apache2 -y

CMD service apache2 start && sleep infinity

FROM alpine AS leger

COPY --from=carole . /app
