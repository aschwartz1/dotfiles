"= RUBY ========================================================================

  let g:ruby_path = system('echo $HOME/.rbenv/shims')

  autocmd FileType conf set filetype=ruby

  au BufRead,BufNewFile *.jbuilder setf ruby
  au BufNewFile,BufRead *.rb.example set filetype=ruby
  au BufNewFile,BufRead *.csv.ruby set filetype=ruby
  au BufNewFile,BufRead *.axlsx set filetype=ruby

  " quick insert hashrocket
  imap <c-l> <space>=><space>

  " insert a binding.pry under cursor
  " map <Leader>d orequire "pry"<cr>binding.pry<cr><esc>:w<cr>
  " map <Leader>d orequire "pry"; binding.pry<esc>
  map <Leader>d obinding.pry<esc>
  map <Leader>e obinding.remote_pry<esc>

  " bundle
  map <Leader>bb :term bundle install<cr>

  " Use Shell for .env files
  au BufRead,BufNewFile .env.local,.env.development,.env.test,.env.production setf sh

  " Add normal mode mappings to insert multi-line erb tags
  nnoremap == i<%=  %><esc>o<% end %><esc>khhi
  nnoremap =- i<%  %><esc>o<% end %><esc>khhi
  nnoremap =e i<% end %><esc>

  " Add insert mode mappings to insert singe-line erb tags
  " inoremap ==<tab> <%=  %><left><left><left>
  " inoremap =-<tab> <%  %><left><left><left>
