return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    -- open file_browser with the path of the current buffer
    vim.keymap.set('n', '<C-h>', ':Telescope file_browser path=%:p:h select_buffer=true<CR>')
    require('telescope').setup {
      extensions = {
        file_browser = {
          grouped = true,
          sorting_strategy = 'ascending',
        },
      },
    }
  end,
}
