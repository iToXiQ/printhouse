defmodule PeriDb.Post do
  use Ecto.Schema

  schema "post" do
    field :username, :string
    field :content, :string
    field :image, :string
    field :read_by, {:array, :integer}, default: []
    timestamps()
  end

  def changeset(post, params \\ %{}) do
    post
    |> Ecto.Changeset.cast(params, [:username, :content, :image, :read_by])
    |> Ecto.Changeset.validate_required([:username])
  end

  def read_changeset(post, attrs) do
    post
    |> Ecto.Changeset.cast(attrs, [:read_by])
  end
end
