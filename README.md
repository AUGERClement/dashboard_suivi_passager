# DashboardSuiviPassager

This project is a response to the following technical [test](https://github.com/Coderative/suivi-passager/).

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Docker :

To deploy the docker of the project, you need to pull the Docker-compose.yml, fetch the container and run the migrations for the database.

- docker-compose pull will fetch the images (can be ignored, as compose up will do it anyways)
- docker compose up will start them
- once inside the container, you can run migration with "bin/$appname exec release.migrate" (To edit once it is ready)

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
