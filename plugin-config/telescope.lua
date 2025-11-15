local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

-- Telescope setup
telescope.setup({
  defaults = {
    previewer = true,
    layout_strategy = "center", 
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<ESC>"] = actions.close,
        ["<S-a>"] = actions.toggle_all,
      },
    },
    file_ignore_patterns = { "node_modules", ".git" },
  },
  pickers = {
    find_files = {
      prompt_position = 'top',
      previewer = false,
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Load extensions AFTER setup
pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "live_grep_args")

-- Keymaps
vim.keymap.set("n", "<leader>f", function()
  builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    previewer = false,
    sorting_strategy = "ascending",
  }))
end, { desc = "Search in current file" })

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "[S]earch [F]iles" })

vim.keymap.set("n", "<leader>sg", function()
  telescope.extensions.live_grep_args.live_grep_args({
    attach_mappings = function(_, map)
      map("i", "<C-q>", actions.send_selected_to_qflist + actions.open_qflist)
      map("n", "<C-q>", actions.send_selected_to_qflist + actions.open_qflist)
      return true
    end,
  })
end, { desc = "[S]earch with live grep (args)" })

vim.keymap.set("n", "<leader><leader>", builtin.resume, { desc = "Resume last Telescope search" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.builtin, { desc = "[S]earch Telescope commands" })
vim.keymap.set("n", "<leader>so", builtin.treesitter, { desc = "[S]earch Treesitter symbols" })
