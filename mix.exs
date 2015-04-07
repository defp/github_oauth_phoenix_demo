defmodule GithubOauthDemo.Mixfile do
  use Mix.Project

  def project do
    [app: :github_oauth_demo,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {GithubOauthDemo, []},
     applications: [:phoenix, :cowboy, :logger, :httpoison]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.10.0"},
     {:phoenix_ecto, "~> 0.1"},
     {:postgrex, ">= 0.0.0"},
     {:cowboy, "~> 1.0"},
     {:github_oauth, github: "lidashuang/github_oauth"}]
  end
end
