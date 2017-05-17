defmodule TapperPlug.Mixfile do
  use Mix.Project

  def project do
    [app: :tapper_plug,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name: "Tapper Plug",
     source_url: "https://github.com/Financial-Times/tapper_plug",
     description: "Plug integration for Tapper.",
     package: package(),
     docs: docs(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  def package do
    [
      maintainers: ["Ellis Pritchard"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/Financial-Times/tapper_plug"}
    ]
  end

  def docs do
    [main: "readme",
     extras: ["README.md"]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tapper, "~> 0.1"},
      {:plug, "~> 1.0"},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:ex_doc, "~> 0.15", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5.0", only: [:dev]},
      {:inch_ex, ">= 0.0.0", only: :docs}
    ]
  end
end
