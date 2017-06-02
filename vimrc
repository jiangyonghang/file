set nu
set autoindent
set cindent
set incsearch
set tabstop=4
set shiftwidth=4

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

