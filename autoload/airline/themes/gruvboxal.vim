" -----------------------------------------------------------------------------
" File: gruvboxal.vim
" Description: Retro groove color scheme for Airline
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/gruvboxal
" Last Modified: 22 Aug 2014
" -----------------------------------------------------------------------------

let g:airline#themes#gruvboxal#palette = {}

function! airline#themes#gruvboxal#refresh()

  let M0 = airline#themes#get_highlight('Identifier')
  let modified_group = [M0[0], '', M0[2], '', '']
  let warning_group = airline#themes#get_highlight2(['Normal', 'bg'], ['Question', 'fg'])

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['StatusLineNC', 'bg'])
  let s:N2 = airline#themes#get_highlight2(['Normal', 'bg'], ['StatusLineNC', 'bg'])
  let s:N3 = airline#themes#get_highlight2(['Normal', 'bg'], ['StatusLineNc', 'bg'])
  let g:airline#themes#gruvboxal#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#gruvboxal#palette.normal_modified = { 'airline_c': modified_group }
  let g:airline#themes#gruvboxal#palette.normal.airline_warning = warning_group
  let g:airline#themes#gruvboxal#palette.normal_modified.airline_warning = warning_group

  let s:I1 = s:N1
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#gruvboxal#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#gruvboxal#palette.insert_modified = g:airline#themes#gruvboxal#palette.normal_modified
  let g:airline#themes#gruvboxal#palette.insert.airline_warning = g:airline#themes#gruvboxal#palette.normal.airline_warning
  let g:airline#themes#gruvboxal#palette.insert_modified.airline_warning = g:airline#themes#gruvboxal#palette.normal_modified.airline_warning

  let s:R1 = s:I1
  let s:R2 = s:I2
  let s:R3 = s:I3
  let g:airline#themes#gruvboxal#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#gruvboxal#palette.replace_modified = g:airline#themes#gruvboxal#palette.normal_modified
  let g:airline#themes#gruvboxal#palette.replace.airline_warning = g:airline#themes#gruvboxal#palette.normal.airline_warning
  let g:airline#themes#gruvboxal#palette.replace_modified.airline_warning = g:airline#themes#gruvboxal#palette.normal_modified.airline_warning

  let s:V1 = s:N1
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#gruvboxal#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#gruvboxal#palette.visual_modified = g:airline#themes#gruvboxal#palette.normal_modified
  let g:airline#themes#gruvboxal#palette.visual.airline_warning = g:airline#themes#gruvboxal#palette.normal.airline_warning
  let g:airline#themes#gruvboxal#palette.visual_modified.airline_warning = g:airline#themes#gruvboxal#palette.normal_modified.airline_warning

  let s:IA = airline#themes#get_highlight2(['TabLine', 'fg'], ['CursorLine', 'bg'])
  let g:airline#themes#gruvboxal#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#gruvboxal#palette.inactive_modified = { 'airline_c': modified_group }

  let accents_group = s:N1
  let g:airline#themes#gruvboxal#palette.accents = { 'red': accents_group }

  let s:TF = airline#themes#get_highlight2(['Normal', 'bg'], ['Normal', 'bg'])
  let g:airline#themes#gruvboxal#palette.tabline = {
    \ 'airline_tab':  s:N2,
    \ 'airline_tabsel':  s:N1,
    \ 'airline_tabtype':  s:V1,
    \ 'airline_tabfill':  s:TF,
    \ 'airline_tabhid':  s:IA,
    \ 'airline_tabmod':  s:I1
    \ }

endfunction

call airline#themes#gruvboxal#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
