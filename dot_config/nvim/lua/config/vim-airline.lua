vim.cmd([[
  " show tabline
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_buffers = 1
  " 0でそのタブで開いてるウィンドウ数、1で左のタブから連番
  let g:airline#extensions#tabline#tab_nr_type = 1
  " show tab index number
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  " パワーラインフォントの使用
  let g:airline_powerline_fonts = 1
  " aleの表示
  let g:airline#extensions#ale#enabled = 1
  " Do not collapse the status line while having multiple windows
  let g:airline_inactive_collapse = 0
  " tagbarの表示
  "let g:airline#extensions#tagbar#enabled = 1
  " virtualenvを有効
  let g:airline#extensions#virtualenv#enabled = 1
  " set airline theme
  let g:airline_theme = 'gruvbox_material'
  " change status line
  let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
  let g:airline_section_c = '%t %M'
  let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty='⚡'
]])

