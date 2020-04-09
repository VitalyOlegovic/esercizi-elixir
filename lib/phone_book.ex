defmodule PhoneBook do

  def ask_and_search(:eof, _dictionary) do
    nil
  end

  def ask_and_search("", _dictionary) do
    nil
  end

  def ask_and_search(name, dictionary) when name != "" do
    result = Map.fetch(dictionary,name)
    to_print = if result == :error do "Not found" else name<>"="<>elem(result,1) end
    IO.puts(to_print)
    input = IO.gets("")
    if input != :eof do
      input |> String.trim |> ask_and_search(dictionary)
    end
  end

  def add_to_dictionary(dictionary, remaining) when remaining >= 1 do
    [key,value] = IO.gets("") |> String.trim |> String.split(" ")
    new_dictionary = Map.put(dictionary, key, value)
    add_to_dictionary(new_dictionary, remaining - 1)
  end

  def add_to_dictionary(dictionary, 0) do
    dictionary
  end

  def main do
    dictionary_size = IO.gets("") |> String.trim |> Integer.parse |> elem(0)
    dict = PhoneBook.add_to_dictionary(%{}, dictionary_size)
    new_name = IO.gets("") |> String.trim
    PhoneBook.ask_and_search(new_name, dict)
  end

end

