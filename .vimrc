""""""""""""""""""""""""""""""""""
" @bennyhallett's vimrc
" Based off @knewter's at
" http://www.isotope11.com/blog/rebuilding-my-vim-setup-from-scratch
"
"
" VUNDLE
""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""
" File Types
""""""""""""""""""""""""""""""""""

Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'lukaszb/vim-web-indent'
Plugin 'tpope/vim-haml'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
"Plugin 'junegunn/vim-emoji'

autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
autocmd FileType markdown set tw=80

""""""""""""""""""""""""""""""""""
" Utilities
""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
Plugin 'skalnik/vim-vroom'
  let g:vroom_map_keys = 0
  silent! map <unique> <Leader>t :VroomRunTestFile<CR>
  silent! map <unique> <Leader>T :VroomRunNearestTest<CR>
  silent! map <unique> <Leader>l :VroomRunLastTest<CR>

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
" Code Formatting and Prettyness
""""""""""""""""""""""""""""""""""

Plugin 'tpope/vim-endwise'
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
Plugin 'chriskempson/base16-vim'
Plugin 'dandorman/vim-colors'


call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""
" Git Settings
""""""""""""""""""""""""""""""""""

silent! map <unique> <Leader>gs :Gstatus<CR>
silent! map <unique> <Leader>gb :Gblame<CR>
silent! map <unique> <Leader>gr :Ggrep 


""""""""""""""""""""""""""""""""""
" Rails Settings
""""""""""""""""""""""""""""""""""

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

""""""""""""""""""""""""""""""""""
" Editor Settings
""""""""""""""""""""""""""""""""""

set tabstop=2
set expandtab
set shiftwidth=2
set syntax=on
set relativenumber
set t_Co=256
set guioptions="agimrLt"
set mouse=""
set t_ut=
set background=dark
syntax enable
colorscheme molokai
set enc=utf-8
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

silent! map <unique> <Leader>s :set spell!<CR>
silent! map <unique> <Leader>k :!bundle exec rake<CR>
silent! map <unique> <Leader>m :!mix test<CR>

map <C-N> :vsp .<CR>
map <C-C> :q<CR>

set scrolloff=3
set iskeyword+=-

