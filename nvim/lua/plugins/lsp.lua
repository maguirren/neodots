
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/lazydev.nvim",
  },
  config = function()
    --Enable (broadcasting) snippet capability for completion
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    local on_attach = function(_, bufnr)
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
    end

    require("lazydev").setup()
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
    require("lspconfig").pyright.setup({})
    require("lspconfig").html.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = {"html", "templ"},
    })
    require("lspconfig").marksman.setup({})
    require("lspconfig").emmet_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = {
        "css",
        "html",
        "javascript",
        "javascriptreact",
        "typescript",
      },
      init_options = {
        html = {
          options = {
            ["bem.enable"] = true,
          },
        },
      }
    })
  end
}
