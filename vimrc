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

vi有3个模式：插入模式、命令模式、低行模式。
    插入模式：在此模式下可以输入字符，按ESC将回到命令模式。
    命令模式：可以移动光标、删除字符等。
    低行模式：可以保存文件、退出vi、设置vi、查找等功能(低行模式也可以看作是命令模式里的)

打开文件、保存、关闭文件(vi命令模式下使用)
	vi filename     //打开filename文件
	:w                  //保存文件
	:q                  //退出编辑器，如果文件已修改请使用下面的命令
	:q!                 //退出编辑器，且不保存
	:wq               //退出编辑器，且保存文件

插入文本或行(vi命令模式下使用，执行下面命令后将进入插入模式，按ESC键可退出插入模式)
	a       //在当前光标位置的右边添加文本
	i        //在当前光标位置的左边添加文本
	A      //在当前行的末尾位置添加文本
	I       //在当前行的开始处添加文本(非空字符的行首)
	O     //在当前行的上面新建一行
	o     //在当前行的下面新建一行
	R     //替换(覆盖)当前光标位置及后面的若干文本
	J     //合并光标所在行及下一行为一行(依然在命令模式)

删除、恢复字符或行(vi命令模式下使用)
	x          //删除当前字符
	nx        //删除从光标开始的n个字符
	dd       //删除当前行
	ndd     //向下删除当前行在内的n行
	u         //撤销上一步操作
	U         //撤销对当前行的所有操作

复制、粘贴(vi命令模式下使用)
	yy      //将当前行复制到缓存区
  nyy    //将当前行向下n行复制到缓冲区
	yw     //复制从光标开始到词尾的字符
	nyw   //复制从光标开始的n个单词
	y^     //复制从光标到行首的内容
	y$     //复制从光标到行尾的内容
	p      //粘贴剪切板里的内容在光标后
	P      //粘贴剪切板里的内容在光标前

设置行号(vi命令模式下使用)
	:set  nu       //显示行号
	:set nonu    //取消显示行号
