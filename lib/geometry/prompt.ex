defmodule Geometry.Prompt do
  def read_integer(prompt) do
    IO.gets(prompt)
    |> String.trim()
    |> String.to_integer()
  end
end
