defmodule PeriApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :peri_api,
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
      extra_applications: [:logger],
      mod: {PeriApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 4.0"},
      {:plug, "~> 1.6"},
      {:cowboy, "~> 2.4"},
      {:plug_cowboy, "~> 2.0"},
      {:peri_db, in_umbrella: true}

    ]
  end
end
