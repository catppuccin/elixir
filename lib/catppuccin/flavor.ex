defmodule Catppuccin.Flavor do
  @moduledoc """
  Module to retrieve information about flavors.
  """

  @typedoc """
  Data structure representing a flavor.
  """
  @type t :: %__MODULE__{
          name: String.t(),
          emoji: String.t(),
          order: integer(),
          dark: boolean(),
          colors: %{atom() => Color.t()}
        }
  defstruct [:name, :emoji, :order, :dark, :colors]

  alias __MODULE__

  @doc """
  Returns the name of the flavor.

  ## Examples

      iex> Catppuccin.latte |> Catppuccin.Flavor.name
      "Latte"

  """
  @spec name({atom(), Flavor.t()}) :: String.t()
  def name({_flavor, %Flavor{name: name}}), do: name

  @doc """
  Returns the emoji of the flavor.

  ## Examples

      iex> Catppuccin.latte |> Catppuccin.Flavor.emoji
      "🌻"

  """
  @spec emoji({atom(), Flavor.t()}) :: String.t()
  def emoji({_flavor, %Flavor{emoji: emoji}}), do: emoji

  @doc """
  Returns the order of the flavor.

  ## Examples

      iex> Catppuccin.latte |> Catppuccin.Flavor.order
      0

  """
  @spec order({atom(), Flavor.t()}) :: integer()
  def order({_flavor, %Flavor{order: order}}), do: order

  @doc """
  Returns if the flavor is dark.

  ## Examples

      iex> Catppuccin.latte |> Catppuccin.Flavor.dark
      false

      iex> Catppuccin.frappe |> Catppuccin.Flavor.dark
      true
  """
  @spec dark({atom(), Flavor.t()}) :: boolean()
  def dark({_flavor, %Flavor{dark: dark}}), do: dark
end
