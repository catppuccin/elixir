defmodule Catppuccin.Flavor do
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
