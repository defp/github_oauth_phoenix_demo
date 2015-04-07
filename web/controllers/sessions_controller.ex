defmodule GithubOauthDemo.SessionsController do
  require Logger
  use GithubOauthDemo.Web, :controller

  plug :action

  @config %GithubOauth.Config{
    client_id: "8f824f0848ecd3e2d0a3",
    secret: "e7e148ca1fd1ce4c5d809dbf46e34186cfa689ba",
    callback_url: "http://localhost:4000/auth/github/callback"
  }

  def new(conn, _params) do
    redirect conn, external: GithubOauth.get_authorize_url(@config)
  end

  def create(conn, %{"code" => code}) do
    token = GithubOauth.get_token(@config, code)
    user_info = GithubOauth.raw_info(@config, token)

    Logger.info "user_info #{user_info.id}, #{user_info.login}"

    conn 
    |> put_session(:user_id, user_info.id)
    |> put_session(:username, user_info.login)
    |> redirect to: page_path(conn, :index)
  end
end
