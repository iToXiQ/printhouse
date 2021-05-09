defmodule PeriBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :peri_bot,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {PeriBot, []},

      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:peri_db, in_umbrella: true},
      {:alchemy, "~> 0.7.0", hex: :discord_alchemy}
    ]
  end
end
