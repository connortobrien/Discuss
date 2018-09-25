defmodule Discuss.RedirectController do
  use Discuss.Web, :controller

  @send_to "/topics"

  def redirector(conn, _params) do
    redirect(conn, to: @send_to)
  end
end
