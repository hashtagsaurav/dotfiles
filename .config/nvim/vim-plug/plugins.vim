" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Nord Theme
    Plug 'arcticicestudio/nord-vim'

    " COC Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Ranger file manager
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " FZF and RG for searching
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    " Rainbow brackets
    Plug 'junegunn/rainbow_parentheses.vim'

    " Startify start screen
    Plug 'mhinz/vim-startify' 

    " All GIT stuff
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Sneak for quick jumping around
    Plug 'justinmk/vim-sneak'
    
    " Quickscope for jumpin around in a line
    Plug 'unblevable/quick-scope'

    " Snippets
    Plug 'honza/vim-snippets'

    " Comments
    Plug 'tpope/vim-commentary'

    " Smooth scroll
    Plug 'psliwka/vim-smoothie'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
