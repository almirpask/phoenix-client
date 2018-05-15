defmodule PhoenixClientWeb.PageController do
  use PhoenixClientWeb, :controller

  def index(conn, _params) do
    :timer.sleep(1000)
    render conn, "index.html"
  end
end
