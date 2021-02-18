
"let $PATH=substitute(system("echo \$PATH"), "\r\*\n", "", "g")

set number relativenumber

set encoding=utf-8
execute pathogen#infect()

let g:airline_theme='minimalist'

syntax enable

"Usando o esquema de cores claro
set background=dark

filetype plugin indent on
filetype plugin on

set cursorline

 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:syntastic_csslint_args="--ignore=outline-none" 

" let g:syntastic_html_checkers = ['w3', 'validator', 'jshint', 'eslint', 'htmlhint', ]
  "let g:syntastic_html_checkers = ['w3', 'eslint', 'htmlhint', 'tidy' ]
let g:syntastic_html_checkers = ['validator', 'eslint', 'htmlhint', 'tidy' ]
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd', 'phplint' ]
 let g:syntastic_css_checkers = ['csslint', 'recess', 'mixedindentlint', 'prettycss', 'stylelint', 'tidy', 'csstidy']
" let g:syntastic_css_checkers = ['recess', 'mixedindentlint', 'prettycss', 'stylelint', 'tidy']
 let g:syntastic_javascript_checkers = ['stylelint', 'jscs', 'jsslint', 'jls', 'jsxhint'  ]



" In ~/.vim/vimrc, or somewhere similar.
"let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
"let g:ale_linters = {'jsx': ['stylelint', 'eslint','csstidy']}

"let g:ale_linter_aliases = {'html': ['html', 'javascript', 'css']}
"let g:CSSLint_FileTypeList = ['css', 'less', 'sess']
"setlocal autoindent

"Tabulação
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

"map ctrl + n para o NERDTreeToggle 
map <C-n> :NERDTreeToggle<CR>


"corrige a identação de texto colado
"set paste


"corrige a lightbar
set laststatus=2

"realce de ocorrências de buscas
set hls is ic scs

"limpar as ocorrências de pesquisas
"nno <S-F11> <esc>:let @/=""<CR>
"limpa a última pesquisa com enter
nnoremap <CR> :noh<CR><CR>

" Função para capitalizar texto
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv


" "Função para corrigir o tamanho da lightline 
" let g:lightline = {
"       \ 'colorscheme': 'default',
"       \ 'mode_map': { 'c': 'NORMAL' },
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
"       \ },
"       \ 'component_function': {
"       \   'modified': 'LightlineModified',
"       \   'readonly': 'LightlineReadonly',
"       \   'fugitive': 'LightlineFugitive',
"       \   'filename': 'LightlineFilename',
"       \   'fileformat': 'LightlineFileformat',
"       \   'filetype': 'LightlineFiletype',
"       \   'fileencoding': 'LightlineFileencoding',
"       \   'mode': 'LightlineMode',
"       \ },
"       \ 'separator': { 'left': '⮀', 'right': '⮂' },
"       \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
"       \ }
"
" function! LightlineModified()
"   return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
" endfunction
"
" function! LightlineReadonly()
"   return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
" endfunction
"
" function! LightlineFilename()
"   return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
"         \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
"         \  &ft == 'unite' ? unite#get_status_string() :
"         \  &ft == 'vimshell' ? vimshell#get_status_string() :
"         \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
"         \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
" endfunction
"
" function! LightlineFugitive()
"   if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
"     let branch = fugitive#head()
"     return branch !=# '' ? '⭠ '.branch : ''
"   endif
"   return ''
" endfunction
"
" function! LightlineFileformat()
"   return winwidth(0) > 70 ? &fileformat : ''
" endfunction
"
" function! LightlineFiletype()
"   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction
"
" function! LightlineFileencoding()
"   return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
" endfunction
"
" function! LightlineMode()
"   return winwidth(0) > 60 ? lightline#mode() : ''
" endfunction
"
"
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols 
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = '¶'
let g:airline_symbols.branch = ''
"let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '#'
let g:airline_symbols.linenr = ''
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" configurar as tabs?
let g:airline_powerline_fonts = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#show_buffers = 0
        let g:airline#extensions#hunks#non_zero_only = 1

        " airline initialisation
        function! AirlineInit()
            let g:airline_section_b = airline#section#create(['branch'])
            let g:airline_section_c = airline#section#create(['%<', 'file', ' ', 'readonly', 'hunks'])
        endfunction

        autocmd VimEnter * call AirlineInit()


"let g:syntastic_error_symbol = "✗"
let g:syntastic_error_symbol = "X"
"let g:syntastic_warning_symbol = "<img draggable="false" class="emoji" alt="⚠" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/26a0.svg">"




"spell toggle

function! <SID>ToggleSpell()
    let spelllang_list = [ 'pt', 'en' ]
    let string = []

    for i in range(len(spelllang_list))
        call add(string, i+1 . ") " . spelllang_list[i])
    endfor

    if ! &spell
        let &spell = 1
        let selection = inputlist(string)
        let &spelllang = spelllang_list[selection-1]
    else
        let &spell = 0
        echo "'spell' disabled..."
    endif
endfunction

noremap <F7> :call <SID>ToggleSpell()<CR>

"vimwiki utilizando markdown
"let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" help page-> h: vimwiki-syntax

let g:vimwiki_root = $HOME . '/Documentos/Wiki'
let g:vimwiki_list = [{'path': $HOME . '/Documentos/Wiki',
  \ 'syntax': 'markdown', 'ext': '.md'}]

let g:instant_markdown_autostart = 0


" snippets customizados do emmet
"set g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.config/nvim/snippets_custom.json')), "\n"))


  set inccommand=split
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 2 
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" abre/fecha dobra
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


" dobras persistentes
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" coluna das dobras 
set foldcolumn=4
set foldmethod=manual

" Manter o local do cursor
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

"augroup resCur
  "autocmd!
  "autocmd BufWinEnter * call ResCur()
"augroup END

" Mostrar quebra de linha
set showbreak=...

nmap <F4> :ChangesStyleToggle<cr>:ChangesStyleToggle<cr>:ChangesStyleToggle<cr>

let g:changes_autocmd=1 
let g:changes_verbose=0 

"Permite alterar e trocar o buffer
set hidden

" cusorline boladão
"
"set cursorline
"hi cursorline cterm=none term=none
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"highlight CursorLine guibg=#303000 ctermbg=234
"highlight CursorLine guibg=#303000 ctermbg=239

set guicursor=



"mover linhas
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" centralizar o cursor 
set so=9915

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
