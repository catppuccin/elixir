defmodule Catppuccin.FlavorAgent do
  @flavors [:latte, :frappe, :macchiato]
  alias Catppuccin.{Flavor, Color}

  def start_link do
    Agent.start_link(fn -> load_flavors() end, name: :flavors)
  end

  @spec flavor(atom()) :: Flavor.t() | nil
  def flavor(name) when name in @flavors do
    Map.get(Agent.get(:flavors, & &1), name)
  end

  def load_flavors() do
    {:ok, data} = File.read("lib/palette.json")
    {:ok, json} = Jason.decode(data)

    Enum.into(json, %{}, &into_flavor/1)
  end

  @spec into_flavor({String.t(), map()}) :: {atom(), Flavor.t()}
  defp into_flavor({flavor_name, flavor_data}) do
    {
      String.to_atom(flavor_name),
      %Flavor{
        name: flavor_data["name"],
        emoji: flavor_data["emoji"],
        order: flavor_data["order"],
        dark: flavor_data["dark"],
        colors:
          flavor_data["colors"]
          |> Enum.map(&map_to_color/1)
          |> Enum.into(%{})
      }
    }
  end

  @spec map_to_color({String.t(), map()}) :: {atom(), Color.t()}
  defp map_to_color({color_name, color_data}) do
    {
      String.to_atom(color_name),
      %Color{
        name: color_data["name"],
        order: color_data["order"],
        hex: color_data["hex"],
        rgb: {color_data["rgb"]["r"], color_data["rgb"]["g"], color_data["rgb"]["b"]},
        hsl: {color_data["hsl"]["h"], color_data["hsl"]["s"], color_data["hsl"]["l"]},
        accent: color_data["accent"]
      }
    }
  end
end
