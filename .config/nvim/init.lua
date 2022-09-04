vim.cmd([[
set nu rnu

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'andweeb/presence.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/fzf.vim'
Plug 'alec-gibson/nvim-tetris'
Plug 'kdheepak/lazygit.nvim'
Plug 'tamton-aquib/staline.nvim'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'ms-jpq/coq_nvim'
Plug 'Xuyuanp/scrollbar.nvim'
call plug#end()

let g:dashboard_default_executive ='fzf'
let g:lazygit_floating_window_winblend = 0.8
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯']
]])

require('staline').setup{}

require('stabline').setup {
	style       = "bubble",
}
