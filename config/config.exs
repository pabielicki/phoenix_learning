# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_learning,
  ecto_repos: [PhoenixLearning.Repo]

# Configures the endpoint
config :phoenix_learning, PhoenixLearning.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H/VkQ+i1RkC2slxlQFLX3aEvncAAa9JJrhsTS/tqH5Wc83SW82yINSQ4fbmVbNzS",
  render_errors: [view: PhoenixLearning.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLearning.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
