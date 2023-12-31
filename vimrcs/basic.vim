"-----------------------------------------
" 基础配置 basic
"-----------------------------------------
" 不与 vi 兼容（采用 vim 自己的操作命令）
set nocompatible

" 打开高亮
syntax on

"自动折行，即太长的行分成几行显示。
set showmode

"自动折行，即太长的行分成几行显示。
set showcmd

" 支持使用鼠标
set mouse=a

" 使用 utf-8 编码
set encoding=utf-8

" 启用 256 色
set t_Co=256

" 开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则~/.vim/indent/python.vim。
filetype indent on


"-----------------------------------------
" 缩进 indent
"----------------------------------------
" 自动缩进
set autoindent

"按下 tab，显示 2 个空格
set tabstop=2

" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4

" 自动将 tab 转为空格
set expandtab

" tab 转为2个空格
set softtabstop=2


"---------------------------------------
" 外观 ui
"---------------------------------------
" 显示行号
set number

" set relativenumber 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号

" 光标所在的当前行高亮。
set cursorline

" 一行显示80字符
set textwidth=80

" 自动折行，即太长的行分成几行显示。 wrap or nowrap
set wrap

" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak

" 指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2

" 垂直滚动时，光标距离顶部/底部的位置（单位：行）。
set scrolloff=5

" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

" 在状态栏显示光标的当前位置（位于哪一行哪一列）。
set ruler

"---------------------------------------
" 搜索 search
"---------------------------------------
" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch

" 搜索时，高亮显示匹配结果
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch

" 搜索时忽略大小写
set ignorecase

" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
set smartcase


"---------------------------------------
" 编辑 edit
"---------------------------------------
" 打开英语单词的拼写检查，避免检查中文，日文和韩文
set spell spelllang+=cjk

" 不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）
set nobackup

" 不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp。
set noswapfile


" 保留撤销历史。Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头。
set undofile

" 备份文件保存位置
set backupdir=~/.vim_runtime/.backup// 

" 交换文件保存位置
set directory=~/.vim_runtime/.swp//

" 操作历史文件保存位置
set undodir=~/.vim_runtime/.undo//

" 自动切换工作目录
set autochdir

" 出错时，不要发出响声
set noerrorbells

" 出错时，发出视觉提示，通常是屏幕闪烁。
set visualbell

" vim 需要记住多少次历史操作
set history=1000

" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread

" 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
" set listchars=tab:»■,trail:■
" set list

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full

"---------------------------------------
"  键位映射 map
"---------------------------------------

" insert 模式下 jj 映射为 esc
inoremap jj <Esc>
