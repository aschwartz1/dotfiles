let $NVIM = $HOME . "/code/dotfiles/config/nvim"
let g:polyglot_disabled = ['markdown']

set nocompatible
set encoding=utf-8  " Fix special character encoding

"= Plug.vim ====================================================================

  " A minimalist Vim plugin manager.
  " See https://github.com/junegunn/vim-plug for more information

call plug#begin()

  " Vim plugin for the Perl module / CLI script 'ack'
  Plug 'mileszs/ack.vim'
  " Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
  Plug 'dense-analysis/ale'
  " :cherry_blossom: A command-line fuzzy finder
  Plug 'junegunn/fzf',
    \ { 'dir': '~/.fzf', 'do': './install --bin' }
  " fzf :heart: vim
  Plug 'junegunn/fzf.vim'
  " Vim and Neovim plugin to reveal the commit messages under the cursor
  Plug 'rhysd/git-messenger.vim'
  " A vim plugin to display the indention levels with thin vertical lines
  Plug 'Yggdroot/indentLine'
  " A light and configurable statusline/tabline plugin for Vim
  Plug 'itchyny/lightline.vim'
  " A tree explorer plugin for vim.
  Plug 'preservim/nerdtree'
  " Vim script for text filtering and alignment
  Plug 'godlygeek/tabular'
  " commentary.vim: comment stuff out
  Plug 'tpope/vim-commentary'
  " Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
  Plug 'ryanoasis/vim-devicons'
  " Make the yanked region apparent!
  Plug 'machakann/vim-highlightedyank'
  " :flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim.
  Plug 'MaxMEllon/vim-jsx-pretty'
  " endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc
  " Plug 'tpope/vim-endwise'
  " fugitive.vim: A Git wrapper so awesome, it should be illegal
  Plug 'tpope/vim-fugitive'
  " A Vim plugin which shows a git diff in the sign column and stages/previews/undoes hunks and partial hunks.
  Plug 'airblade/vim-gitgutter'
  " :flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim.
  Plug 'MaxMEllon/vim-jsx-pretty'
  " A solid language pack for Vim.
  Plug 'sheerun/vim-polyglot'
  " vim plugin for highliting code in ruby here document
  Plug 'joker1007/vim-ruby-heredoc-syntax'
  " surround.vim: quoting/parenthesizing made simple
  Plug 'tpope/vim-surround'
  " Run your tests at the speed of thought
  Plug 'janko/vim-test'
  " A vim plugin to create your own text objects without pain.
  Plug 'kana/vim-textobj-user'
  " Just use iE for changing inside an erb tag, and aE for changing around it (<% and %> included). NOTE: depends on kana/vim-textobj-user
  Plug 'whatyouhide/vim-textobj-erb'
  " unimpaired.vim: Pairs of handy bracket mappings Plug 'tpope/vim-unimpaired' Seamless navigation between tmux panes and vim splits
  Plug 'christoomey/vim-tmux-navigator'
  " unimpaired.vim: Pairs of handy bracket mappings
  Plug 'tpope/vim-unimpaired'
  " Multiple cursors plugin for vim/neovim
  Plug 'mg979/vim-visual-multi'
  " Conquerer of Completion: Make your Vim/Neovim as smart as VSCode.
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Speed up folding when in syntax mode
  Plug 'Konfekt/FastFold'
  " -v- THEMES -v-
  " Equinusocio's material theme for vim
  Plug 'chuling/vim-equinusocio-material'
  " Plug 'sonph/onehalf', { 'rtp': 'vim' }
  " -^- THEMES -^-
call plug#end()
source $NVIM/appearance.vim
source $NVIM/interaction.vim

source $NVIM/ale.vim
source $NVIM/indent_guides.vim
source $NVIM/nerdtree.vim
source $NVIM/theme.vim
source $NVIM/fzf.vim

source $NVIM/git.vim
source $NVIM/html.vim
source $NVIM/javascript.vim
source $NVIM/json.vim
source $NVIM/ruby.vim
source $NVIM/testing.vim

au BufReadPost,BufNewFile *.md let g:indentLine_enabled = 0
