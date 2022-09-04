vim.cmd([[
set nu rnu

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ryanoasis/vim-devicons'
Plug 'andweeb/presence.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'alec-gibson/nvim-tetris'
Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
Plug 'kdheepak/lazygit.nvim'
Plug 'frabjous/knap'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'github/copilot.vim'
call plug#end()

let g:dashboard_default_executive ='fzf'
let g:lazygit_floating_window_winblend = 0.8
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯']

]])

-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap('i','<F5>', function() require("knap").process_once() end)
kmap('v','<F5>', function() require("knap").process_once() end)
kmap('n','<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap('i','<F6>', function() require("knap").close_viewer() end)
kmap('v','<F6>', function() require("knap").close_viewer() end)
kmap('n','<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap('i','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('v','<F7>', function() require("knap").toggle_autopreviewing() end)
kmap('n','<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap('i','<F8>', function() require("knap").forward_jump() end)
kmap('v','<F8>', function() require("knap").forward_jump() end)
kmap('n','<F8>', function() require("knap").forward_jump() end)

local gknapsettings = {
    htmloutputext = "html",
    htmltohtml = "none",
    htmltohtmlviewerlaunch = "brave %outputfile%",
    htmltohtmlviewerrefresh = "none",
    mdoutputext = "html",
    mdtohtml = "pandoc --standalone %docroot% -o %outputfile%",
    mdtohtmlviewerlaunch = "brave %outputfile%",
    mdtohtmlviewerrefresh = "none",
    mdtopdf = "pandoc %docroot% -o %outputfile%",
    mdtopdfviewerlaunch = "sioyek %outputfile%",
    mdtopdfviewerrefresh = "none",
    markdownoutputext = "html",
    markdowntohtml = "pandoc --standalone %docroot% -o %outputfile%",
    markdowntohtmlviewerlaunch = "brave %outputfile%",
    markdowntohtmlviewerrefresh = "none",
    markdowntopdf = "pandoc %docroot% -o %outputfile%",
    markdowntopdfviewerlaunch = "sioyek %outputfile%",
    markdowntopdfviewerrefresh = "none",
    texoutputext = "pdf",
    textopdf = "pdflatex -interaction=batchmode -halt-on-error -synctex=1 %docroot%",
    textopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-instance %outputfile%",
    textopdfviewerrefresh = "none",
    textopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-instance --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
    textopdfshorterror = "A=%outputfile% ; LOGFILE=\"${A%.pdf}.log\" ; rubber-info \"$LOGFILE\" 2>&1 | head -n 1",
    delay = 250
}

vim.g.knap_settings = gknapsettings

require('mini.completion').setup({
-- Delay (debounce type, in ms) between certain Neovim event and action.\
-- This can be used to (virtually) disable certain automatic actions by
-- setting very high delay time (like 10^7).
    delay = { completion = 0, info = 0, signature = 0 },
})

require('mini.fuzzy').setup({})

require('mini.tabline').setup({})

require('mini.statusline').setup({})

require('mini.starter').setup({})

require('mini.sessions').setup({})
