return {
  {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {},
    keys = {
      { '<leader><leader>', "<leader>ff", desc = 'Find files', remap = true },
      { '<leader>,', "<leader>fb", desc = 'Buffers', remap = true },
      { '<leader>/', "<leader>sg", desc = 'Live grep', remap = true },
      -- find
      { '<leader>ff', require('telescope.builtin').find_files, desc = 'Files' },
      { '<leader>fr', require('telescope.builtin').oldfiles, desc = 'Recent' },
      { '<leader>fb', require('telescope.builtin').buffers, desc = 'Buffers' },
      -- git
      { '<leader>gc', require('telescope.builtin').git_commits, desc = 'Git commits (current buffer)' },
      { '<leader>gC', require('telescope.builtin').git_bcommits, desc = 'Git commits' },
      { '<leader>gb', require('telescope.builtin').git_branches, desc = 'Git branches' },
      { '<leader>gs', require('telescope.builtin').git_status, desc = 'Git status' },
      -- search
      { '<leader>sr', require('telescope.builtin').resume, desc = 'Resume' },
      { '<leader>sg', require('telescope.builtin').live_grep, desc = 'Live grep' },
      { '<leader>sb', require('telescope.builtin').current_buffer_fuzzy_find, desc = 'Fuzzy find (current buffer)' },
      { '<leader>sc', require('telescope.builtin').commands, desc = 'Commands' },
      { '<leader>sC', require('telescope.builtin').command_history, desc = 'Command history' },
      { '<leader>s/', require('telescope.builtin').search_history, desc = 'Search history' },
      { '<leader>sk', require('telescope.builtin').keymaps, desc = 'Keymaps' },
      { '<leader>ss', require('telescope.builtin').lsp_document_symbols, desc = 'LSP document symbols' },
      { '<leader>sS', require('telescope.builtin').lsp_dynamic_workspace_symbols, desc = 'LSP workspace symbols' },
      { '<leader>sd', function() require('telescope.builtin').diagnostics({ bufnr = 0 }) end, desc = 'Diagnostics (current buffer)' },
      { '<leader>sD', require('telescope.builtin').diagnostics, desc = 'Diagnostics' },
      -- lsp
      { 'gd', require('telescope.builtin').lsp_definitions, desc = 'LSP definitions' },
      { 'gr', require('telescope.builtin').lsp_references, desc = 'LSP references' },
      { 'gi', require('telescope.builtin').lsp_implementations, desc = 'LSP implementations' },
      { 'gy', require('telescope.builtin').lsp_type_definitions, desc = 'LSP type definitions' },
    },
  },
}
