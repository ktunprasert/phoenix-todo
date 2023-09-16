defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def hello(conn, %{"name" => name}) do
    text(conn, "From name: #{name}")
    # json(conn, %{message: "Hello #{name}"})
  end
end
