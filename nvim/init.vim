let &packpath = &runtimepath
"set statusline+='%F'
set gdefault
set guifont=*:h10
set termguicolors
set splitbelow
set splitright
set mouse=a
set number
set showmatch
set relativenumber
set complete-=b,u
set clipboard=unnamedplus
set shortmess+=I
set belloff=
set confirm
set errorbells
"set mousemodel=popup

autocmd InsertEnter * call chansend(v:stderr, "\e[?737769h")
autocmd InsertLeave * call chansend(v:stderr, "\e[?737769l")

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
function! InsertsTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<s-tab>"
    else
        return "\<c-x>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <expr> <s-tab> InsertsTabWrapper()

noremap gw <C-w><C-w>
noremap go ^]

let $plug='~/.config/nvim/lua/plugins.lua'

lua << EOF
require('plugins')
require('lualine').setup {
	sections = {
		lualine_c = {'%F'},
		lualine_x = {'filetype'}
		}
	}
require'nvim-treesitter.configs'.setup{
	ensure_installed = { "fish","c" },
	highlight =  {
		enable = { "fish","c" },
	},
	incrementel_selection = {
		enable = { "fish" },
	},
}
--require('staline').setup{
--	defaults = {
--		cool_symbol=" "
--		}
--	}
EOF

colo nord

let g:srcery_italic = 1
"let g:gruvbox_contrast_dark='hard'

if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
    	    \	if &omnifunc == "" |
    	    \		setlocal omnifunc=syntaxcomplete#Complete |
    	    \	endif
endif
