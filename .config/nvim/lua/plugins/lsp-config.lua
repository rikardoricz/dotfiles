return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "eslint", "pyright", "bashls", "marksman", "gopls", "ansiblels", "yamlls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig" ,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.pyright.setup({})
      lspconfig.bashls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.gopls.setup({})
      lspconfig.ansiblels.setup({})
      lspconfig.yamlls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

