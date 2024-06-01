defmodule Catppuccin.Color do
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
