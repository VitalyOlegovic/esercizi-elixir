defmodule LetsReview do

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

  def read_line do
    IO.gets("") |> String.trim |> String.to_charlist |> lets_review |> IO.puts
  end

  def main do
    line_number = IO.gets("") |> String.trim |> Integer.parse |> elem(0)
    1..line_number |> Enum.each(fn _ -> LetsReview.read_line end)
  end

end

