defmodule BarrelEx.Mixfile do
  use Mix.Project

  def project do
    [app: :barrel_ex,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:barrel]]
  end

  defp deps do
    [
      {:barrel, git: "https://github.com/barrel-db/barrel-platform", branch: "mix"}
    ]
  end
end
