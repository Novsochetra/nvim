require("CopilotChat").setup {
  debug = false, -- Enable debugging
  -- See Configuration section for rest

  prompts = {
    Explain = {
      prompt = '/COPILOT_EXPLAIN Write an explanation for the code above as paragraphs of text.',
    },
    Tests = {
      prompt = '/COPILOT_TESTS Write a set of detailed unit test functions for the code above.',
    },
    Fix = {
      prompt = '/COPILOT_FIX There is a problem in this code. Rewrite the code to show it with the bug fixed.',
    },
    Refactor = {
      prompt = '/COPILOT_REFACTOR Optimize the selected code to make it more readablilty, clean and concise.',
    },
    Optimize = {
      prompt = '/COPILOT_REFACTOR Optimize the selected code to improve performance and readablilty.',
    },
    Docs = {
      prompt = '/COPILOT_REFACTOR Write documentation for the selected code. The reply should be a codeblock containing the original code with the documentation added as comments. Use the most appropriate documentation style for the programming language used (e.g. JSDoc for JavaScript, docstrings for Python etc.',
    },

    ExtractComponent = {
      prompt = '/COPILOT_REFACTOR Please suggest component extractions for this selected code to improve this code. Consider maintainability, reusability, and readability.',
    }

  },

  mappings = {
    close = 'q',
    reset = '<C-x>',
    complete = '<Tab>',
    submit_prompt = '<CR>',
    accept_diff = '<C-y>',
    show_diff = 'gd',
    show_system_prompt = 'gp',
    show_user_selection = 'gs',
  },

  window = {
    layout = 'vertical', -- 'vertical', 'horizontal', 'float'
    -- Options below only apply to floating windows
    relative = 'editor', -- 'editor', 'win', 'cursor', 'mouse'
    border = 'rounded', -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    width = 0.8, -- fractional width of parent
    height = 0.6, -- fractional height of parent
    row = nil, -- row position of the window, default is centered
    col = nil, -- column position of the window, default is centered
    title = 'Copilot Chat', -- title of chat window
    footer = nil, -- footer of chat window
    zindex = 1, -- determines if window is on top or below other floating windows
  },
}

vim.keymap.set('x', "<leader>cch", function()
  print("Show Action")
  local actions = require("CopilotChat.actions")
  require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end, { desc = 'Show Copilot Chat Action' })

-- create map key <leader>cch in virtual select mode & normal mode
--
--
