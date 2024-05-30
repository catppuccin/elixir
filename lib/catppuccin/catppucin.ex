defmodule Catppuccin do
  @moduledoc """
  ⚗️ Soothing pastel theme for Elixir.
  """
  alias Catppuccin.Flavor
  alias Catppuccin.FlavorETS

  @doc """
  Retuns the flavor data for the latte flavor.
  """
  @spec latte() :: Flavor.t()
  def latte do
    start_flavors()
    FlavorETS.flavor(:latte)
  end

  @doc """
  Returns the flavor data for the frappe flavor.
  """
  @spec frappe() :: Flavor.t()
  def frappe do
    start_flavors()
    FlavorETS.flavor(:frappe)
  end

  @doc """
  Returns the flavor data for the macchiato flavor.
  """
  @spec macchiato() :: Flavor.t()
  def macchiato do
    start_flavors()
    FlavorETS.flavor(:macchiato)
  end

  @doc """
  Returns the flavor data for the cappuccino flavor.
  """
  @spec mocha() :: Flavor.t()
  def mocha do
    start_flavors()
    FlavorETS.flavor(:mocha)
  end

  defp start_flavors() do
    if :ets.info(:flavors) == :undefined do
      FlavorETS.start_link()
    end
  end
end
