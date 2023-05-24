local module = {}

function module.apply_to_config(config)
  config.color_scheme = "Catppuccin Frappe"

  config.window_background_opacity = 0.9

  config.window_background_gradient = {
    colors = { '#303446', '#232634' },
    orientation = { Linear = { angle = 90.0 } },
  }
  
  config.window_frame = {
    active_titlebar_bg = '#292c3c',
  }

  config.colors = {
    tab_bar = {
      background = '#303446',
      active_tab = {
        bg_color = '#303446',
        fg_color = '#f2d5cf',
        intensity = 'Normal',
        italic = false,
        strikethrough = false,
      },
      inactive_tab = {
        bg_color = '#292c3c',
        fg_color = '#949cbb',
      },
      inactive_tab_hover = {
        bg_color = '#292c3c',
        fg_color = '#949cbb',
        italic = true,
      },
      new_tab = {
        bg_color = '#303446',
        fg_color = '#f2d5cf',
      },
      new_tab_hover = {
        bg_color = '#292c3c',
        fg_color = '#f2d5cf',
        italic = true,
      },
      inactive_tab_edge = '#292c3c'
    }
  }
end

return module
