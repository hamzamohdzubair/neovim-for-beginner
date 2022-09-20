local M = {}

function M.setup()
  local nvim_tree = require "nvim-tree"
  nvim_tree.setup {
    disable_netrw = false,
    hijack_netrw = true,
    respect_buf_cwd = true,
    view = {
      number = false,
      relativenumber = false,
      adaptive_size = true,
      hide_root_folder = true,
      width = 20,
      mappings = {
        list = {
          { key='K', action='cd'},
          { key={'<cr>', 'l'}, action='edit'},
          { key='h', action='dir_up'},
          { key='o', action='vsplit'},
        },
      },
    },
    filters = {
      custom = { ".git" },
    },
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true,
    },
  }
end

return M
