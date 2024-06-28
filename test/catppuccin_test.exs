defmodule CatppuccinTest do
  use ExUnit.Case, async: true
  doctest Catppuccin
  doctest Catppuccin.Color
  doctest Catppuccin.Flavor
  doctest Catppuccin.FlavorETS

  setup do
    {:latte, latte} = Catppuccin.latte()
    {:frappe, frappe} = Catppuccin.frappe()
    {:macchiato, macchiato} = Catppuccin.macchiato()
    {:mocha, mocha} = Catppuccin.mocha()

    latte_colors = latte |> Map.get(:colors)
    frappe_colors = frappe |> Map.get(:colors)
    macchiato_colors = macchiato |> Map.get(:colors)
    mocha_colors = mocha |> Map.get(:colors)

    {
      :ok,
      latte_colors: latte_colors,
      frappe_colors: frappe_colors,
      macchiato_colors: macchiato_colors,
      mocha_colors: mocha_colors
    }
  end

  test "Flavors have the same number of colors defined", %{
    latte_colors: latte_colors,
    frappe_colors: frappe_colors,
    macchiato_colors: macchiato_colors,
    mocha_colors: mocha_colors
  } do
    assert Kernel.map_size(latte_colors) == Kernel.map_size(frappe_colors)
    assert Kernel.map_size(latte_colors) == Kernel.map_size(macchiato_colors)
    assert Kernel.map_size(latte_colors) == Kernel.map_size(mocha_colors)
  end

  test "Each flavor has a unique set of colors", %{
    latte_colors: latte_colors,
    frappe_colors: frappe_colors,
    macchiato_colors: macchiato_colors,
    mocha_colors: mocha_colors
  } do
    assert latte_colors != frappe_colors
    assert latte_colors != macchiato_colors
    assert latte_colors != mocha_colors
  end
end
