defmodule OrionWeb.PageLiveTest do
  use OrionWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Orion"
    assert render(page_live) =~ "Orion"
  end
end
