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

  def inner_lets_review([a|[b|c]], odd, even) do
    inner_lets_review(c, [a|odd], [b|even])
  end

  def inner_lets_review([a|_], odd, even) do
    {[a|odd],even}
  end

  def inner_lets_review([], odd, even) do
    {odd,even}
  end

  def lets_review(string) do
    {odd,even} = inner_lets_review(string,[],[])
    o=odd |> Enum.reverse |> List.to_string
    e=even |> Enum.reverse |> List.to_string
    o <> " " <> e
  end

  def hello do
    :world
  end
end
