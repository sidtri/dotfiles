return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Change this to ONLY use prettier, or ONLY eslint_d
        -- Corteza usually relies on Prettier for layout and ESLint for logic
        vue = { "prettier" },
      },
      -- If you want to stop the LSP from formatting (vtsls/vue_ls)
      -- and only rely on Prettier:
      format_on_save = {
        lsp_fallback = false,
        timeout_ms = 500,
      },
    },
  },
}
