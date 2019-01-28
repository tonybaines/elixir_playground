defmodule Fibonacci do

  def of(0), do: 0

  def of(i) do
    integers()
    |> Enum.take(i)
    |> Enum.reduce(&sum/2)
  end

  defp integers(), do: Stream.iterate(1, &(&1 + 1))
  defp sum(x, y), do: x + y
end
