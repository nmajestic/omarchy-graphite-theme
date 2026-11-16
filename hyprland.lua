-- Graphite window chrome.
-- Rounded smoked glass, a 1px stainless edge, no colored glow.
-- Fullscreen, the game, and browsers stay solid.

local active_border_color = { colors = { "rgba(e7edf2ee)", "rgba(ffffff99)" }, angle = 90 }
local inactive_border_color = "rgba(ffffff22)"

hl.config({
  general = {
    border_size = 1,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 14,
    rounding_power = 4,
    shadow = {
      enabled = false,
    },
    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      xray = false,
      contrast = 1.0,
      brightness = 0.82,
      noise = 0.012,
      vibrancy = 0.12,
      vibrancy_darkness = 0.15,
      popups = true,
      special = true,
    },
  },
})

o.window(".*", { opacity = "0.9 0.86" })
o.window({ fullscreen = true }, { opacity = "1 1" })
o.window("gamescope", { opacity = "1 1" })

-- A translucent browser lets the desktop blur show through the page.
o.window(
  "(brave-origin|" .. o.chromium_browsers .. "|[fF]irefox|zen|librewolf)",
  { opacity = "1 override 1 override 1 override", opaque = true, no_blur = true }
)

hl.layer_rule({
  match = { namespace = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd|omarchy-polkit|omarchy-reminders|omarchy-clipboard|omarchy-emojis|omarchy-image-selector|omarchy-keyboard-panel|omarchy-network-qr)$" },
  blur = true,
  ignore_alpha = 0.3,
})

hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.2, bezier = "easeOutQuint", style = "popin 97%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.4, bezier = "almostLinear", style = "popin 97%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.7, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.3, bezier = "almostLinear" })
