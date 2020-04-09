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

  def parse_and_reverse(input_string) do
    input_string |> String.split(" ") |> Enum.reverse |> Enum.intersperse(" ")
  end

  def factorial(number) when number <= 1 do 1 end
  def factorial(number) when number > 1 do number * factorial(number-1) end

  def hello do
    :world
  end
end
