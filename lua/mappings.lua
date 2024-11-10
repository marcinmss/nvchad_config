require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>u", "<cmd> UndotreeToggle <cr>")

-- better search terms
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- better search terms
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Mappings for Dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
map("n", "<leader>dn", "<cmd> DapNew <CR>")
map("n", "<leader>dt", "<cmd> DapTerminate <CR>")
map("n", "<leader>dso", "<cmd> DapStepOver <CR>")

map("n", "<leader>pw", function()
  local picked_window_id = require("window-picker").pick_window { hint = "floating-big-letter" }
  print(vim.fn.win_gotoid(picked_window_id))
end)

map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end)

-- Mapping for lazygit
map({ "n", "v", "t" }, "<A-o>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "float",
    cmd = "lazygit",
    float_opts = { border = "double", width = 0.99, height = 0.90, row = 0.1, col = 0.25 },
  }
end)
