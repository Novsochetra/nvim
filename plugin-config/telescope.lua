local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<ESC>"] = require("telescope.actions").close,
        ["<S-a>"] = require("telescope.actions").toggle_all,
      },
    },
    file_ignore_patterns = { "node_modules", ".git" }
  },

  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}

pcall(require('telescope').load_extension, 'fzf')

telescope.load_extension("live_grep_args")

vim.keymap.set('n', '<C-f>', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    previewer = false,
    sorting_strategy = "ascending",
  })
end, { desc = 'Search in current file' })


vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })

local lga = require("telescope").extensions.live_grep_args.live_grep_args
local actions = require("telescope.actions")
vim.keymap.set("n", "<C-S-f>", function()
  lga({
    attach_mappings = function(_, map)
      -- Replace quickfix with results
      map("i", "<C-q>", actions.send_selected_to_qflist + actions.open_qflist)
      map("n", "<C-q>", actions.send_selected_to_qflist + actions.open_qflist)
      return true
    end
  })
end)

vim.keymap.set("n", "<leader><leader>", require("telescope.builtin").resume)

vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sk', require('telescope.builtin').builtin,
  { desc = '[S]earch [S]elect Telescope (which keymap is no our neovim)' })
vim.keymap.set('n', '<leader>so', require('telescope.builtin').treesitter,
  { desc = 'Lists Function names, variables, from Treesitter!' })
