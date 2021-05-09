FROM elixir:1.11.4

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    mix local.hex --force && \
    mix local.rebar --force

RUN mkdir /app
COPY ./src /app
WORKDIR /app

CMD ["./entrypoint.sh"]