return {
  -- 1. Update mason.nvim
  {
    "mason-org/mason.nvim", -- CHANGED: was 'williamboman/mason.nvim'
    lazy = false,
    -- (rest of your configuration, typically empty for LazyVim)
  },

  -- 2. Update mason-lspconfig.nvim
  {
    "mason-org/mason-lspconfig.nvim", -- CHANGED: was 'williamboman/mason-lspconfig.nvim'
    dependencies = {
      "mason-org/mason.nvim", -- Update this dependency reference too!
    },
    -- (rest of your configuration)
    opts = {
      -- Ensure 'gopls' is in your list of installed LSPs if you're using Go
      ensure_installed = {
        "lua_ls",
        "pyright",
        "html",
        "cssls",
        "gopls", -- Add or confirm 'gopls' if needed
      },
    },
  },
  -- ... other plugins
}
