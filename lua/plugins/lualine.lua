require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      { 'filename', file_status = true, path = 1 }
    },
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {}
  }
}
