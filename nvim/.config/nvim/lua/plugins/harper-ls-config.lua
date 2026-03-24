return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.harper_ls = opts.servers.harper_ls or {}

      -- harper-ls only recognizes "shellscript" as the languageId for shell files,
      -- not "sh" (which is what Neovim sends by default).
      opts.servers.harper_ls.get_language_id = function(_, filetype)
        if filetype == "sh" then
          return "shellscript"
        end
        return filetype
      end
    end,
  },
}
