defmodule PhoenixLearning.HelloController do
  use PhoenixLearning.Web, :controller
  def world(conn, _params) do
    render conn, "world.html"
  end
end
