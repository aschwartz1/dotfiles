"- Theme =======================================================================

  set background=dark

"- Italics =====================================================================

  " From https://www.reddit.com/r/vim/comments/24g8r8/italics_in_terminal_vim_and_tmux/
  " Step #4
  set t_ZH=[3m
  set t_ZR=[23m

  highlight Comment gui=italic
  highlight Comment cterm=italic

  " Press F3 while the cursor is over an attribute - it'll list out the
  " attribute name and the color for highlight adjustments
  map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

  " if you prefer the default one, comment out this line
  " let g:equinusocio_material_darker = 1

  " make vertsplit invisible
  let g:equinusocio_material_hide_vertsplit = 1

  colorscheme equinusocio_material

  highlight rubySymbol guifg=#f78c6c
  highlight rubyKeywordAsMethod guifg=#f78c6c

  highlight elixirAtom guifg=#c3e88d

  highlight elixirComment gui=italic guifg=#546e7a
  highlight elixirDocString gui=italic guifg=#546e7a
  highlight elixirVariable gui=italic guifg=#ffcb6b


  " this theme has a buildin lightline theme, you can turn it on
  let g:lightline = {
    \ 'colorscheme': 'equinusocio_material',
    \ }

  " Lightline
  set noshowmode


  " Set background & foreground colors for folds
  highlight Folded guibg=#444444
  highlight Folded guifg=#c0c0c0
