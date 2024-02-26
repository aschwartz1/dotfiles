"= Interaction==================================================================

  set ttyfast                  " improve screen refresh for terminal vim
  set lazyredraw               " don't redraw while executing macros. async window title update

  set scrolloff=3              " start scrolling 3 lines from bottom
  set sidescrolloff=6          " start scrolling 6 lines from right
  let loaded_match_paren = 1   " highlight matching parens

  set mouse=a                  " allow mouse usage
  set clipboard=unnamed        " set default yank register to machine clipboard

  set foldmethod=syntax
  set foldnestmax=10
  set foldlevel=10
  set nofoldenable             " disable automaic folding when vim is opened


  set splitright               " vsplit splits to right side
  set splitbelow               " split splits to bottom

  set noswapfile               " don't create swap files
  set autowrite                " write the old file out when switching between files

  " auto strip whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

  " disable F1 help, due to me hitting it when going for ESC
  nmap <F1> <nop>

  " if has('nvim')
  "   nmap <BS> <C-W>h
  " endif

"= Keys ========================================================================

  let mapleader = ' '                       " set <Leader> as <Space>
  set backspace=indent,eol,start            " make backspace behave as expected

  " easy splits and switches over (\v)
  nnoremap <leader>v <C-w>v
  nnoremap <leader>h <C-w>s<C-w><C-w>
  nnoremap <leader>q :vsplit<cr> :term<cr>

  " map esc to a, can be useful for when I'm using the Atreus keyboard
  " imap aa <esc>

  " disable line joining b/c of my fingers
  " nnoremap <S-j> <Nop>

  " keep cursor on middle line when going to next search result
  nnoremap n nzzzv
  nnoremap N Nzzzv

  " keep cursor on line & column when joining lines
  nnoremap J mzJ`z

  " shift lines up/down, match indentation & keep cursor position when in normal mode
  nnoremap <leader>k mz:m .-2<CR>`z
  nnoremap <leader>j mz:m .+1<CR>`z

  " shift lines up/down and match indentation when in visual mode
  vnoremap K :m '<-2<CR>gv=gv
  vnoremap J :m '>+1<CR>gv=gv

  " shift lines up/down, match indentation & keep cursor position when in insert mode
  inoremap <C-k> <esc>lmz:m .-2<CR>`zi
  inoremap <C-j> <esc>lmz:m .+1<CR>`zi

  " search navigation
  nnoremap <Space>[ :cp<cr>
  nnoremap <Space>] :cn<cr>

  " kill the trailing whitespace
  nnoremap <leader>rtw :%s/\s\+$//e<CR>

  " toggle Paste mode, comments above b/c of Vim's interpretation of them jumping my cursor
  nnoremap <F6> :set paste!<cr>
  " toggle No Highlight mode, comments above b/c of Vim's interpretation of them jumping my cursor
  nnoremap <F7> :noh<cr>

  " quick switch file
  nnoremap <leader><leader> <c-^>

  " if we have it, use silver-searcher for ack
  if executable("ag")
    let g:ackprg = 'ag --vimgrep'
  end

  " a little trick to pull in the filename and save it to the clipboard
  nnoremap yp o<c-R>%<esc>:le<cr>dd

