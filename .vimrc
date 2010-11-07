""------------------------------------
"" pathogen.vim
""------------------------------------
" pathogenでftdetectなどをloadさせるために一度ファイルタイプ判定をoff
filetype off
" pathogen.vimによってbundle配下のpluginをpathに加える
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt
" ファイルタイプ判定をon
filetype plugin on

""------------------------------------
"" Mapping
""------------------------------------
" 検索結果を画面中央に
nmap n nzz 
nmap N Nzz
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz
" F1キーを無効化
nmap <F1> <nop>
" Ctrl-dをDeleteに
imap <C-d> <Del>

" ESCの2回押しでハイライト消去
nmap <ESC><ESC> :nohlsearch<CR><ESC>

" Ctrl-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


""------------------------------------
"" NeoComplCache.vim
""------------------------------------
let g:neocomplcache_enable_at_startup = 1
imap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<Tab>"


""------------------------------------
"" NERDTree.vim
""------------------------------------
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

""------------------------------------
"" surround.vim
""------------------------------------
" s, ssで選択範囲を指定文字でくくる
nmap s <Plug>Ysurround
nmap ss <Plug>Yssurround


""------------------------------------
"" hatena.vim
""------------------------------------
:let g:hatena_user='eggxile'



" 入力モード時、ステータスラインのカラーを変更
augroup InsertHook
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
  autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
