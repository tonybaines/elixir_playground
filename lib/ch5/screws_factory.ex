defmodule ScrewsFactory do
  #
  #  ScrewsFactory.run(Enum.take(Stream.cycle(["-"]), 100))
  #

  def run(pieces) do
    pieces
    |> Stream.chunk(50)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(100)
    |> Stream.flat_map(&add_head/1)
    |> Stream.chunk(30)
    |> Stream.flat_map(&pack/1)
    |> Enum.each(&output/1)
  end
  defp add_thread(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end
  defp add_head(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end
  defp pack(pieces) do
    Process.sleep(70)
    Enum.map(pieces, &("|" <> &1 <> "|"))
  end
  defp output(screw) do
    IO.inspect(screw)
  end
end