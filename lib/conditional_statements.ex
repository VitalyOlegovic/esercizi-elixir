require Integer

defmodule ConditionalStatements do
  def isWeird(x) when Integer.is_odd(x), do: "Weird"
  def isWeird(x) when x >= 2 and x <= 5, do: "Not Weird"
  def isWeird(x) when x >= 6 and x <= 20, do: "Weird"
  def isWeird(x) when x > 20, do: "NotWeird"

  def main() do
    number = IO.gets("") |> String.trim |> Integer.parse |> elem(0)
    result = ConditionalStatements.isWeird(number)
    IO.puts(result)
  end

end

