--local disabled_built_ins = {
    --"netrw",
    --"netrwPlugin",
    --"netrwSettings",
    --"netrwFileHandlers",
    --"gzip",
    --"zip",
    --"zipPlugin",
    --"tar",
    --"tarPlugin",
    --"getscript",
    --"getscriptPlugin",
    --"vimball",
    --"vimballPlugin",
    --"2html_plugin",
    --"logipat",
    --"rrhelper",
    --"spellfile_plugin",
    --"matchit"
--}
--
--for _, plugin in pairs(disabled_built_ins) do
    --vim.g["loaded_" .. plugin] = 1
--end


require('plugins')
require('vim-settings')
require('key-mappings')
require('lsp-omnisharp')
require('nv-compe')
require('nv-treesitter')
require('colorizer').setup()
require('lualine').setup{
  options = {
    icons_enabled = true,
    --theme = 'gruvbox',
    theme = 'tokyonight',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

