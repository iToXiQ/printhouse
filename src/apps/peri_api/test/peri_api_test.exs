defmodule PeriApiTest do
  use ExUnit.Case
  doctest PeriApi

  test "greets the world" do
    assert PeriApi.hello() == :world
  end
end
