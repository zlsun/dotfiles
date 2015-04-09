" ~/.spf13-vim-3/.vim/sessions/vimrc.vim:
" Vim session script.
" Created by session.vim 2.7 on 10 一月 2015 at 23:15:51.
" Open this file in Vim and run :source % to restore your session.

set guioptions=agimt
silent! set guifont=Ubuntu\ Mono\ 12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapCloseChildren = "X"
let NERDTreeShowHidden =  1 
let EasyMotion_off_screen_search =  1 
let UltiSnipsUsePythonVersion =  2 
let NERDTreeMapCloseDir = "x"
let EasyMotion_enter_jump_first =  0 
let NERDTreeSortHiddenFirst = "1"
let NERDTreeMinimalUI = "0"
let NERDUsePlaceHolders = "1"
let NERDTreeShowLineNumbers = "0"
let EasyMotion_use_migemo =  0 
let NERDTreeAutoDeleteBuffer =  0 
let EasyMotion_smartcase =  0 
let PreviewCSSPath = ""
let NERDTreeBookmarksFile = "/home/zlsun/.NERDTreeBookmarks"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let EasyMotion_use_upper =  0 
let EasyMotion_do_mapping =  1 
let NERDTreeMapToggleFilters = "f"
let EasyMotion_startofline =  1 
let NERDAllowAnyVisualDelims = "1"
let NERDTreeMapPreview = "go"
let NERDTreeMapActivateNode = "o"
let PreviewTextileExt = "textile"
let PIVAutoClose =  0 
let NERDTreeWinPos = "left"
let EasyMotion_disable_two_key_combo =  0 
let NERDTreeMapMenu = "m"
let EasyMotion_space_jump_first =  0 
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let EasyMotion_use_regexp =  1 
let PreviewRonnExt = "ronn"
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapHelp = "?"
let EasyMotion_move_highlight =  1 
let NERDTreeMapJumpParent = "p"
let NERDTreeAutoCenter = "1"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let NERDTreeMapQuit = "q"
let NERDTreeShowBookmarks =  1 
let NERDMenuMode = "3"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeMapOpenInTab = "t"
let EasyMotion_show_prompt =  1 
let EasyMotion_add_search_history =  1 
let EasyMotion_do_shade =  1 
let DisableAutoPHPFolding =  0 
let PreviewRstExt = "rst,reStructuredText,restructuredtext"
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeShowFiles = "1"
let NERDTreeMapOpenSplit = "i"
let EasyMotion_skipfoldedline =  1 
let NERDTreeCaseSensitiveSort = "0"
let NERDTreeKeepTreeInNewTab =  1 
let NERDTreeHijackNetrw =  0 
let NERDTreeMapRefresh = "r"
let NERDTreeBookmarksSort = "1"
let NERDTreeHighlightCursorline = "1"
let NERDLPlace = "[>"
let NERDTreeMouseMode =  2 
let NERDRemoveExtraSpaces = "0"
let NERDCreateDefaultMappings = "1"
let NERDTreeRespectWildIgnore = "0"
let NERDTreeMapCWD = "CD"
let NERDTreeMapPreviewVSplit = "gs"
let NERDShutUp =  1 
let NERDTreeNotificationThreshold = "100"
let NERDTreeChDirMode =  0 
let NERDTreeMapJumpRoot = "P"
let NERDCommentWholeLinesInVMode = "0"
let NERDTreeMapChdir = "cd"
let NERDRPlace = "<]"
let NERDTreeMapToggleZoom = "A"
let NERDDefaultNesting = "1"
let NERDTreeMapRefreshRoot = "R"
let EasyMotion_cursor_highlight =  1 
let EasyMotion_grouping =  1 
let NERDRemoveAltComs = "1"
let NERDTreeMapJumpLastChild = "J"
let NERDTreeCascadeOpenSingleChildDir = "1"
let NERDTreeMapOpenVSplit = "s"
let NERDTreeMapDeleteBookmark = "D"
let NERDBlockComIgnoreEmpty = "0"
let NERDTreeMapJumpNextSibling = "<C-j>"
let PreviewBrowsers = "firefox,safari,chromium-browser,epiphany,google-chrome,opera"
let EasyMotion_inc_highlight =  1 
let NERDSpaceDelims = "0"
let NERDTreeCopyCmd = "cp -r "
let NERDTreeMapChangeRoot = "C"
let NERDCompactSexyComs = "0"
let NERDTreeSortDirs = "1"
let NERDTreeMapToggleFiles = "F"
let EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
let NERDTreeDirArrows = "1"
let EasyMotion_force_csapprox =  0 
let EasyMotion_loaded =  1 
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let PreviewRdocExt = "rdoc"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let PreviewHtmlExt = "html,htm,xht,xhtm,xhtml"
let PreviewMarkdownExt = "markdown,md,mkd,mkdn,mdown"
let NERDTreeMapUpdir = "u"
let NERDTreeMapUpdirKeepOpen = "U"
let EasyMotion_landing_highlight =  0 
let NERDTreeQuitOnOpen =  1 
let EasyMotion_prompt = "Search for {n} character(s): "
silent only
cd /etc/apt
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +80 ~/.vimrc
silent! argdel *
set lines=33 columns=164
winpos 47 24
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
file .vimrc.local
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
snoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>snoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>setlocal keymap=
snoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>snoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
snoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>let s:cpo_save=&cpo
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<NL>xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")<NL>nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")<NL>xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<NL>nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
snoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>snoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>snoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<NL>xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")<NL>nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")<NL>xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<NL>nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")<NL>let &cpo=s:cpo_save
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#ui_glue#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#ui_glue#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#ui_glue#invokeKeyMap("<MiddleRelease>")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=i
setlocal conceallevel=2
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#,-,.
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filmnrxoOtTI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
