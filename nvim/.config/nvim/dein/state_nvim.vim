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
