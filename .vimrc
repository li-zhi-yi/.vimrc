"der(/)为空格键
let mapleader=" "
"基本设置
"代码高亮
syntax on
"设置行号
set number
"当前行往下数又第几个行
set norelativenumber
"设置当前行 有下划线提示
set cursorline
"写出代码超出换行
set wrap
"显示你操作的指令
set showcmd
"输入命令后 tab键 会出现相对应命令的菜单 可共选择
set wildmenu

set autoindent
"换行后自动缩进

set  helplang=cn
"中文帮助文档

set autoread
"当文件在外部被修改时，自动读取

"高亮搜索词
set hlsearch
"按:实行的指令
exec "nohlsearch"
"边搜索变高亮
set incsearch
"搜索忽略大小写
set ignorecase
"vim 关闭所有拓展功能 尽量模拟vi的行为
set nocompatible

"使vim 可以识别不同的文件类型
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


"允许使用鼠标
set mouse=a
"编码格式
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"有些终端vim配色不对 加上这句方便配色

let &t_ut=''
"tab键设置
set expandtab
"更改缩进距离
set tabstop=2
set shiftwidth=2
set softtabstop=2


"行尾显示一些空格
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
"当光标在首航是 按缩进跳到行尾
set backspace=indent,eol,start
"折叠代码
set foldmethod=indent
set foldlevel=99

"按F2进入粘贴模式
set pastetoggle=<F2>

"使地下状态栏变为2
set laststatus=2
"vim执行什么 都在当前文件目录下执行
set autochdir
"每次关闭后 在打开文件 光i包回到上一次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"map在normal模式下
"向右分屏光标移动向右边
map sr:set splitright<CR>:vsplit<CR>
"向右分屏光标不移动
map sl :set nosplitright<CR>:vsplit<CR>
""向下分屏光标向下移动
map sd :set nosplitbelow<CR>:split<CR>
"向下分屏光标不移动
map su :set splitbelow<CR>:split<CR>


"搜索完毕后 空格+回车结束搜索高亮
noremap <LEADER><CR> :nohlsearch<CR>

"分屏大小切换
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>

"分屏切换
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l


"标签页
"打开空白标签
map tn :tabe<CR>
"往左标签移动
map th :-tabnext<CR>
"往右标签移动
map tl :+tabnext<CR>

"横分屏
map sv <C-w>t<C-w>H
"竖分屏
map sh <C-w>t<C-w>K


map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

"jj  映射 Esc
inoremap  jj <Esc>`^


set helplang=cn "设置中文帮助
set history=500 "保留历史记录

"状态栏的设置
"===========================
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "显示文件名：总行数，总的字符数
set ruler "在编辑过程中，在右下角显示光标位置的状态行


"-------插件管理-------------

call plug#begin('~/.vim/plugged')


"增加代码缩进线
Plug 'Yggdroot/indentLine'

"easymotion
Plug 'easymotion/vim-easymotion'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"开屏插件
Plug 'connorholyday/vim-snazzy'



" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'


" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'



"vue  react  jquery 等
Plug 'othree/javascript-libraries-syntax.vim'

"stylus
Plug 'wavded/vim-stylus'


"添加引号 之类的主动添加成对
Plug  'tpope/vim-surround'

"react 语法高亮
Plug 'yuezk/vim-js'
Plug  'maxmellon/vim-jsx-pretty'

"自动匹配括号
Plug 'jiangmiao/auto-pairs'

"自动格式化
Plug 'chiel92/vim-autoformat'

"ctrlp  快速模糊查找文件插件
Plug 'kien/ctrlp.vim'


"显示缩进
Plug 'nathanaelkane/vim-indent-guides'

"Ycm   ctrl+p  选择上一个提示   ctrl+n选择下一个提示
Plug 'valloric/youcompleteme'

"sbdchd/neoformat 格式化插件用法 :neoformat
Plug 'sbdchd/neoformat'
"vim-commentary  快速注释代码插件用法 gc
Plug 'tpope/vim-commentary'
"airblade/vim-gitgutter git 插件 变更提示
Plug 'airblade/vim-gitgutter' "gv.vim   查看提交记录 gv 查看提交记录 空格查看具体信息
Plug 'junegunn/gv.vim'

call plug#end()



"sbdchd/neoformat 格式化插件  用法 :neoformat

noremap <F3> :Autoformat<CR>
let  g:autoFormat_verbosemode=1

au  BufWrite *  :Autoformat<CR>

" let g:neoformat_enabled_python = ['autopep8']
" let g:neoformat_run_all_formatters = 1
" Enable alignment
" let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

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
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/usr/local/bin/python3"
let g:ycm_python_binary_path = "/usr/local/bin/python3"


" ===
" === ale
" ===
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>


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
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>


let g:gitgutter_highlight_lines = 1
let g:gitgutter_signs = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0




" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 开启 YCM 标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags

" emmet-vim  标签补全
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}