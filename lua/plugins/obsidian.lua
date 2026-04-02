local vault_path = vim.fn.expand '~/.config/bergen/obsidian-vault'

vim.fn.mkdir(vault_path, 'p')

require('obsidian').setup {
  workspaces = {
    {
      name = 'bergen-notes',
      path = vault_path,
    },
  },
  notes_subdir = '.',
  daily_notes = {
    folder = 'daily',
  },
  completion = {
    nvim_cmp = false,
  },
  disable_frontmatter = true,
}

vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', { desc = 'Obsidian new note' })
vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', { desc = 'Obsidian open app' })
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianToday<CR>', { desc = 'Obsidian today' })
vim.keymap.set('n', '<leader>oT', '<cmd>ObsidianTomorrow<CR>', { desc = 'Obsidian tomorrow' })
vim.keymap.set('n', '<leader>oy', '<cmd>ObsidianYesterday<CR>', { desc = 'Obsidian yesterday' })
