set nocompatible
"--[ Vundle Setup ]--"
"Auto installs Vundle and activates it, then it installs all your bundles"

  let has_vundle=1
  if !filereadable($HOME."/.vim/bundle/vundle/README.md")
    echo "Installing Vundle"
    echo ""
    silent !git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle
    let has_vundle=0
  endif
  filetype on
  filetype off
  set rtp+=$HOME/.vim/bundle/vundle
  call vundle#rc()

"--[ Vundle Packages ]--"

  "--[ Recursive Vundle! ]--"
  Bundle 'gmarik/vundle'

  "--[ Solarized Color Schemes ]--"
  Bundle 'altercation/vim-colors-solarized'

  "--[ Git Integration ]--"
  Bundle 'tpope/vim-fugitive'

  "--[ Autocomplete/Snippets ]--"
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet'
  Bundle 'Shougo/neosnippet-snippets'
  Bundle 'honza/vim-snippets'

  "--[ Surround ]--"
  Bundle 'tpope/vim-surround'

  "--[ Syntastic ]--"
  Bundle 'scrooloose/syntastic'

  "--[ Gists ]--"
  Bundle 'mattn/webapi-vim'
  Bundle 'mattn/gist-vim'

  "--[ NerdTree ]--"
  Bundle 'scrooloose/nerdtree'

  "--[ Syntax Highlighting ]--"
  Bundle 'plasticboy/vim-markdown'
  Bundle 'rodjek/vim-puppet'

  "--[ NerdCommenter ]--"
  Bundle 'scrooloose/nerdcommenter'

  "--[ CtrlP ]--"
  Bundle 'kien/ctrlp.vim'

  "--[ Tabular ]--"
  Bundle 'godlygeek/tabular'

