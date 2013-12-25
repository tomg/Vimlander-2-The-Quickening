" RubyAndRails:
" Highlight ruby operators
let ruby_operators = 1

" Turn off rails bits of statusbar
let g:rails_statusline=0

" Screen IMPL
let g:ScreenImpl = 'Tmux'

" FuzzyFinder:
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|tmp|gitkeep|DS_Store)$|(app\/assets\/fonts|vendor\/cache|vendor\/gems)|(^|[/\\])\.(hg|git|bzr|bundle)($|[/\\])'
let g:fuf_buffertag_ctagsPath = '/opt/github/homebrew/bin/ctags'

set tags=./.tags;,./tags

" GitGutter:
let g:gitgutter_escape_grep = 1
let g:gitgutter_realtime = 0

" Airline:
let g:airline_powerline_fonts = 1

" Unite:
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
let g:unite_source_grep_recursive_opt=''

function! s:unite_settings()
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
endfunction
autocmd FileType unite call s:unite_settings()

