defmodule ToyAppWeb.PageController do
  use ToyAppWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
 
  def index(conn, _params) do
    users=Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
