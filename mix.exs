defmodule Exleveldb.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exleveldb,
      version: "0.13.0",
      elixir: "~> 1.6",
      name: "Exleveldb",
      source_url: "https://github.com/skovsgaard/exleveldb",
      homepage_url: "https://hex.pm/packages/exleveldb",
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:eleveldb]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:eleveldb, "~> 2.2.20"},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.18", only: :dev},
      {:dialyxir, "~> 0.5", only: :dev}
    ]
  end

  defp description do
    """
    Exleveldb is a thin wrapper around Basho's eleveldb (github.com/basho/eleveldb).

    At the moment, Exleveldb exposes functions for all features of LevelDB as well as an Elixir stream interface to Eleveldb's iterators.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "test"],
      authors: ["Jonas Skovsgaard Christensen", "Oscar Felipe Toro"],
      licenses: ["Apache v2.0"],
      links: %{"Github" => "https://github.com/skovsgaard/exleveldb.git"},
      maintainers: ["Jonas Skovsgaard Christensen"]
    ]
  end
end
