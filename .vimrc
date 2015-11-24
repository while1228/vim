"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd
"
"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
"set noswapfile
"
"突出现实当前行列
set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"
"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
"syntax enable
"syntax on
"
"指定配色方案为256色
"set t_Co=256

"设置搜索时忽略大小写
set ignorecase
"
"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=v

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab
"
"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"
"
"
""检测文件类型
"filetype on
""针对不同的文件采用不同的缩进方式
"filetype indent on
""允许插件
"filetype plugin on
""启动智能补全
"filetype plugin indent on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"配置 pdv ，启用ultisnips 才能使用 pdv#DocumentWithSnip
"let g:pdv_template_dir = "~/.vim/bundle/pdv/templates_snip"
let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates_snip"
"nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

:imap <F2> <CR>Date: <Esc>:read !date<CR>
":imap <F2> <CR>Date: <Esc>:read !date<CR>kJ



"set ts=4
"set sts=4
"set nu
"au FileType php setl shiftwidth=4
"au FileType php setl tabstop=4
"au FileType php setl expandtab
""auto index
"set ai
""change tab to blank
"au FileType py setl shiftwidth=4
"au FileType py setl tabstop=4
"hi Comment ctermfg=6

