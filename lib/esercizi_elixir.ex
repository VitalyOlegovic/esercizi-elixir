require Integer

defmodule EserciziElixir do
  @moduledoc """
  Documentation for `EserciziElixir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EserciziElixir.hello()
      :world

  """

  def loops(n) do
    Enum.map(1..10, fn y -> "#{n} x #{y} = #{y*n}" end) |> Enum.each(fn x -> IO.puts(x) end)
  end

  def hello do
    :world
  end
end
