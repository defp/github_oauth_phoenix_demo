use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :github_oauth_demo, GithubOauthDemo.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :github_oauth_demo, GithubOauthDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "github_oauth_demo_test",
  size: 1,
  max_overflow: false
