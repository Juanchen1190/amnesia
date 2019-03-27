defmodule Amnesia.Mixfile do
  use Mix.Project

  def project do
    [ app: :amnesia,
      version: "0.2.7",
      deps: deps(),
      package: package(),
      description: "mnesia wrapper for Elixir" ]
  end

  defp package do
    [ maintainers: ["meh"],
      licenses: ["WTFPL"],
      links: %{"GitHub" => "https://github.com/meh/amnesia"} ]
  end

  def application do
    [ applications: [:mnesia, :logger, :exquisite] ]
  end

  defp deps do
    [ { :exquisite, git: "https://github.com/meh/exquisite", ref: "ff8446c9aab2dfcfcc1796849575fe86c708b6ba"},
      { :ex_doc, "~> 0.15", only: [:dev] } ]
  end
end
