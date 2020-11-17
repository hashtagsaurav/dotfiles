let g:startify_custom_header = [
        \ '    _   _               _   _   _                 _             ',           
        \ '   | \ | |             | | | \ | |               (_)            ',
        \ '   |  \| | ___  _ __ __| | |  \| | ___  _____   ___ _ __ ___    ',
        \ '   | . ` |/ _ \| |__/ _` | | . ` |/ _ \/ _ \ \ / / | |_ ` _ \   ',
        \ '   | |\  | (_) | | | (_| | | |\  |  __/ (_) \ V /| | | | | | |  ',
        \ '   \_| \_/\___/|_|  \__,_| \_| \_/\___|\___/ \_/ |_|_| |_| |_|  ',
        \]
                                      
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

" function! StartifyEntryFormat()
"         return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"     endfunction

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'p': '~/.config/polybar/config' },
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ ]

let g:startify_enable_special = 0
