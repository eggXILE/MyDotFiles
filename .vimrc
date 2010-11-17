""------------------------------------
"" Basis
""------------------------------------
set nocompatible "viとの互換性を無効
set nobackup    "バックアップファイルを作らない
set noswapfile  "スワップファイルを作らない
set backspace=indent,eol,start "BSでインデント等消す
set visualbell t_vb= "ビープ音を消す
set clipboard+=unnamed "クリップボードを使用
set clipboard=unnamed "ヤンクをクリップボードへ
set autoread "更新を自動読込


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
filetype plugin indent on


""------------------------------------
"" Apperance
""------------------------------------
set number    "行番号を表示
set showmatch "括弧の対応をハイライト
"カーソル行だけハイライト--------------
set cursorline
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END



""------------------------------------
"" Indent
""------------------------------------
set autoindent smartindent "自動インデント、次の行も同じ量のインデント
set tabstop=2 shiftwidth=2 softtabstop=0 "インデント量



""------------------------------------
"" Completion
""------------------------------------
set wildmenu "コマンド補完
set wildmode=list:full "リスト表示、最長マッチ
set wildchar=<Tab> "Tabで補完
set history=1000 "履歴数

""------------------------------------
"" Search
""------------------------------------
set wrapscan "最後まで検索したら先頭へ
set ignorecase "大文字小文字無視
set incsearch "インクリメンタルサーチ
set hlsearch "検索結果をハイライト

""------------------------------------
"" Encoding
""------------------------------------
set enc=utf-8
set fenc=utf-8

""------------------------------------
"" Fold
""------------------------------------
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99

""------------------------------------
"" Window
""------------------------------------
set cmdheight=1 "コマンドラインの高さ
set splitbelow  "横分割は下に
set splitright  "縦分割は右に
set showcmd   "入力中のコマンドを表示
set showtabline=2 "タブを常に表示
set imdisable "IMEをdisableに
set iminsert=0 imsearch=0
set antialias
set nu      "行数表示
set nolist  "タブや改行は表示しない
set expandtab "Tabをスペースに変換
set laststatus=2  "常にステータスラインを表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
let g:vimball_home = "/Users/Yuta/.vim/bundle/new_plugin" " vimball install setting



set guioptions-=T  "ツールバー削除


""------------------------------------
"" Mapping
""------------------------------------
" 移動後画面中央に
nnoremap n nzz 
nnoremap N Nzz
nnoremap * *zz 
nnoremap # #zz 
nnoremap g* g*zz 
nnoremap g# g#zz
" F1キーを無効化
nnoremap <F1> <nop>
" Ctrl-dをDeleteに
inoremap <C-d> <Del>

" ESCの2回押しでハイライト消去
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

" Ctrl-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
" セミコロンをコロン扱いに
noremap ; :
noremap : ;
" 論理行移動と表示行移動を入れ替え
noremap j gj
noremap k gk
noremap gj j
noremap gk k
" 最後に変更したテキストを選択
nnoremap gc `[v`]
vnoremap gc :<C-u>normal gc<Enter>
onoremap gc :<C-u>normal gc<Enter>


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


""------------------------------------
"" NERD_commenter.vim
""------------------------------------
let NERDSpaceDelims = 1 " コメントの前にスペース



" 入力モード時、ステータスラインのカラーを変更
augroup InsertHook
  autocmd!
  autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
  autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

