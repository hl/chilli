defmodule ChilliWeb.BlogController do
  use ChilliWeb, :controller

  alias Chilli.Blog

  def index(conn, _params) do
    render(conn, :index, posts: Blog.all_posts())
  end

  def show(conn, _params) do
    render(conn, :show, post: Blog.get_post_by_id!(conn.params["id"]))
  end
end
