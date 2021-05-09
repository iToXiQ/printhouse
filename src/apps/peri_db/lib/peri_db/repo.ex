defmodule PeriDb.Repo do
  use Ecto.Repo,
    otp_app: :peri_db,
    adapter: Ecto.Adapters.Postgres
end
