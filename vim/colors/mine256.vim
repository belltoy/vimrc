" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2006 Apr 14

" This color scheme uses a dark grey background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mine"

"hi Example         guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Normal           ctermbg=black    ctermfg=White       guifg=White         guibg=grey20

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg         term=standout       ctermbg=DarkRed         ctermfg=White       guibg=Red       guifg=White
hi IncSearch        term=reverse        cterm=reverse           gui=reverse
hi ModeMsg          term=bold           cterm=bold              gui=bold
hi StatusLine       term=reverse,bold   cterm=reverse,bold      gui=reverse,bold
hi StatusLineNC     term=reverse        cterm=reverse           gui=reverse
hi VertSplit        term=reverse        cterm=reverse           gui=reverse
hi Visual           term=reverse        ctermbg=grey           guibg=grey60
hi VisualNOS        term=underline,bold cterm=underline,bold    gui=underline,bold
hi DiffText         term=reverse        cterm=bold              ctermbg=Red         gui=bold        guibg=Red
hi Cursor           guibg=Green         guifg=Black
hi lCursor          guibg=Cyan          guifg=Black
hi Directory        term=bold           ctermfg=LightCyan       guifg=Cyan
hi LineNr           term=underline      ctermfg=Yellow          guifg=Yellow
hi MoreMsg          term=bold           ctermfg=LightGreen      gui=bold            guifg=SeaGreen
hi NonText          term=bold           ctermfg=LightBlue       gui=bold            guifg=LightBlue guibg=grey30
hi Question         term=standout       ctermfg=LightGreen      gui=bold            guifg=Green
hi Search           term=reverse        ctermbg=Green           ctermfg=LightGray   guibg=Cyan      guifg=Black
hi SpecialKey       term=bold           ctermfg=LightBlue       guifg=Cyan
hi Title            term=bold           ctermfg=LightMagenta    gui=bold            guifg=Magenta
hi WarningMsg       term=standout       ctermfg=LightRed        guifg=Red
hi WildMenu         term=standout       ctermbg=Yellow          ctermfg=Black       guibg=Yellow    guifg=Black
hi Folded           term=standout       ctermbg=LightGrey       ctermfg=DarkBlue    guibg=grey30    guifg=Grey
hi FoldColumn       term=standout       ctermbg=LightGrey       ctermfg=DarkBlue    guibg=Grey      guifg=DarkBlue
hi DiffAdd          term=bold           ctermbg=DarkGreen       guibg=DarkGreen
hi DiffChange       term=bold           ctermbg=DarkBlue        guibg=DarkBlue
hi DiffDelete       term=bold           ctermfg=Blue            ctermbg=DarkRed     gui=bold        guifg=Blue guibg=DarkCyan
hi CursorColumn     term=reverse        ctermbg=LightGrey       guibg=grey40
hi CursorLine       term=underline      ctermbg=LightGrey       guibg=grey40
hi Comment          ctermfg=DarkCyan

" Groups for syntax highlighting
hi Constant         term=underline      ctermfg=Magenta         guifg=#ffa0a0       "guibg=grey5
hi Special          term=bold           ctermfg=LightRed        guifg=Orange        "guibg=grey5
hi Statement term=bold cterm=bold ctermfg=Yellow guifg=#ffff60 gui=bold
hi Ignore           ctermfg=DarkGrey    guifg=grey20

" 设置全能补全时的菜单颜色
hi Pmenu ctermbg=Blue
hi PmenuSel ctermbg=LightGray
hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE	      cterm=underline
" vim: sw=2
