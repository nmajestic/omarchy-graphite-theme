# Graphite

An Omarchy theme. Black glass, white type, and a stainless edge. Alerts are red. Icons are brushed steel. Nothing else carries a hue.

The repository name installs as the theme **Graphite**.

## Install

```bash
omarchy theme install https://github.com/nmajestic/omarchy-graphite-theme.git
```

That clones this repo to `~/.config/omarchy/themes/graphite` and applies it.

Omarchy does not run Lua from a theme installed that way. `hyprland.lua` is dropped on purpose, and the stock window template is generated from `colors.toml` instead. The palette, the shell, the keyboard color, the preview, and the wallpaper still apply.

The window chrome lives in `hyprland.lua`: 14px corners, blur, slight translucency, and solid browser windows so pages stay sharp. To keep that file, point the theme directory at a checkout:

```bash
git clone https://github.com/nmajestic/omarchy-graphite-theme.git
ln -sfn "$PWD/omarchy-graphite-theme" ~/.config/omarchy/themes/graphite
omarchy theme set Graphite
```

A symlink to your own checkout is applied in full. A directory that contains `.git` is not.

## Files

| File | Role |
| --- | --- |
| `colors.toml` | Palette. Omarchy builds the terminal, editor, and app themes from it. |
| `shell.toml` | Bar and menus. Scale stays at 1.0 and the bar at 26px. |
| `keyboard.rgb` | Stainless edge, `#e7edf2`. |
| `backgrounds/1-liftoff.jpeg` | Wallpaper. |
| `preview.png` | Theme switcher preview. |
| `hyprland.lua` | Window chrome. Applied from a symlink, not from `omarchy theme install`. |
