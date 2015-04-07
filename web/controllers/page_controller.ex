defmodule GithubOauthDemo.PageController do
  use GithubOauthDemo.Web, :controller

  plug :action

  def index(conn, _params) do
    username = get_session(conn, :username)
    user_id = get_session(conn, :user_id)
    render conn, "index.html", username: username, user_id: user_id
  end
end
