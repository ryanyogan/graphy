defmodule Graphy.PageController do
  use Graphy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
