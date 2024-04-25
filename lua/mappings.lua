require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>u", "<cmd> UndotreeToggle <cr>")

-- better search terms
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- better search terms
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Mappings for vimtex
map("n", "<leader>lc", "<cmd> VimtexCompile <cr>")
map("n", "<leader>lv", "<cmd> VimtexView <cr>")
map("n", "<leader>ls", "<cmd> VimtexStop <cr>")

-- Mapping for lazygit
map({ "n", "v", "t" }, "<A-o>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floa",
    cmd = "lazygit",
    float_opts = { border = "double", width = 0.99, height = 0.90, row = 0.1, col = 0.25 },
  }
end)
