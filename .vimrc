" pathogenでftdetectなどをloadさせるために一度ファイルタイプ判定をoff
filetype off
" pathogen.vimによってbundle配下のpluginをpathに加える
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt
" ファイルタイプ判定をon
filetype plugin on


" 検索結果をzzで画面中央に
nmap n nzz 
nmap N Nzz
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz


" neocomplcache
let g:neocomplcache_enable_at_startup = 1
