# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gronia,
  ecto_repos: [Gronia.Repo]

# Configures the endpoint
config :gronia, GroniaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kvFfYxdfzou9rhwPpHtx7H2OhqQT6jzaqmKtzwMiABrbGjjTF2dmnNpOb3ymVH5y",
  render_errors: [view: GroniaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Gronia.PubSub,
  live_view: [signing_salt: "g6QUy51W"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
