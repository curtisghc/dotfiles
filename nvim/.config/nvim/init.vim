highlight OverLength ctermbg=red ctermfg=white guibg=#592929

match OverLength /\%81v.\+/

set laststatus=2
set number

syntax on
set tabstop=4
set clipboard=unnamed

let g:lightline = {
	\ 'colorscheme': 'PaperColor_light',
	\ 'component': {
	\ 	'readonly': '%{&readonly?"⭤":""}',
	\ }
	\ }
