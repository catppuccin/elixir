defmodule Catppuccin do
  @moduledoc """
  ⚗️ Soothing pastel theme for Elixir.
  """

  @flavors [:latte, :frappe, :macchiato]

  defmodule Flavor do
    @typedoc """
    Datastructure representing a flavor.
    """
    @type t :: %__MODULE__{
            name: String.t(),
            emoji: String.t(),
            order: integer(),
            dark: boolean(),
            colors: %{atom() => Color.t()}
          }
    defstruct [:name, :emoji, :order, :dark, :colors]
  end

  defmodule Color do
    @typedoc """
    Datastructure representing a color i hex, rgb, and hsl.
    """
    @type t :: %__MODULE__{
            name: String.t(),
            order: integer(),
            hex: String.t(),
            rgb: {integer(), integer(), integer()},
            hsl: {integer(), integer(), integer()},
            accent: boolean()
          }
    defstruct [:name, :order, :hex, :rgb, :hsl, :accent]
  end

  @doc """
  Returns the name of the flavor.
  """
  @spec flavor_name(Flavor.t()) :: String.t()
  def flavor_name(%Flavor{name: name}), do: name

  @doc """
  Returns the emoji of the flavor.
  """
  @spec emoji(Flavor.t()) :: String.t()
  def emoji(%Flavor{emoji: emoji}), do: emoji

  @doc """
  Returns the order of the flavor.
  """
  @spec flavor_order(Flavor.t()) :: integer()
  def flavor_order(%Flavor{order: order}), do: order

  @doc """
  Returns if the flavor is dark.
  """
  @spec dark(Flavor.t()) :: boolean()
  def dark(%Flavor{dark: dark}), do: dark

  @doc """
  Returns the name of the color.
  """
  @spec color_name(Color.t()) :: String.t()
  def color_name(%Color{name: name}), do: name

  @doc """
  Return the order of the color.
  """
  @spec color_order(Color.t()) :: integer()
  def color_order(%Color{order: order}), do: order

  @doc """
  Returns the hex code of the color.
  """
  @spec to_hex(Color.t()) :: String.t()
  def to_hex(%Color{hex: hex}), do: hex

  @doc """
  Returns the RGB values of the color.
  """
  @spec to_rgb(Color.t()) :: {integer(), integer(), integer()}
  def to_rgb(%Color{rgb: rgb}), do: rgb

  @doc """
  Returns the hsl values of the color.
  """
  @spec to_hsl(COlor.t()) :: {integer(), integer(), integer()}
  def to_hsl(%Color{hsl: hsl}), do: hsl

  @doc """
  Returns if the color is an accent color.
  """
  @spec accent(Color.t()) :: boolean()
  def accent(%Color{accent: accent}), do: accent

  @spec color_accessor(atom(), Flavor.t()) :: Color.t() | nil
  defp color_accessor(color_name, %Flavor{colors: colors}) do
    Map.get(colors, color_name)
  end

  @doc """
  Retuns the color data for the rosewater color for a given flavor.
  """
  @spec rosewater(Flavor.t()) :: Color.t() | nil
  def rosewater(flavor), do: color_accessor(:rosewater, flavor)

  @doc """
  Returns the color data for the flamingo color for a given flavor.
  """
  @spec flamingo(Flavor.t()) :: Color.t() | nil
  def flamingo(flavor), do: color_accessor(:flamingo, flavor)

  @doc """
  Returns the color data for the pink color for a given flavor.
  """
  @spec pink(Flavor.t()) :: Color.t() | nil
  def pink(flavor), do: color_accessor(:pink, flavor)

  @doc """
  Returns the color data for the mauve color for a given flavor.
  """
  @spec mauve(Flavor.t()) :: Color.t() | nil
  def mauve(flavor), do: color_accessor(:mauve, flavor)

  @doc """
  Returns the color data for the red color for a given flavor.
  """
  @spec red(Flavor.t()) :: Color.t() | nil
  def red(flavor), do: color_accessor(:red, flavor)

  @doc """
  Returns the color data for the maroon color for a given flavor.
  """
  @spec maroon(Flavor.t()) :: Color.t() | nil
  def maroon(flavor), do: color_accessor(:maroon, flavor)

  @doc """
  Returns the color data for the peach color for a given flavor.
  """
  @spec peach(Flavor.t()) :: Color.t() | nil
  def peach(flavor), do: color_accessor(:peach, flavor)

  @doc """
  Returns the color data for the yellow color for a given flavor.
  """
  @spec yellow(Flavor.t()) :: Color.t() | nil
  def yellow(flavor), do: color_accessor(:yellow, flavor)

  @doc """
  Returns the color data for the green color for a given flavor.
  """
  @spec green(Flavor.t()) :: Color.t() | nil
  def green(flavor), do: color_accessor(:green, flavor)

  @doc """
  Returns the color data for the teal color for a given flavor.
  """
  @spec teal(Flavor.t()) :: Color.t() | nil
  def teal(flavor), do: color_accessor(:teal, flavor)

  @doc """
  Returns the color data for the sky color for a given flavor.
  """
  @spec sky(Flavor.t()) :: Color.t() | nil
  def sky(flavor), do: color_accessor(:sky, flavor)

  @doc """
  Returns the color data for the sapphire color for a given flavor.
  """
  @spec sapphire(Flavor.t()) :: Color.t() | nil
  def sapphire(flavor), do: color_accessor(:sapphire, flavor)

  @doc """
  Returns the color data for the blue color for a given flavor.
  """
  @spec blue(Flavor.t()) :: Color.t() | nil
  def blue(flavor), do: color_accessor(:blue, flavor)

  @doc """
  Returns the color data for the lavender color for a given flavor.
  """
  @spec lavender(Flavor.t()) :: Color.t() | nil
  def lavender(flavor), do: color_accessor(:lavender, flavor)

  @doc """
  Returns the color data for the test color for a given flavor.
  """
  @spec text(Flavor.t()) :: Color.t() | nil
  def text(flavor), do: color_accessor(:text, flavor)

  @doc """
  Returns the color data for the subtext1 color for a given flavor.
  """
  @spec subtext1(Flavor.t()) :: Color.t() | nil
  def subtext1(flavor), do: color_accessor(:subtext1, flavor)

  @doc """
  Returns the color data for the subtext0 color for a given flavor.
  """
  @spec subtext0(Flavor.t()) :: Color.t() | nil
  def subtext0(flavor), do: color_accessor(:subtext0, flavor)

  @doc """
  Returns the color data for the overlay2 color for a given flavor.
  """
  @spec overlay2(Flavor.t()) :: Color.t() | nil
  def overlay2(flavor), do: color_accessor(:overlay2, flavor)

  @doc """
  Returns the color data for the overlay1 color for a given flavor.
  """
  @spec overlay1(Flavor.t()) :: Color.t() | nil
  def overlay1(flavor), do: color_accessor(:overlay1, flavor)

  @doc """
  Returns the color data for the overlay0 color for a given flavor.
  """
  @spec overlay0(Flavor.t()) :: Color.t() | nil
  def overlay0(flavor), do: color_accessor(:overlay0, flavor)

  @doc """
  Returns the color data for the surface2 color for a given flavor.
  """
  @spec surface2(Flavor.t()) :: Color.t() | nil
  def surface2(flavor), do: color_accessor(:surface2, flavor)

  @doc """
  Returns the color data for the surface1 color for a given flavor.
  """
  @spec surface1(Flavor.t()) :: Color.t() | nil
  def surface1(flavor), do: color_accessor(:surface1, flavor)

  @doc """
  Returns the color data for the surface0 color for a given flavor.
  """
  @spec surface0(Flavor.t()) :: Color.t() | nil
  def surface0(flavor), do: color_accessor(:surface0, flavor)

  @doc """
  Returns the color data for the base color for a given flavor.
  """
  @spec base(Flavor.t()) :: Color.t() | nil
  def base(flavor), do: color_accessor(:base, flavor)

  @doc """
  Returns the color data for the mantle color for a given flavor.
  """
  @spec mantle(Flavor.t()) :: Color.t() | nil
  def mantle(flavor), do: color_accessor(:mantle, flavor)

  @doc """
  Returns the color data for the crust color for a given flavor.
  """
  @spec crust(Flavor.t()) :: Color.t() | nil
  def crust(flavor), do: color_accessor(:crust, flavor)

  @doc """
  Retuns the flavor data for the latte flavor.
  """
  @spec latte() :: Flavor.t()
  def latte do
    flavor(:latte)
  end

  @doc """
  Returns the flavor data for the frappe flavor.
  """
  @spec frappe() :: Flavor.t()
  def frappe do
    flavor(:frappe)
  end

  @doc """
  Returns the flavor data for the macchiato flavor.
  """
  @spec macchiato() :: Flavor.t()
  def macchiato do
    flavor(:macchiato)
  end

  @spec flavor(atom()) :: Flavor.t() | nil
  defp flavor(name) when name in @flavors do
    {:ok, data} = File.read("lib/palette.json")
    {:ok, json} = Jason.decode(data)

    json
    |> Enum.into(%{}, &into_flavor/1)
    |> Map.get(name)
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
