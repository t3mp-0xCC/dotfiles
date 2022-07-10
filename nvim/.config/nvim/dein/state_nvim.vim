if g:dein#_cache_version !=# 410 || g:dein#_init_runtimepath !=# '/home/t3mp/.config/nvim,/etc/xdg/nvim,/home/t3mp/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/t3mp/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/t3mp/.config/nvim/after,/usr/share/vim/vimfiles,/home/t3mp/.config/nvim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#min#_load_cache_raw(['/home/t3mp/.config/nvim/init.vim', '/home/t3mp/.config/nvim/dein/plugins.toml', '/home/t3mp/.config/nvim/dein/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/t3mp/.config/nvim/dein'
let g:dein#_runtime_path = '/home/t3mp/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/t3mp/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/t3mp/.config/nvim,/etc/xdg/nvim,/home/t3mp/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/t3mp/.config/nvim/dein/repos/github.com/neoclide/coc.nvim_release,/home/t3mp/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/t3mp/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/t3mp/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/t3mp/.config/nvim/after,/usr/share/vim/vimfiles,/home/t3mp/.config/nvim/dein/repos/github.com/Shougo/dein.vim'
filetype off
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
  let g:airline_theme = 'base16_gruvbox_dark_hard'
  " change status line
  let g:airline#extensions#default#layout = [ [ 'a', 'b', 'c' ], ['z'] ]
  let g:airline_section_c = '%t %M'
  let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty='⚡'
