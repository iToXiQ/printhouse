defmodule PeriBotTest do
  use ExUnit.Case
  doctest PeriBot

  test "greets the world" do
    assert PeriBot.hello() == :world
  end
end
