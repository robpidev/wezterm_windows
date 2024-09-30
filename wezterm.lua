local wezterm = require("wezterm")
local keys = require("keys")

-- Curosr color
local colors = require("colors")

return {
  keys = keys,
  colors = colors,
  front_end = "WebGpu",
  enable_wayland = false,

  default_prog = {
    "pwsh.exe",
    -- "-l",
  },

  color_scheme = "Aura (Gogh)",
  -- color_scheme = "Dustone Dark",

  window_decorations = "INTEGRATED_BUTTONS",
  window_padding = { top = "1px", bottom = 0, left = "3px", right = 0 },
  window_background_opacity = 0.75,
  win32_system_backdrop = "Acrylic",

  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,

  cursor_blink_rate = 500,
  default_cursor_style = "BlinkingBlock",

  -- show_tab_bar = true,
  -- enable_scroll_bar = false,

  font_size = 12,
  line_height = 0.943,
  freetype_load_target = "Light",
  font = wezterm.font("JetBrainsMono Nerd Font", {
    weight = "Light",
    -- weight = "Regular",
    -- weight = "DemiBold",
    -- stretch = "Expanded", -- weight = "Medium",
  }),

  -- freetype_render_target = "HorizontalLcd",
  -- cell_width = 0.9,
  -- freetype_load_flags = "NO_HINTING",
}
