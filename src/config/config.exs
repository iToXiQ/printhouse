import Config

config :peri_db, PeriDb.Repo,
  username: System.get_env("PGUSER"),
  password: System.get_env("PGPASSWORD"),
  database: System.get_env("PGDATABASE"),
  hostname: System.get_env("PGHOST"),
  port:     System.get_env("PGPORT")

config :peri_db, ecto_repos: [PeriDb.Repo]

config :peri_bot,
  token:  System.get_env("DISCORDTOKEN"),
  channel_id: System.get_env("DISCORDCHANNEL")

config :peri_api,
  api_pass: System.get_env("APIPASS")
