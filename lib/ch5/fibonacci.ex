defmodule Fibonacci do

  def of(0), do: 0

  def of(i) do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.take(i)
    |> Enum.reduce(&(&1+ &2))
  end
end
