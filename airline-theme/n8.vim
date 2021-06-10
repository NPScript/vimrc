" n8 airline theme

let g:airline#themes#n8#palette = {}

let s:middle = ["#547f62", "#252525", 2, 0]
let s:outer = ["#ffffff", "#353535", 7, 0]

" Normalmode
let s:N1 = ["#181818", "#547f62", 233, 2]
let g:airline#themes#n8#palette.normal = airline#themes#generate_color_map(s:N1, s:outer, s:middle)

" Insertmode

let s:I1 = ["#181818", "#547f62", 233, 2]
let g:airline#themes#n8#palette.insert = airline#themes#generate_color_map(s:I1, s:outer, s:middle)

" Replacemode

let s:R1 = ['#181818', '#bc5858', 233, 1]
let g:airline#themes#n8#palette.replace = airline#themes#generate_color_map(s:R1, s:outer, s:middle)

" Visualmode

let s:V1 = ['#181818', '#c977d6', 233, 5]
let g:airline#themes#n8#palette.visual = airline#themes#generate_color_map(s:V1, s:outer, s:middle)

" Inactive
let s:IA1 = ['#757575', '#252525', 8, 0]
let s:IA2 = ['#757575', '#353535', 8, 0]
let s:IA3 = ['#757575', '#252525', 8, 0]
let g:airline#themes#n8#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Terminal
let g:airline#themes#n8#palette.terminal = airline#themes#generate_color_map(s:I1, s:outer, s:middle)
let g:airline#themes#n8#palette.normal.airline_term = s:middle
let g:airline#themes#n8#palette.terminal.airline_term = s:middle
let g:airline#themes#n8#palette.visual.airline_term = s:middle

let g:airline#themes#n8#palette.accents = {
      \ 'red': [ '#bc5858' , '' , 196 , ''  ]
      \ }
