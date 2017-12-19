" interface -------------------------------------
	" formatting
	syntax on
	set clipboard=unnamedplus
	set nowrap
	set tabstop=4
	set softtabstop=4
	set hlsearch
	set incsearch
	set wildmenu
	set wildmode=list:longest,full
	set gdefault
	
	" appearance
	set list listchars=tab:\│\ ,trail:·
	set showtabline=2
	set showcmd
	set number

	" behavior
	set mouse=a
	set t_Co=256
	"set autoindent
	set scrolloff=0
	set scrolljump=1
	set laststatus=2
"	set noshowmode
	
	call plug#begin()
	"Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	
	Plug 'powerline/powerline',{'rtp':'powerline/bindings/vim/'}

	"Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
	call plug#end()

" mappings --------------------------------------
	" disable arrow keys
	nmap <up> :m .-2<CR>== 
	nmap <down> :m .+1<CR>==
	nmap <left> <Nop>
	nmap <right> <Nop>
	imap <up> <Nop>
	imap <down> <Nop>
	imap <left> <Nop>
	imap <right> <Nop>
	" toggle autoindent
	nnoremap <F8> :setl noai nocin nosi inde=<CR>

" colors ----------------------------------------
	"solid color background
	hi Normal guibg=NONE ctermbg=black
	colorscheme monokai
	highlight SpecialKey ctermfg=8 ctermbg=NONE
