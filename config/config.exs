# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_client,
  ecto_repos: [PhoenixClient.Repo]

# Configures the endpoint
config :phoenix_client, PhoenixClientWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4kg9vzzEmcMRfiBA/XcP4VWYV9ktW04AWjCGd6ItnxszP4e571+69j2+FzjBv2w2",
  render_errors: [view: PhoenixClientWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixClient.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
