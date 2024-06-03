defmodule Catppuccin.Color do
  @moduledoc """
  Module for handling color data.
  """

  alias Catppuccin.Flavor

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

  alias __MODULE__

  @doc """
  Returns the name of the color.

  ## Examples

      iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.name
      "Rosewater"

  """
  @spec name(Color.t()) :: String.t()
  def name(%Color{name: name}), do: name

  @doc """
  Return the order of the color.

  ## Examples

      iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.order
      0

  """
  @spec order(Color.t()) :: integer()
  def order(%Color{order: order}), do: order

  @doc """
  Returns the hex code of the color.

  ## Examples

      iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_hex
      "#f2d5cf"

  """
  @spec to_hex(Color.t()) :: String.t()
  def to_hex(%Color{hex: hex}), do: hex

  @doc """
  Returns the RGB values of the color.

  ## Examples

       iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_rgb
       {242, 213, 207}

  """
  @spec to_rgb(Color.t()) :: {integer(), integer(), integer()}
  def to_rgb(%Color{rgb: rgb}), do: rgb

  @doc """
  Returns the hsl values of the color.

  ## Example

      iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_hsl
      {10.2857142857143, 0.5737704918032784, 0.8803921568627451}

  """
  @spec to_hsl(Color.t()) :: {integer(), integer(), integer()}
  def to_hsl(%Color{hsl: hsl}), do: hsl

  @doc """
  Returns if the color is an accent color.

  ## Examples

      iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.accent
      true

  """
  @spec accent(Color.t()) :: boolean()
  def accent(%Color{accent: accent}), do: accent

  @spec color_accessor(atom(), {atom(), Flavor.t()}) :: Color.t() | nil
  defp color_accessor(color_name, {_flavor, %Flavor{colors: colors}}) do
    Map.get(colors, color_name)
  end

  @doc """
  Retuns the color data for the rosewater color for a given flavor.

  ## Examples

      iex> Catppuccin.latte |> Catppuccin.Color.rosewater
      %Catppuccin.Color{
          name: "Rosewater",
          order: 0,
          hex: "#dc8a78",
          rgb: {220, 138, 120},
          hsl: {10.799999999999995, 0.5882352941176472, 0.6666666666666667},
          accent: true
      }

  """
  @spec rosewater({atom(), Flavor.t()}) :: Color.t() | nil
  def rosewater(flavor), do: color_accessor(:rosewater, flavor)

  @doc """
  Returns the color data for the flamingo color for a given flavor.
  """
  @spec flamingo({atom(), Flavor.t()}) :: Color.t() | nil
  def flamingo(flavor), do: color_accessor(:flamingo, flavor)

  @doc """
  Returns the color data for the pink color for a given flavor.
  """
  @spec pink({atom(), Flavor.t()}) :: Color.t() | nil
  def pink(flavor), do: color_accessor(:pink, flavor)

  @doc """
  Returns the color data for the mauve color for a given flavor.
  """
  @spec mauve({atom(), Flavor.t()}) :: Color.t() | nil
  def mauve(flavor), do: color_accessor(:mauve, flavor)

  @doc """
  Returns the color data for the red color for a given flavor.
  """
  @spec red({atom(), Flavor.t()}) :: Color.t() | nil
  def red(flavor), do: color_accessor(:red, flavor)

  @doc """
  Returns the color data for the maroon color for a given flavor.
  """
  @spec maroon({atom(), Flavor.t()}) :: Color.t() | nil
  def maroon(flavor), do: color_accessor(:maroon, flavor)

  @doc """
  Returns the color data for the peach color for a given flavor.
  """
  @spec peach({atom(), Flavor.t()}) :: Color.t() | nil
  def peach(flavor), do: color_accessor(:peach, flavor)

  @doc """
  Returns the color data for the yellow color for a given flavor.
  """
  @spec yellow({atom(), Flavor.t()}) :: Color.t() | nil
  def yellow(flavor), do: color_accessor(:yellow, flavor)

  @doc """
  Returns the color data for the green color for a given flavor.
  """
  @spec green({atom(), Flavor.t()}) :: Color.t() | nil
  def green(flavor), do: color_accessor(:green, flavor)

  @doc """
  Returns the color data for the teal color for a given flavor.
  """
  @spec teal({atom(), Flavor.t()}) :: Color.t() | nil
  def teal(flavor), do: color_accessor(:teal, flavor)

  @doc """
  Returns the color data for the sky color for a given flavor.
  """
  @spec sky({atom(), Flavor.t()}) :: Color.t() | nil
  def sky(flavor), do: color_accessor(:sky, flavor)

  @doc """
  Returns the color data for the sapphire color for a given flavor.
  """
  @spec sapphire({atom(), Flavor.t()}) :: Color.t() | nil
  def sapphire(flavor), do: color_accessor(:sapphire, flavor)

  @doc """
  Returns the color data for the blue color for a given flavor.
  """
  @spec blue({atom(), Flavor.t()}) :: Color.t() | nil
  def blue(flavor), do: color_accessor(:blue, flavor)

  @doc """
  Returns the color data for the lavender color for a given flavor.
  """
  @spec lavender({atom(), Flavor.t()}) :: Color.t() | nil
  def lavender(flavor), do: color_accessor(:lavender, flavor)

  @doc """
  Returns the color data for the test color for a given flavor.
  """
  @spec text({atom(), Flavor.t()}) :: Color.t() | nil
  def text(flavor), do: color_accessor(:text, flavor)

  @doc """
  Returns the color data for the subtext1 color for a given flavor.
  """
  @spec subtext1({atom(), Flavor.t()}) :: Color.t() | nil
  def subtext1(flavor), do: color_accessor(:subtext1, flavor)

  @doc """
  Returns the color data for the subtext0 color for a given flavor.
  """
  @spec subtext0({atom(), Flavor.t()}) :: Color.t() | nil
  def subtext0(flavor), do: color_accessor(:subtext0, flavor)

  @doc """
  Returns the color data for the overlay2 color for a given flavor.
  """
  @spec overlay2({atom(), Flavor.t()}) :: Color.t() | nil
  def overlay2(flavor), do: color_accessor(:overlay2, flavor)

  @doc """
  Returns the color data for the overlay1 color for a given flavor.
  """
  @spec overlay1({atom(), Flavor.t()}) :: Color.t() | nil
  def overlay1(flavor), do: color_accessor(:overlay1, flavor)

  @doc """
  Returns the color data for the overlay0 color for a given flavor.
  """
  @spec overlay0({atom(), Flavor.t()}) :: Color.t() | nil
  def overlay0(flavor), do: color_accessor(:overlay0, flavor)

  @doc """
  Returns the color data for the surface2 color for a given flavor.
  """
  @spec surface2({atom(), Flavor.t()}) :: Color.t() | nil
  def surface2(flavor), do: color_accessor(:surface2, flavor)

  @doc """
  Returns the color data for the surface1 color for a given flavor.
  """
  @spec surface1({atom(), Flavor.t()}) :: Color.t() | nil
  def surface1(flavor), do: color_accessor(:surface1, flavor)

  @doc """
  Returns the color data for the surface0 color for a given flavor.
  """
  @spec surface0({atom(), Flavor.t()}) :: Color.t() | nil
  def surface0(flavor), do: color_accessor(:surface0, flavor)

  @doc """
  Returns the color data for the base color for a given flavor.
  """
  @spec base({atom(), Flavor.t()}) :: Color.t() | nil
  def base(flavor), do: color_accessor(:base, flavor)

  @doc """
  Returns the color data for the mantle color for a given flavor.
  """
  @spec mantle({atom(), Flavor.t()}) :: Color.t() | nil
  def mantle(flavor), do: color_accessor(:mantle, flavor)

  @doc """
  Returns the color data for the crust color for a given flavor.
  """
  @spec crust({atom(), Flavor.t()}) :: Color.t() | nil
  def crust(flavor), do: color_accessor(:crust, flavor)
end
