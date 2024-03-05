vim.g.mapleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 999

vim.opt.mouse = 'a'

vim.opt.breakindent = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.keymap.set('n', '<cr>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<A-h>', '<cmd>tabprevious<cr>')
vim.keymap.set('n', '<A-l>', '<cmd>tabnext<cr>')
vim.keymap.set('i', '<Tab>', '<cmd>tabnext<cr>')
vim.keymap.set('i', '<S-Tab>', '<cmd>tabnext<cr>')

vim.call('plug#begin')

vim.fn['plug#']('catppuccin/nvim', {['as'] = 'catppuccin'})
vim.fn['plug#']('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
vim.fn['plug#']('HiPhish/rainbow-delimiters.nvim')
vim.fn['plug#']('JuliaEditorSupport/julia-vim')
vim.fn['plug#']('jiangmiao/auto-pairs')
vim.fn['plug#']('preservim/nerdcommenter')
vim.fn['plug#']('tpope/vim-surround')
vim.fn['plug#']('tpope/vim-repeat')
vim.fn['plug#']('christoomey/vim-tmux-navigator')
vim.fn['plug#']('neoclide/coc.nvim', {['branch'] = 'release'})
vim.fn['plug#']('junegunn/fzf', {['do'] = vim.fn['fzf#install']})

vim.call('plug#end')

vim.cmd('colorscheme catppuccin')
vim.cmd('set clipboard+=unnamedplus')
--vim.cmd('inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"')
--vim.cmd('inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"')
--TODO https://vi.stackexchange.com/questions/39966/tab-out-of-insert-mode-lua-keymap, tabout.nvim
--https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

-----
----- coc config
-----

-- Ref: https://github.com/neoclide/coc.nvim#example-lua-configuration

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

--local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local coc_opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', coc_opts)
vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], coc_opts)
