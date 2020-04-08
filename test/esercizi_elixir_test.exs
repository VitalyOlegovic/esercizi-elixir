defmodule EserciziElixirTest do
  use ExUnit.Case
  doctest EserciziElixir

  test "greets the world" do
    assert EserciziElixir.hello() == :world
  end

  test "conditional statements" do
    assert ConditionalStatements.isWeird(4) == "Not Weird"
  end

  test "let's review" do
    assert EserciziElixir.lets_review('Ciao')  == "Ca io"
    #assert EserciziElixir.lets_review('Ciao')  == {'Ca','io'}
  end
end
