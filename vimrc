"" Pathogen
filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"" expand % matching
runtime macros/matchit.vim

"" normal options
set nocompatible		            " chose no compatibility with legacy vi
syntax enable                       " syntax highlighting on
set encoding=utf-8
set showcmd			                " display incomplete commands
filetype on                         " try to defect filetypes
filetype plugin indent on           " load file type plugins + indentation

"" Whitespace
set nowrap			                " don't wrap lines
set backspace=indent,eol,start	    " backspace through everyting in insert mode
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"" Searching
set hlsearch			            " highlight matches
set incsearch			            " incremental searching
set ignorecase			            " searches are case insensitive...
set smartcase			            " ... unless they contain at least one capital letter

"" french keyboard settings
let mapleader = "ù"

"" Code folding
set foldmethod=indent
set foldlevel=99

""" comment and uncomment
"vnoremap # :s#^#\##<cr>
"vnoremap -# :s#^\###<cr>

"" moving around windows  without ctrl + w first
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"" task lists
map <leader>td <Plug>TaskList

"" revision history
map <leader>g :GundoToggle<CR>

"" syntax highlight and validation
" let g:pyflakes_use_quickfix = 0   " do not use the quickfix window
let g:pep8_map='<leader>8'          " pep8 validation

"" tab completion and documentation [supertab]
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"" code navigation [file browser]
map <leader>n :NERDTreeToggle<CR>
"" [refactoring and go to definition]
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
"" searching
nmap <leader>a <Esc>:Ack!

"" Git integration
set statusline=%{fugitive#statusline()}

"" test integration with makegreen (need to personalize)
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
"" [pytest], more complete than MakeGreen but MakeGreen should be enough here.
" Execute the tests
" nmap <silent><Leader>tf <Esc>:Pytest file<CR>
" nmap <silent><Leader>tc <Esc>:Pytest class<CR>
" nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
" nmap <silent><Leader>tn <Esc>:Pytest next<CR>
" nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
" nmap <silent><Leader>te <Esc>:Pytest error<CR>

""virtual environment support
" Add the virtualenv's site-packages to vim path
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(0, project_base_dir)
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme xoria256
