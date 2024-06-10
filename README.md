<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://elixir-lang.org/">Elixir</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/elixir/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/elixir?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/elixir/issues"><img src="https://img.shields.io/github/issues/catppuccin/elixir?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/elixir/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/elixir?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

## Usage

1. Include the dependency in your mix project.
```elixir
def deps do
  [
    {:catppuccin, github: "catppuccin/elixir", tag: "v0.1.2"}
  ]
end
```
2. Enjoy the beautiful Catppuccin palette.

## Examples 

See the API reference for more examples

### Get a flavor
```elixir
Catppuccin.mocha
```

### Get a color from a flavor
```elixir
Catppuccin.latte
|> Catppuccin.Color.base
|> Catppuccin.Color.to_hex
```

### Get flavor emoji
```elixir
Catppuccin.latte
|> Catppuccin.Flavor.emoji
```

<!-- this section is optional -->
## 🙋 FAQ

-	Q: **_"Where can I find the doc?"_**\
	A: [API Reference](https://catppuccin.github.io/elixir/api-reference.html)

## 💝 Thanks to

- [MikaelFangel](https://github.com/mikaelfangel)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
