set nocompatible
" set rtp+=$GOROOT/misc/vim

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

filetype off
filetype plugin indent off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/www/powerline/bindings/vim

"call vam#ActivateAddons(['powerline'])

call vundle#rc()
" Плагины
" Git
" Bundle 'tpope/vim-fugitive'
" Colorscheme
Bundle 'vim-scripts/Colour-Sampler-Pack'
" NEERDtree
Bundle 'scrooloose/nerdtree'
" powerline
"Bundle 'Lokaltog/vim-powerline'
" airline
Bundle 'bling/vim-airline'
" supertab(not work whis gocode)
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'Blackrush/vim-gocode'
Bundle 'bufexplorer.zip'
" Bundle 'tyru/restart.vim'
" Bundle 'koron/minimap-vim'

Bundle 'wavded/vim-stylus'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'

" colorscheme _my
colorscheme summerfruit256
filetype plugin indent on
syntax on


" highlight tabs and trailing spaces
"set list listchars=tab:>-,trail:-
set list listchars=tab:→\ ,trail:·


" Мышь
set mouse=a
" Номера строк
set number
" 256 цветов
set t_Co=256
" Независимость от раскладки
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Это у нас поддержка copy-paste для X
set clipboard=unnamed

set showcmd
set laststatus=2
set timeout timeoutlen=1000 ttimeoutlen=50
" Фолдинг по отсупам
"set foldmethod=syntax
" Размер таба
set tabstop=4
set shiftwidth=4
" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Кейбиндинги
imap <tab> <c-x><c-o>

" Только для GVim
if has("gui_running")
	
	function ToggeUi()
		set guioptions+=e " включаем none-gui табы
		set guioptions-=r " отключаем правый scrollbar
		set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
		set guioptions-=b " отключаем нижний scrollbar 
		set guioptions-=l " отключаем левый scrollbar
		set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
		set guioptions-=T " отключаем панель инструментов
		set guioptions-=m " отключаем меню
	endfunction

	set guioptions-=T " отключаем панель инструментов

	set guifont=Inconsolata\ LGC\ 9
	" colorscheme wombat
endif
