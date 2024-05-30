defmodule CatppuccinTest do
  use ExUnit.Case
  doctest Catppuccin

  test "greets the world" do
    assert Catppuccin.hello() == :world
  end
end
