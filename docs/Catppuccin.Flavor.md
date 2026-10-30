# `Catppuccin.Flavor`

Module to retrieve information about flavors.

# `t`

```elixir
@type t() :: %Catppuccin.Flavor{
  colors: %{required(atom()) =&gt; Color.t()},
  dark: boolean(),
  emoji: String.t(),
  name: String.t(),
  order: integer()
}
```

Data structure representing a flavor.

# `dark`

```elixir
@spec dark({atom(), t()}) :: boolean()
```

Returns if the flavor is dark.

## Examples

    iex> Catppuccin.latte |> Catppuccin.Flavor.dark
    false

    iex> Catppuccin.frappe |> Catppuccin.Flavor.dark
    true

# `emoji`

```elixir
@spec emoji({atom(), t()}) :: String.t()
```

Returns the emoji of the flavor.

## Examples

    iex> Catppuccin.latte |> Catppuccin.Flavor.emoji
    "🌻"

# `name`

```elixir
@spec name({atom(), t()}) :: String.t()
```

Returns the name of the flavor.

## Examples

    iex> Catppuccin.latte |> Catppuccin.Flavor.name
    "Latte"

# `order`

```elixir
@spec order({atom(), t()}) :: integer()
```

Returns the order of the flavor.

## Examples

    iex> Catppuccin.latte |> Catppuccin.Flavor.order
    0

---

*Consult [api-reference.md](api-reference.md) for complete listing*
