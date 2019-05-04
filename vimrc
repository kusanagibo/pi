首先删除默认vi编辑器
`sudo apt-get remove vim-common`

通常VIM配色方案文件存放在“/usr/share/vim/vim74/colors” ，具体位置可能略有差异。 
比如我的该目录下的内容为：（其中“.vim”就是配色方案）

blue.vim      default.vim  `desert.vim`   evening.vim   koehler.vim  morning.vim  pablo.vim      README.txt  shine.vim  torte.vim
darkblue.vim  delek.vim    elflord.vim  industry.vim  murphy.vim   peachpuff.vim  ron.vim     slate.vim  zellner.vim

在用户/etc/vim/目录下，新建“vimrc”文件，内容如下：

```
#语法高亮
syntax on  
# 一个tab键所占的列数，linux 内核代码建议每个tab占用8列
set tabstop=4
# 敲入tab键时实际占有的列数。
set softtabstop=4
# shiftwidth用于设置Tab键宽度
set shiftwidth=4
# expandtab用于将Tab转化为空格
set expandtab
# 设置回车后自动缩进
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
# nu用于显示行号
set nu
# ts用于设置tab键表示的空格数
set ts=4
# colorscheme用于选择配色方案 
colorscheme molokai
```
