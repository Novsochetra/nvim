vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local argc = vim.fn.argc()
    local first_arg = argc > 0 and vim.fn.argv(0) or ""

    local ok, api = pcall(require, "nvim-tree.api")
    if not ok then
      return
    end

    -- Case 1: no args (plain `nvim`)
    -- Case 2: single arg that is a directory (`nvim .`)
    if argc == 0 or first_arg == "." or first_arg == "NvimTree_1" then
      -- close nvim-tree if it auto-opened
      api.tree.close()

      -- open dashboard
      vim.schedule(function()
        vim.cmd("enew")
        vim.cmd("Dashboard")
      end)
    end
  end,
})

-- For Auto Reload File Change On Disk
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("CheckFileChanges", { clear = true }),
  callback = function()
    if vim.fn.mode() ~= 'c' then -- Avoid running in command mode
      vim.cmd("checktime")
    end
  end,
})

vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    require("yazi").setup({
      hooks = {
        yazi_closed_successfully = function(chosen_file, config, state)
          -- INFO: when we selected the file we will need to change neovim working dir
          -- otherwise plugin like telescope.find_files will search the default folder
          if chosen_file then
            local path = vim.fn.fnamemodify(chosen_file, ":p") -- full path

            -- check if it is a directory
            if vim.fn.isdirectory(path) == 1 then
              vim.cmd("cd " .. path)
              require("utils.notify").success("Neovim CWD changed to directory: " .. path)
            end
          end
        end
      }
    })
  end,
})
