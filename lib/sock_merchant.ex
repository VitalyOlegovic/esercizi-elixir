defmodule SockMerchant do

  def count_pairs(colors) do
    splitted_colors = String.split(colors," ")
    color_groups = Enum.group_by(splitted_colors, fn x -> x end, fn _ -> 1 end)
    color_frequencies = Enum.map(color_groups, fn {x,y} -> {x,length(y)} end)
    pair_numbers = Enum.map(color_frequencies, fn {_,v}->div(v,2) end)
    pairs = List.foldr(pair_numbers,0,fn a,b->a+b end)
    pairs
  end

  def main() do
    _ = IO.getn("")
    _ = IO.gets("")
    colors = IO.gets("")
    pairs = SockMerchant.count_pairs(colors)
    IO.puts(pairs)
  end

end 

