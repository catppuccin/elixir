defmodule Catppuccin.Color do
  @moduledoc """
  Module for handling color data.
  """

  alias Catppuccin.Flavor

  @color_names ~w(rosewater flamingo pink mauve red maroon peach yellow green teal sky sapphire blue lavender text subtext1 subtext0 overlay2 overlay1 overlay0 surface2 surface1 surface0 base mantle crust)

  @typedoc """
  Data structure representing a color i hex, rgb, and hsl.
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

  for color_name <- @color_names do
    doc = """
    Returns the `#{color_name}` color for the given `flavor`.
    """
    Module.register_attribute(__MODULE__, :doc, accumulate: true)
    @doc doc

    def unquote(:"#{color_name}")(flavor), do: color_accessor(unquote(:"#{color_name}"), flavor)
  end
end
