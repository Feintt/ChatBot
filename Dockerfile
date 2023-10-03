# Usamos la imagen específica de Elixir
FROM elixir:latest

RUN apt-get update && apt-get install -y inotify-tools

# Instalamos hex y rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Creamos un directorio para la aplicación
WORKDIR /app

# Copiamos las dependencias
COPY mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

# Copiamos todo el código de la aplicación
COPY . .

# Compilamos la aplicación
RUN mix compile

# Si estás utilizando Phoenix, expones el puerto por defecto 4000
EXPOSE 4000

# El comando para iniciar la aplicación (ajusta según tus necesidades, por ejemplo, si no estás usando Phoenix)
CMD ["mix", "phx.server"]
