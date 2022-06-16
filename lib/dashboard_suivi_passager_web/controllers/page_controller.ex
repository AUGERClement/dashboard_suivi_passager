defmodule DashboardSuiviPassagerWeb.PageController do
  use DashboardSuiviPassagerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
