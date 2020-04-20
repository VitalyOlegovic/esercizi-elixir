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
    assert LetsReview.lets_review('Ciao')  == "Ca io"
    #assert EserciziElixir.lets_review('Ciao')  == {'Ca','io'}
  end

  test "todo list" do
    assert TodoList.new |> TodoList.add_entry(Date.utc_today,"Fare la spesa")  == %{Date.utc_today => ["Fare la spesa"]}
  end

  test "fraction" do
    assert Fraction.new(1,2) == %Fraction{a: 1, b: 2}
    assert Fraction.new(1,2) |> Fraction.value == 0.5
  end
end
