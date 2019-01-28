defmodule Fibonacci do
  @moduledoc false

  def of(0) do
    0 end

  def of(i) do
    i + of(i - 1)
  end
end
