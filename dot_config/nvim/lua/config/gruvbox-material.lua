vim.cmd([[
  set background=dark
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_better_performance = 1
  let g:gruvbox_material_diagnostic_text_highlight = 1
  let g:gruvbox_material_diagnostic_virtual_text = "colored"
  let g:gruvbox_material_sign_column_background = 'none'
  let g:gruvbox_material_enable_bold = 1
  let g:gruvbox_material_enable_italic = 1
  if !has('gui')
    let g:gruvbox_material_transparent_background = 1
  endif
]])
