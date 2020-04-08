defmodule RepeatedString do

  def count_repetitions(string_to_repeat, number_of_chars) do
    string_length = String.length(string_to_repeat)
    full_repetitions = Integer.floor_div(number_of_chars, string_length)
    as_in_string = string_to_repeat |> String.graphemes |> Enum.count(fn x -> x == "a" end)
    remainder = rem(number_of_chars,string_length)
    substring = if remainder != 0 do String.slice(string_to_repeat, 0..remainder-1) else "" end
    as_in_substring = substring |> String.graphemes |> Enum.count(fn x -> x == "a" end)
    result = (as_in_string * full_repetitions) + as_in_substring
    result
  end

  def main() do
    string_to_repeat = IO.gets("") |> String.trim
    number_of_chars = IO.gets("") |> String.trim |> Integer.parse |> elem(0)
    as = RepeatedString.count_repetitions(string_to_repeat, number_of_chars)
    IO.puts(as)
  end

end 

