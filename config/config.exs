# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphy,
  ecto_repos: [Graphy.Repo]

# Configures the endpoint
config :graphy, Graphy.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2ClulXwRlvb2X9VAsW3xj8Jz7XUtDDJJcnlIY8Cbve3FLFw0w7rt4LEqBGfVXK4A",
  render_errors: [view: Graphy.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Graphy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
