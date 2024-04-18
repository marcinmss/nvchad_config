local iron = require "iron.core"

iron.setup {
  -- Highlights the last sent block with bold
  highlight_last = "IronLastSent",

  -- Toggling behavior is on by default.
  -- Other options are: `single` and `focus`
  visibility = require("iron.visibility").toggle,

  -- Scope of the repl
  -- By default it is one for the same `pwd`
  -- Other options are `tab_based` and `singleton`
  scope = require("iron.scope").path_based,

  -- Whether the repl buffer is a "throwaway" buffer or not
  scratch_repl = false,

  -- Automatically closes the repl window on process end
  close_window_on_exit = true,
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        command = { "fish" },
      },
      python = require("iron.fts.python").ipython,
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = require("iron.view").split.vertical.botright(0.45),
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<leader>sc",
    visual_send = "<leader>sc",
    send_file = "<leader>sf",
    send_line = "<leader>sl",
    send_until_cursor = "<leader>su",
    send_mark = "<leader>sm",
    mark_motion = "<leader>mc",
    mark_visual = "<leader>mc",
    remove_mark = "<leader>md",
    cr = "<leader>s<cr>",
    interrupt = "<leader>s<space>",
    exit = "<leader>sq",
    clear = "<leader>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true,
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set("n", "<leader>rs", "<cmd>IronRepl<cr>")
vim.keymap.set("n", "<leader>rr", "<cmd>IronRestart<cr>")
vim.keymap.set("n", "<leader>rf", "<cmd>IronFocus<cr>")
vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>")
