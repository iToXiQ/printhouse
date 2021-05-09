defmodule PeriDb.Posts do
  import Ecto.Query, warn: false
  alias PeriDb.Repo
  alias PeriDb.Post

  def get_unread_post(id) do
    posts = get_latest()|>Enum.filter(fn post -> id not in post.read_by end)

    case posts do
      [] -> %{message: "all messages have been parsed"}
      _ -> posts
            |>List.first()
            |>update_sanitize(id)
    end
  end
  def get_latest() do
    Repo.all(Post, limit: 20)
  end

  def create_post(username,content,image) do
    attrs = %{
      username: username,
      content: content,
      image: image
    }

    PeriDb.Post.changeset(%PeriDb.Post{}, attrs)
    |> Repo.insert()
  end

  def update_sanitize(post, id) do
    Post.read_changeset(post, %{read_by: [id | post.read_by]})
    |> Repo.update()
    %{username: post.username, content: post.content, image: post.image}
  end
end
