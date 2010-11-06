"文字コード
set enc=utf-8
set fenc=utf-8

set laststatus=2  "常にステータスラインを表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set nu      "行数表示
set nolist  "タブや改行は表示しない

set tabstop=2 shiftwidth=2 softtabstop=0
set expandtab
set autoindent smartindent

set noswapfile  "スワップファイルを作らない
set backspace=indent,eol,start

set wildmenu
set wildmode=list:full

set wrapscan
set ignorecase
set incsearch
set hlsearch

set showmatch "括弧の対応をハイライト
set showcmd   "入力中のコマンドを表示
set number    "行番号を表示

nmap <F1> <nop> "F1キーを無効化





"ウィンドウ------------------------------
set cmdheight=1 "コマンドラインの高さ
set splitbelow  "横分割は下に
set splitright  "縦分割は右に

"タブ------------------------------------
set nobackup    "バックアップファイルを作らない

"ビープ音を消す---------------------
set visualbell t_vb= 


"C-dでDelete--------------------
imap <C-d> <Del>



"カーソル行だけハイライト--------------
set cursorline
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CursorLine gui=underline

"ESCの2回押しでハイライト消去----------
nmap <ESC><ESC> :nohlsearch<CR><ESC>


"C-hjklでウィンドウ移動----------------
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" フォールド設定--------------------
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99



set showtabline=2 "タブを常に表示
set imdisable "IMEをdisableに
set iminsert=0 imsearch=0
set lines=40
set columns=120
colorscheme ir_black
set guifont=Monaco:h12  "フォント
set antialias
set transparency=10
set guioptions-=T  "ツールバー削除


"------------------------------------
" neocomplcache
"------------------------------------
imap <expr><Tab> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<Tab>"


" vimball install setting
" ディレクトリ名変更忘れずに
let g:vimball_home = "/Users/Yuta/.vim/bundle/new_plugin"



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
