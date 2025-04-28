-- Setup nvim-cmp (autocomplete)
local cmp = require('cmp')

cmp.setup({
  -- Specify the sources for completion
  sources = {
    { name = 'nvim_lsp' },         -- LSP-based completion
    { name = 'luasnip' },          -- Snippet completion
    { name = 'buffer' },           -- Buffer-based completion
    { name = 'path' },             -- Path completion
  },

  -- Configure completion behavior
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)  -- Snippet expansion
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),  -- Trigger completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm completion
    ['<Tab>'] = cmp.mapping.select_next_item(),  -- Select next item
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),  -- Select previous item
  }),

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      vim_item.kind = string.format('%s', vim_item.kind)
      return vim_item
    end,
  },
})
