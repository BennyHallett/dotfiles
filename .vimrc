" Freshly Baked VimRC

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Setup
"""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'

silent! map <unique> <Leader>rm :Vmodel<CR>
silent! map <unique> <Leader>rv :Vview<CR>
silent! map <unique> <Leader>rc :Vcontroller<CR>
silent! map <unique> <Leader>rt :Rails console<CR>
silent! map <unique> <Leader>rs :Rails server<CR>
silent! map <unique> <Leader>rx :Rextract 
silent! map <unique> <Leader>rgc :Rgenerate controller 
silent! map <unique> <Leader>rgm :Rgenerate model 
silent! map <unique> <Leader>rgg :Rgenerate migration 
silent! map <unique> <Leader>rgj :Rgenerate job 

silent! map <unique> <Leader>c :so coverage.vim<CR>

silent! map <unique> <Leader>k :!bundle exec rake<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Elixir
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'elixir-lang/vim-elixir'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Web
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'cakebaker/scss-syntax'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'lukaszb/vim-web-indent'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Redis
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'junegunn/vim-redis'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Postgres
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'exu/pgsql.vim'
autocmd BufNewFile,BufRead *.sql setf pgsql

"""""""""""""""""""""""""""""""""""""""""""""""""
" General Editing
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'tpope/vim-speeddating'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Infrastructure
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'sclo/haproxy.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Dev Tools
"""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'tpope/vim-fugitive'
silent! map <unique> <Leader>gs :Gstatus<CR>
silent! map <unique> <Leader>gb :Gblame<CR>
silent! map <unique> <Leader>gr :Ggrep 

autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
autocmd FileType markdown set tw=80

""""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""""

Plugin 'kien/ctrlp.vim.git'
let g:ctrlp_match_window_bottom = 1    " Show at bottom of window
  let g:ctrlp_working_path_mode = 'ra'   " Our working path is our VCS project or the current directory
  let g:ctrlp_mru_files = 1              " Enable Most Recently Used files feature
  let g:ctrlp_jump_to_buffer = 2         " Jump to tab AND buffer if already open
  let g:ctrlp_open_new_file = 'v'        " open selections in a vertical split
  let g:ctrlp_open_multiple_files = 'vr' " opens multiple selections in vertical splits to the right
  let g:ctrlp_arg_map = 0
  let g:ctrlp_dotfiles = 0               " do not show (.) dotfiles in match list
  let g:ctrlp_showhidden = 0             " do not show hidden files in match list
  let g:ctrlp_split_window = 0
  let g:ctrlp_max_height = 40            " restrict match list to a maxheight of 40
  let g:ctrlp_use_caching = 0            " don't cache, we want new list immediately each time
  let g:ctrlp_max_files = 0              " no restriction on results/file list
  let g:ctrlp_working_path_mode = ''
  let g:ctrlp_dont_split = 'NERD_tree_2' " don't split these buffers
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|gitkeep)$',
    \ 'file': '\v\.(exe|so|dll|log|gif|jpg|jpeg|png|psd|DS_Store|ctags|gitattributes)$'
    \ }
  "let g:ctrlp_user_command = 'find %s -type f'
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-e>', '<c-space>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("t")': ['<c-t>'],
    \ 'AcceptSelection("v")': ['<cr>'],
    \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
    \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
    \ 'PrtHistory(-1)':       ['<c-n>'],
    \ 'PrtHistory(1)':        ['<c-p>'],
    \ 'ToggleFocus()':        ['<c-tab>'],
    \}

map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>


""""""""""""""""""""""""""""""""""
" Status Line
""""""""""""""""""""""""""""""""""

Plugin 'bling/vim-airline'
  set laststatus=2
  let g:airline_theme='luna'
  let g:airline_powerline_fonts=1
  let g:airline_enable_branch=1
  let g:airline_enable_syntastic=1
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_linecolumn_prefix = '␊ '
  let g:airline_linecolumn_prefix = '␤ '
  let g:airline_linecolumn_prefix = '¶ '
  let g:airline_branch_prefix = '⎇ '
  let g:airline_paste_symbol = 'ρ'
  let g:airline_paste_symbol = 'Þ'
  let g:airline_paste_symbol = '∥'
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#section_b = "%{fugitive#statusline()}"

""""""""""""""""""""""""""""""""""
" Colouring
""""""""""""""""""""""""""""""""""

Plugin 'chriskempson/base16-vim'
Plugin 'dandorman/vim-colors'

"""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Cleanup
"""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Settings
"""""""""""""""""""""""""""""""""""""""""""""""""

set number
set relativenumber
set tabstop=2
set expandtab
set shiftwidth=2
set syntax=on
set t_co=256
"set giuoptions="agimrLt"
set mouse=""
set t_ut=
set background=dark
syntax enable
set enc=utf8
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
set scrolloff=3
set iskeyword+=-


"""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""

silent! map <unique> <Leader>s :set spell!<CR>
silent! map <unique> <C-c> :q<CR>
