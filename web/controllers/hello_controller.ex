defmodule PhoenixLearning.HelloController do
  use PhoenixLearning.Web, :controller
  def world(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end
end
