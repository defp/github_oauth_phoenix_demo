use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :github_oauth_demo, GithubOauthDemo.Endpoint,
  secret_key_base: "acfOhQo6gl81JibYSfHGjp/GhA8kkY9VajfskSwPL6X3OF70TOamF6k9oCuiu7Ua"

# Configure your database
config :github_oauth_demo, GithubOauthDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "github_oauth_demo_prod"
