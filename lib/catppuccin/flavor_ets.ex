defmodule Catppuccin.FlavorETS do
  @moduledoc false
  @available_flavors [:latte, :frappe, :macchiato, :mocha]
  alias Catppuccin.{Flavor, Color}

  @doc false
  @spec start_link() :: :ok
  def start_link do
    :ets.new(:flavors, [:named_table, :protected])
    load_flavors()
    :ok
  end

  @doc false
  @spec flavor(atom()) :: Flavor.t() | nil
  def flavor(name) when name in @available_flavors do
    :ets.lookup(:flavors, name) |> List.keyfind(name, 0, [])
  end

  defp load_flavors() do
    {:ok, data} = File.read("lib/palette.json")
    {:ok, json} = Jason.decode(data)

    for {flavor_name, flavor_data} <- json do
      :ets.insert(:flavors, into_flavor({flavor_name, flavor_data}))
    end
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
