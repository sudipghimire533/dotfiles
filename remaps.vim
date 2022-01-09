" Easy buffer switching
nnoremap <silent> <Leader><Tab>  :bnext<CR>
nnoremap <silent> <Leader><S-Tab> :bprevious<Cr>
nnoremap <silent> <Tab>   <C-^>

"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

" Esc escapes from embeded terminal
tnoremap <Esc> <C-\><C-n>

" Lsp remaps
nnoremap <silent>  <Space>gr :Lspsaga lsp_finder<CR>
nnoremap <silent> <Space>ca :Lspsaga code_action<CR>
vnoremap <silent> <Space>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent>   K :Lspsaga hover_doc<CR>
nnoremap <silent> <Space>gs :Lspsaga signature_help<CR>
nnoremap <silent> <C-down> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-uP> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> <Space>rn :Lspsaga rename<CR>
nnoremap <silent> <Space>gp :Lspsaga preview_definition<CR>
nnoremap <silent> <Space>e :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

" Floatterms keybindings
let g:floaterm_keymap_new='<Space>tn' " Prefix termfloat maps with <Space>t n(ew)
let g:floaterm_keymap_next='<Space>tl' " l => left in vim navigation
let g:floaterm_keymap_prev='<Space>th' " h => right in vim navigation
let g:floaterm_keymap_kill='<Space>tt' " c(lose)
let g:floaterm_keymap_first='<Space>t0' " 0(first of number)
let g:floaterm_keymap_last='<Space>t9' " 9(last of number)
let g:floaterm_keymap_show='<Space>ts' " s(how)
let g:floaterm_keymap_hide='<Space>th' " h(ide)
