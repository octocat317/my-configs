
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  options = {
    theme = 'gruvbox', -- Choices include: 'evil', 'tokyonight', 'dracula', 'powerline', etc.
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}

