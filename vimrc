" Must come first because it changes other options.
set nocompatible                " choose no compatibility with legacy vi

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

" To disable a plugin, add it's bundle name to the following list
  let g:pathogen_disabled = []
  "if !has('gui_running')
    call add(g:pathogen_disabled, 'ctrlp')
    call add(g:pathogen_disabled, 'sensible')
  "endif

  runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
  call pathogen#infect()
  call pathogen#helptags()

syntax enable                          " Turn on syntax highlighting.
set background=light                   " Background.
colorscheme Tomorrow-Night             " Color.
filetype plugin indent on              " Turn on file type detection.

runtime macros/matchit.vim             " Load the matchit plugin.

set showcmd                            " Display incomplete commands.
set showmode                           " Display the mode you're in.

set backspace=indent,eol,start         " Backspace through everything in insert mode.

set hidden                             " Handle multiple buffers better.

set wildmenu                           " Enhanced command line completion.
"set wildmode=list:longest,full        " Complete with tab, second tab brings list to tab and s-tab through
set wildmode=list:longest              " Complete files like a shell.

set ignorecase                         " Case-insensitive searching.
set smartcase                          " But case-sensitive if expression contains a capital letter.

set number                             " Show line numbers.
set ruler                              " Show cursor position.

set incsearch                          " Highlight matches as you type.
set hlsearch                           " Highlight matches.

set wrap                               " Turn on line wrapping.
set scrolloff=3                        " Show 3 lines of context around the cursor.

set title                              " Set the terminal's title

set visualbell                         " No beeping.

set nobackup                           " Don't make a backup before overwriting a file.
set nowritebackup                      " And again.
set directory=$HOME/.vim/tmp//,.       " Keep swap files in one location

set tabstop=2                          " Global tab width.
set shiftwidth=2                       " And again, related.
set expandtab                          " Use spaces instead of tabs
set encoding=utf-8

" use comma as <Leader> key instead of backslash
let mapleader=','

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" execute ruby kind of like cmd+b in Sublime
map <leader>r :w ! ruby<cr>

" Automatic fold settings for specific files. Uncomment to use.
"autocmd FileType ruby setlocal foldmethod=syntax
"autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

