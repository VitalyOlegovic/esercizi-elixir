defmodule BinaryNumbers do

  def count_ones([char|string], current, max_so_far) do 
    if char==49 do
      count_ones(string, current+1, max(max_so_far,current+1)) 
    else
      count_ones(string, 0, max_so_far)
    end
  end

  def count_ones([], current, max_so_far) do max(current, max_so_far) end
end

number = IO.gets("") |> String.trim |> Integer.parse |> elem(0)
binary_rep = number |> Integer.to_string(2) |> String.to_charlist
BinaryNumbers.count_ones(binary_rep, 0, 0) |> IO.puts
