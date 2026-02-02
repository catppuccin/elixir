# `Catppuccin.Color`

Module for handling color data.

# `t`

```elixir
@type t() :: %Catppuccin.Color{
  accent: boolean(),
  hex: String.t(),
  hsl: {integer(), integer(), integer()},
  name: String.t(),
  order: integer(),
  rgb: {integer(), integer(), integer()}
}
```

Data structure representing a color i hex, rgb, and hsl.

# `accent`

```elixir
@spec accent(t()) :: boolean()
```

Returns if the color is an accent color.

## Examples

    iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.accent
    true

# `base`

Returns the `base` color for the given `flavor`.

# `blue`

Returns the `blue` color for the given `flavor`.

# `crust`

Returns the `crust` color for the given `flavor`.

# `flamingo`

Returns the `flamingo` color for the given `flavor`.

# `green`

Returns the `green` color for the given `flavor`.

# `lavender`

Returns the `lavender` color for the given `flavor`.

# `mantle`

Returns the `mantle` color for the given `flavor`.

# `maroon`

Returns the `maroon` color for the given `flavor`.

# `mauve`

Returns the `mauve` color for the given `flavor`.

# `name`

```elixir
@spec name(t()) :: String.t()
```

Returns the name of the color.

## Examples

    iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.name
    "Rosewater"

# `order`

```elixir
@spec order(t()) :: integer()
```

Return the order of the color.

## Examples

    iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.order
    0

# `overlay0`

Returns the `overlay0` color for the given `flavor`.

# `overlay1`

Returns the `overlay1` color for the given `flavor`.

# `overlay2`

Returns the `overlay2` color for the given `flavor`.

# `peach`

Returns the `peach` color for the given `flavor`.

# `pink`

Returns the `pink` color for the given `flavor`.

# `red`

Returns the `red` color for the given `flavor`.

# `rosewater`

Returns the `rosewater` color for the given `flavor`.

# `sapphire`

Returns the `sapphire` color for the given `flavor`.

# `sky`

Returns the `sky` color for the given `flavor`.

# `subtext0`

Returns the `subtext0` color for the given `flavor`.

# `subtext1`

Returns the `subtext1` color for the given `flavor`.

# `surface0`

Returns the `surface0` color for the given `flavor`.

# `surface1`

Returns the `surface1` color for the given `flavor`.

# `surface2`

Returns the `surface2` color for the given `flavor`.

# `teal`

Returns the `teal` color for the given `flavor`.

# `text`

Returns the `text` color for the given `flavor`.

# `to_hex`

```elixir
@spec to_hex(t()) :: String.t()
```

Returns the hex code of the color.

## Examples

    iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_hex
    "#f2d5cf"

# `to_hsl`

```elixir
@spec to_hsl(t()) :: {integer(), integer(), integer()}
```

Returns the hsl values of the color.

## Example

    iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_hsl
    {10.2857142857143, 0.5737704918032784, 0.8803921568627451}

# `to_rgb`

```elixir
@spec to_rgb(t()) :: {integer(), integer(), integer()}
```

Returns the RGB values of the color.

## Examples

     iex> Catppuccin.frappe |> Catppuccin.Color.rosewater |> Catppuccin.Color.to_rgb
     {242, 213, 207}

# `yellow`

Returns the `yellow` color for the given `flavor`.

---

*Consult [api-reference.md](api-reference.md) for complete listing*
