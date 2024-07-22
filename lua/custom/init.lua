vim.wo.number = true
vim.wo.relativenumber = true
vim.g.termdebug_wide = 1
vim.g.clipboard = {
  name = "xsel",
  copy = {
    ["+"] = "xsel --nodetach -ib",
    ["*"] = "xsel --nodetach -ip",
  },
  paste = {
    ["+"] = "xsel -ob",
    ["*"] = "xsel -op",
  },
  cache_enabled = true,
}
vim.opt.colorcolumn = "80"
