FROM elixir:1.7-alpine

COPY . /project
WORKDIR /project
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix compile

EXPOSE 5000
CMD mix phx.server
