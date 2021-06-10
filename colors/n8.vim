" Vim color file
" Maintainer: Nathan P. Reiner <nathan@reinerweb.ch>
"

set termguicolors
set background=dark

syntax reset

" Default UI
hi Normal ctermfg=grey guifg='lightgrey'
hi NonText ctermfg=darkgrey gui=NONE guifg='#353535'
hi LineNr cterm=NONE ctermfg=darkgreen guifg='#547f62'
set cursorline
hi CursorLine cterm=NONE gui=NONE guibg=background
hi CursorLineNr cterm=NONE ctermfg=darkgreen gui=NONE guifg='#547f62'
hi VertSplit cterm=NONE ctermfg=darkgrey ctermbg=black guifg='#252525' guibg='#252525'

" Statusline
hi StatusLine cterm=NONE ctermbg=darkgreen guibg='#547f62' guifg='#181818'
hi StatusLineNC cterm=NONE ctermbg=black guibg=background guifg='#252525'

" Tab
hi TabLine cterm=italic ctermbg=black ctermfg=darkgrey gui=italic guifg='#999999' guibg='#252525'
hi TabLineFill cterm=bold ctermbg=black ctermfg=darkgrey guifg='#252525' guibg='#252525'
hi TabLineSel cterm=bold ctermbg=black ctermfg=darkgrey guibg=background guifg='#ffffff'

" Highlight
hi Visual ctermbg=235 guibg='#252525'

" Text
hi Title cterm=bold ctermfg=brown ctermbg=black guibg=background guifg='brown'

" Tooltip
hi Tooltip ctermbg=black guibg=background
hi Menu ctermbg=black guibg=background

" Menu
hi Pmenu ctermbg=234 ctermfg=darkgreen guifg='darkgrey' guibg='#252525'
hi PmenuSel cterm=reverse ctermbg=black ctermfg=darkgreen guibg='#353535' guifg='lightgrey'
hi PmenuSbar ctermbg=darkgreen ctermfg=black guifg='#547f62' guibg=background
hi PmenuThumb ctermbg=black guibg='#252525'

" Search
hi Search ctermbg=green ctermfg=black guifg='#181818' guibg='#547f62'

" Programming GUI
hi Type cterm=italic ctermfg=green gui=italic guifg='#547f62'
hi Comment ctermfg=darkgrey gui=italic guifg='#8f8f8f'
hi identifier cterm=NONE ctermfg=grey guifg='lightgrey'
hi Error cterm=italic ctermfg=darkred ctermbg=black guibg='#181818' guifg='#bc5858'
hi Constant cterm=italic ctermfg=darkblue guifg='#588cbc'
hi String cterm=italic ctermfg=darkgreen gui=italic guifg='#7ace6d'
hi Character cterm=italic ctermfg=darkgreen gui=italic guifg='#7ace6d'
hi Number cterm=NONE ctermfg=magenta guifg='#6da6ce'
hi Boolean cterm=italic ctermfg=yellow gui=italic guifg='#ce926d'
hi PreProc ctermfg=darkgreen guifg='#b97abf'
hi Statement cterm=italic ctermfg=darkmagenta gui=italic guifg='#e8c75c'
hi Todo cterm=italic ctermbg=black ctermfg=darkyellow gui=italic guibg=background guifg='#ccae4b'

" Ycm Error and Warnings
hi SignColumn ctermbg=black guibg=background

hi YcmErrorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=background guifg=NONE
hi YcmErrorSign cterm=NONE ctermbg=black ctermfg=darkred guifg='#bc5858'
hi YcmErrorSection cterm=underline,italic ctermbg=black ctermfg=darkred gui=underline,italic guifg='#bc5858' guibg=background
hi YcmWarningLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
hi YcmWarningSign cterm=NONE ctermbg=black ctermfg=yellow guibg=background guifg='#e8c75c'
hi YcmWarningSection cterm=underline,italic ctermbg=black ctermfg=darkyellow gui=underline,italic guibg=background guifg='#e8c75c'

" Git
hi GitGutterAdd cterm=NONE ctermbg=black ctermfg=green guibg=background guifg='#547f62'
hi GitGutterDelete cterm=NONE ctermbg=black ctermfg=red guibg=background guifg='#bc5858'
hi GitGutterChange cterm=NONE ctermbg=black ctermfg=darkyellow guibg=background guifg='#e8815c'

" Spell
hi SpellBad cterm=underline ctermbg=black ctermfg=darkred guibg=background guifg='#bc5858'

" NerdTree
hi Directory cterm=NONE ctermbg=black ctermfg=darkcyan guibg=background guifg='#5c94b2'

" Markdown
hi markdownH1 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownH2 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownH3 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownH4 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownH5 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownH6 cterm=bold,italic ctermbg=black ctermfg=brown
hi markdownBlockquote cterm=NONE ctermbg=black ctermfg=darkgrey
hi markdownCode cterm=italic ctermbg=black ctermfg=white
hi markdownCodeDelimiter cterm=italic ctermbg=black ctermfg=darkgrey

" EndOfBuffer
hi EndOfBuffer guifg='#5c94b2'

" Folds
hi Folded gui=italic,bold guifg='#ce7342' guibg=background

" Terminal
let g:terminal_color_0 = '#181818'
let g:terminal_color_1 = '#fd4d4d'
let g:terminal_color_2 = '#547f62'
let g:terminal_color_3 = '#e8d063'
let g:terminal_color_4 = '#7698c4'
let g:terminal_color_5 = '#f386de'
let g:terminal_color_6 = '#06989a'
let g:terminal_color_7 = '#d3d7cf'

" Conceal
hi Conceal guifg='#eeeeee' guibg='#181818'
