defmodule GroniaWeb.PageController do
  use GroniaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
