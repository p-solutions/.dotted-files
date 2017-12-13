source ~/.dotted-files/.vim/.vim_vundle_plugins
" Always show statusline
set laststatus=2
"
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Turnon pathogen
"execute pathogen#infect()
syntax on

" Add to path current dir and all subfolders
set path+=**
"Show all matching files when we tabcomplete
set wildmenu

" Solve problem with backspace
set backspace=2 " make backspace work like most other apps

	" Set encoding
	if has("multi_byte")
		if &termencoding == ""
			let &termencoding = &encoding
		endif
		set encoding=utf-8
		setglobal fileencoding=utf-8
		" setglobal bomb
		set fileencodings=ucs-bom,utf-8,latin1
	endif

set splitright
set splitbelow

	" Setting-up a color scheme
	" colorscheme evening
	" colorscheme ron
	colorscheme jellybeans

	" Showing line numbers
	set number
	set numberwidth=5
	set relativenumber

	" Tabspace
	" Set tabstop to tell vim how many columns a tab counts for.
	" Linux kernel code expects each tab to be eight columns wide.
	" Visual Studio expects each tab to be four columns wide.
	" This is the only command here that will affect how existing text displays.
	set tabstop=4
	" Set shiftwidth to control how many columns text is indented with the reindent
	" operations (<< and >>) and automatic C-style indentation.
	set shiftwidth=4
	"set expandtab
	" When expandtab is set, hitting Tab in insert mode will produce
	" the appropriate number of spaces.
	"set noexpandtab "- converts tabs into spaces
	"Set softtabstop to control how many columns vim uses when you hit Tab in insert
	"mode. If softtabstop is less than tabstop and expandtab is not set, vim will
	"use a combination of tabs and spaces to make up the desired spacing. If
	"softtabstop equals tabstop and expandtab is not set, vim will always use tabs.
	"When expandtab is set, vim will always use the appropriate number of spaces.
	"set softtabstop=4

	" Setting text-width
	set textwidth=80
	set colorcolumn=+1

	" Use word wraping and linebrakes
	set wrap
	set linebreak

	" Show invisible characters
	" to instert unicode character in insert mode use crtl+vu number
	set list
	" set listchars=tab:→,eof:↲
	" set listchars=tab:»·,trail:·, eof:↲·
	"set listchars=tab:▸\ ,space:␣,trail:·,eol:¬ "form vim verion 4.7.7
	set listchars=tab:▸\ ,trail:·,eol:¬

" set X11 clipboard
" set clipboard=unnamedplus

" seting cursorline
set cursorline

" setting *.mkd
"augroup mkd
"    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
"augroup END

" Dictionaries online:
" :Dict [word]
" :DictShowDb
" https://www.maketecheasier.com/8-vim-plugins-to-enhance-your-productivity/
let g:dict_hosts = [
		\["dict.org", ["fd-deu-eng"]]
	\]

" Vim-table-mode

let g:table_mode_corner="|"

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=0         "what I use
" Use smart indentation
set smartindent


source ~/.dotted-files/.vim/.vim_file_types_settings

source ~/.dotted-files/.vim/.vim_custom_mappings

let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'pdflatex'

" Run

"http://vim.wikia.com/wiki/Append_output_of_an_external_command
:command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

let NERDTreeQuitOnOpen=1
