defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{name: "Alice", email: "alice@example.com"},
      %{name: "Bob", email: "bob@example.com"},
      %{name: "Charlie", email: "charlie@example.com"}
    ]

    json(conn, %{users: users})
  end
end
