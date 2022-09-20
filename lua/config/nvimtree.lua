local M = {}

function M.setup()
  require("nvim-tree").setup {
    disable_netrw = true,
    hijack_netrw = true,
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
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
  }

  vim.g.nvim_tree_respect_buf_cwd = 1
end

return M
