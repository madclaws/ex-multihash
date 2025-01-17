defmodule Multihash.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_multihash,
     version: "2.0.0",
     elixir: "~> 1.2",
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  def description do
    "This library is the Multihash implementation in Elixir"
  end

  def package do
    [
      licenses: ["MIT License"]
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
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
      {:inch_ex, "~> 0.5", only: :docs},
      {:ex_doc, "~> 0.30.9", only: :dev}
    ]
  end
end
