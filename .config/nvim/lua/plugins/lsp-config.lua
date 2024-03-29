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
        ensure_installed = { "lua_ls", "tsserver", "pyright", "bashls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig" ,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({})
      lspconfig.pyright.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.ansiblels.setup({})
      lspconfig.terraform_lsp.setup({})
      lspconfig.yamlls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

