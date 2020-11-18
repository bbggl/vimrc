"
" __  __        __     _____ __  __ ____   ____ 
"|  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| | | | |  \ \ / / | || |\/| | |_) | |    
"| |  | | |_| |   \ V /  | || |  | |  _ <| |___ 
"|_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"        |___/                                  
"
set nocompatible   """最基础的(关闭兼容vi,有一定副作用,所以放在行首)
let mapleader=" "
syntax on
set number 
set relativenumber
set cursorline
"highlight CursorLine    ctermbg=black 
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
set wrap
set wildmenu 
set hlsearch
set incsearch
set ignorecase
set smartcase



set mouse=a   """ r v
"set clipboard=unnamedplus       """-xterm_clipboard 其他版本支持本版本不支持
set showcmd   """此行放在nocompatible之后才起作用   """(:verbose setnumber?)
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set autoindent
"colorscheme desert
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=10
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"大括号自动补全并缩进,方法1. 按 '{ + 回车' , 方法2. '} + 回车'
imap {<CR> {<CR>}<ESC>O


exec "nohlsearch"












map tx :r !figlet 
map ,f :<esc>/<++><cr>:nohlsearch<cr>c4l
map Q :q<CR>
map W :w<CR>
map E :q!<CR>
map R :source $MYVIMRC<CR>
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
map sv <C-w>t<C-w>K
map sh <C-w>t<C-w>H
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map <LEADER>fd /\(\<\w\+\>\)\_s*\1<CR>
map <LEADER>fs :set spell!<CR>
inoremap <C-x> <esc>ea<C-x>s
"z=
map ` ~h
map ; :
""map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
map tu :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>



















noremap <LEADER><CR> :nohlsearch<CR>
""noremap <C-j> 0
noremap - $
noremap n nzz
noremap N Nzz
""noremap <C-x> ea<C-x>s
""inoremap <C-x> <ESC>ea<C-x>s
"noremap <C-o> <C-i>
"noremap <C-i> <C-o>


vnoremap Y "+y
vnoremap P "+p

"inoremap <C-i> <Up>
"inoremap <C-k> <Down>
"inoremap <C-l> <Right>
"inoremap <C-j> <Left>
"inoremap <C-u> <PageUp>
"inoremap <C-o> <PageDown>
"inoremap <C-j> <ESC>0i
"inoremap <C-;> <ESC>&i




call plug#begin("~/.vim/plugged")



Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
"Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'



 
" Auto Complete
"Plug 'Caloric/YouCompleteMe'
Plug 'neoclide/coc.nvim',{'branch': 'release'}

" Undo Tree
"Plug 'mbbill/undotree/'

" Other visual enhancement
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
"Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
"Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'pangloss/vim-jaosascript', { 'for' :['javascript', 'vim-plug'] }
"Plug 'mattn/emmet-vim'

"snippet
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Python
Plug 'vim-scripts/indentpython.vim'






" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'










" Bookmarks
"Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'mg979/vim-visual-multi',{'branch':'master'}
"Plug 'terryma/vim-multiple-cursors'
"Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
"Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
"Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'kana/vim-textobj-user'
"Plug 'fadein/vim-FIGlet'

Plug 'voldikss/vim-floaterm'







call plug#end()


colors snazzy


" ===
" === floaterm
" ===
"let g:floaterm_keymap_new    = '<F9>'
"let g:floaterm_keymap_prev   = '<F10>'
"let g:floaterm_keymap_next   = '<F11>'
"let g:floaterm_keymap_toggle = '<F12>'
nnoremap   <silent>   <F7>    :FloatermNew<CR>
nnoremap   <silent>   tr    :FloatermNew ranger<CR>
nnoremap   <silent>   tf    :FloatermNew fzf<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F10>   :FloatermToggle<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermToggle<CR>
"let g:floaterm_keymap_new    = '<leader>t'
"let g:floaterm_keymap_prev   = '<leader>j'
"let g:floaterm_keymap_next   = '<leader>l'
"let g:floaterm_keymap_toggle = '<leader>q'

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'



" ===
" ===coc-snippets
" ===
"imap <C-l> <Plug>(coc-snippets-expand)
"vmap <C-e> <Plug>(coc-snippets-select)
"let g:coc_snippet_next = '<c-e>'
"let g:coc_snippet_prev = '<c-n>'
"imap <C-e> <Plug>(coc-snippets-expand-jump)
"let g:snips_author = 'David Chen'
"autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

imap <C-s> <Plug>(coc-snippets-expand)
vmap <C-l> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<C-l>'
let g:coc_snippet_prev = '<C-k>'
imap <C-l> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'plx'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc



" ===
" === vim-instant-markdown
" ===
let g:mkdp_browser = 'chromium'
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
let g:instant_markdown_autoscroll = 1







" ===
" === Bullets.vim
" ===
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]




" ===
" === vim-markdown-toc
" ===
"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'



" ===
" === Markdown Settings
" ===
" Snippets
"source $XDG_CONFIG_HOME/nvim/md-snippets.vim
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell






""" Compile function
"map r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"  exec "w"
"  if &filetype == 'c'
"    exec "!g++ % -o %<"
"    exec "!time ./%<"
"  elseif &filetype == 'cpp'
"    exec "!g++ % -o %<"
"    exec "!time ./%<"
"  elseif &filetype == 'java'
"    exec "!javac %"
"    exec "!time java %<"
"  elseif &filetype == 'sh'
"    :!time bash %
"  elseif &filetype == 'python'
"    silent! exec "!clear"
"    exec "!time python3 %"
"  elseif &filetype == 'html'
"    exec "!chromium % &"
"  elseif &filetype == 'markdown'
"    exec "MarkdownPreview"
"  elseif &filetype == 'vimwiki'
"    exec "MarkaownPreview"
"  endif 
"endfunc 

" Compile function
"noremap r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"	exec "w"
"	if &filetype == 'c'
"		exec "!g++ % -o %<"
"		exec "!time ./%<"
"	elseif &filetype == 'cpp'
"		set splitbelow
"		exec "!g++ -std=c++11 % -Wall -o %<"
"		":sp
"		:res -15
"		:term ./%<
"	elseif &filetype == 'java'
"		exec "!javac %"
"		exec "!time java %<"
"	elseif &filetype == 'sh'
"		:!time bash %
"	elseif &filetype == 'python'
"		set splitbelow
"		":sp
"		:term python3 %
"	elseif &filetype == 'html'
"		silent! exec "!".g:mkdp_browser." % &"
"	elseif &filetype == 'markdown'
"		exec "InstantMarkdownPreview"
"	elseif &filetype == 'tex'
"		silent! exec "VimtexStop"
"		silent! exec "VimtexCompile"
"	elseif &filetype == 'dart'
"		exec "CocCommand flutter.run -d ".g:flutter_default_device
"		silent! exec "CocCommand flutter.dev.openDevLog"
"	elseif &filetype == 'javascript'
"		set splitbelow
"		:sp
"		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
"	elseif &filetype == 'go'
"		set splitbelow
"		:sp
"		:term go run .
"	endif
"endfunc

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		"exec "InstantMarkdownPreview"
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc



" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "",
"    \ "Staged"    : "",
"    \ "Untracked" : "",
"    \ "Renamed"   : "",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Unknown"   : "?"
"    \ }


"===
"=== coc.nvim
"===
let g:coc_global_extensions = [
  \ 'coc-vimlsp',
  \ 'coc-marketplace'] 

set hidden 
set updatetime=100
set shortmess+=c


if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"数字和git分开

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"





"" Use <c-space> to trigger completion.
"if has('nvim')
inoremap <silent><expr> <c-space> coc#refresh()
"else
"inoremap <silent><expr> <c-@> coc#refresh()
"endif
    


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"
"
"
"find left/next wrong
nmap <silent> gj <Plug>(coc-diagnostic-prev)
nmap <silent> gl <Plug>(coc-diagnostic-next)
"
"
"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)



" Use K to show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" Highlight the symbol and its references when holding the cursor.
"高亮相同字符
autocmd CursorHold * silent call CocActionAsync('highlight')




" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)




" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@




" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
"nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"



" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
"if has('nvim')
"  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
"  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
"endif
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')



" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
"
"<++>
"gf go file
"i <C-x> autospell
"<leader>h help
"gd go to definition
"<leader>rn rename
"s jkli
"tu newtab
"<leader> jilk
"tt nerdtree
"tr floaterm ra
"tf floaterm fzf
"<leader>j l go left/next wrong
"tx figlet
"% now file
"% to html   to html
"<leader>fs spellcheck
"<leader>fd find simple
">> 缩进
"
"
"
"
"<c-up down>many 
"<c-n> a word
"q 离开这个并选中下一个
"Q 离开这个并回到上一个选中的
"[   ]上一个和下一个
"n 选中下一个
"N 选中上一个
"
 
"
"
"
"
"
"
"
source ~/.config/nvim/TeTrIs.vim  "a game te
map <silent> ta :source ~/.config/nvim/badapple/badapple.vim<cr>
