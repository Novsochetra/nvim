require("nvim-tree").setup({

  hijack_cursor = false,

  -- hijack_cursor = false,
  -- auto_reload_on_write = true,
  -- disable_netrw = false,
  -- hijack_netrw = true,
  -- hijack_unnamed_buffer_when_opening = false,
  -- root_dirs = {},
  -- prefer_startup_root = false,
  -- sync_root_with_cwd = false,
  -- reload_on_bufenter = false,
  -- respect_buf_cwd = false,
  -- select_prompts = false,
  open_on_tab = false,


  sort_by = "name",
  view = {
    width = 30,
    side = "left",
    preserve_window_proportions = true,
    change_cwd = true,
  },
  renderer = {
    highlight_opened_files = "name",
    group_empty = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
})

vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>r", ":NvimTreeFindFile<CR>", { desc = "Focus current file in tree" })
