-- Main Options
vim.opt.relativenumber = true










-- Plugins Start


  lvim.plugins={{"vimwiki/vimwiki"}}

  -- VimWiki Things Start
  lvim.builtin.which_key.mappings["y"] = {
    ":VimwikiIndex <CR>", "VimWiki"
  }
  vim.g.vimwiki_key_mappings = { global = 0 }
  -- VimWiki Things End


-- Plugins End
