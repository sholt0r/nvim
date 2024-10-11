return {
  'ibhagwan/fzf-lua',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup({})

    vim.keymap.set("n", "<leader>pf",   fzf.files, {})
    vim.keymap.set("n", "<C-p>",        fzf.git_files, {})
    vim.keymap.set("n", "<leader>pws",  fzf.grep_cword, {})
    vim.keymap.set("n", "<leader>pWs",  fzf.grep_cWORD, {})
    vim.keymap.set("n", "<leader>ps",   fzf.live_grep, {})
    vim.keymap.set("n", "<leader>vh",   fzf.helptags, {})
  end
}
