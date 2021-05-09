defmodule PeriDb.Repo.Migrations.CreatePeriPost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :username, :string
      add :content, :string
      add :image, :string
      add :read_by, {:array, :integer}
      timestamps()
    end
  end
end
